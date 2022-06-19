package com.amazon.device.ads;

import com.amazon.device.ads.DTBMetricReport;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBFetchManager.class */
public class DTBFetchManager {
    private static final int DEPTH = 3;
    private static int INSPECTION_INTERVAL_MS = 300000;
    private static final String LOG_TAG = "DTBFetchManager";
    private boolean isSmartBanner;
    private DTBAdLoader loader;
    private LinkedList<FetchEntry> responses;
    private boolean started = false;
    public Timer timer = null;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBFetchManager$FetchEntry.class */
    public class FetchEntry {
        public DTBAdResponse response;
        public long timestamp = C22128a.m8638c();

        public FetchEntry(DTBAdResponse dTBAdResponse) {
            DTBFetchManager.this = r5;
            this.response = dTBAdResponse;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBFetchManager$ResponseListener.class */
    public class ResponseListener implements DTBAdCallback {
        public ResponseListener() {
            DTBFetchManager.this = r4;
        }

        @Override // com.amazon.device.ads.DTBAdCallback
        public void onFailure(AdError adError) {
            DTBFetchManager dTBFetchManager = DTBFetchManager.this;
            dTBFetchManager.addResponse(new FetchEntry(new DTBAdResponse()));
            DTBFetchManager.this.initiateRequest();
        }

        @Override // com.amazon.device.ads.DTBAdCallback
        public void onSuccess(DTBAdResponse dTBAdResponse) {
            DTBFetchManager dTBFetchManager = DTBFetchManager.this;
            dTBFetchManager.addResponse(new FetchEntry(dTBAdResponse));
            DTBFetchManager.this.initiateRequest();
        }
    }

    public DTBFetchManager(DTBAdLoader dTBAdLoader, boolean z) {
        dTBAdLoader.pauseAutoRefresh();
        if (!z || dTBAdLoader.getSlotGroupName() != null) {
            this.isSmartBanner = z;
            init(dTBAdLoader);
            return;
        }
        throw new IllegalStateException("No Slot Group Set for This Ad Request");
    }

    public void addResponse(FetchEntry fetchEntry) {
        synchronized (this.responses) {
            this.responses.add(fetchEntry);
        }
    }

    private void init(DTBAdLoader dTBAdLoader) {
        this.loader = dTBAdLoader;
        this.responses = new LinkedList<>();
        this.started = false;
    }

    public void initiateRequest() {
        if (!this.started || this.responses.size() >= 3) {
            return;
        }
        ((DTBAdRequest) this.loader).recycle();
        if (!this.isSmartBanner) {
            this.loader.loadAd(new ResponseListener());
            return;
        }
        try {
            this.loader.loadSmartBanner(new ResponseListener());
        } catch (DTBLoadException e) {
            stop();
            DtbLog.error("DTBLoadException", "No suitable Slot Size");
        }
    }

    public void purgeResponses() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.responses) {
            long time = new Date().getTime();
            while (this.responses.size() > 0 && time - this.responses.getFirst().timestamp >= DTBFetchFactory.getInstance().getExpirationInMillis()) {
                FetchEntry removeFirst = this.responses.removeFirst();
                if (removeFirst.response.getBidId() != null) {
                    arrayList.add(new DTBMetricReport.BidWrapper(removeFirst.response.getBidId(), removeFirst.response.getHost()));
                }
                initiateRequest();
            }
        }
        submitExpiredBidsReport(arrayList);
    }

    private void submitExpiredBidsReport(List<DTBMetricReport.BidWrapper> list) {
        if (list.size() > 0) {
            DTBMetricsProcessor.getInstance().submitExpiredReport(list);
        }
    }

    public DTBAdResponse dispense() {
        FetchEntry poll;
        DTBAdResponse dTBAdResponse = null;
        DTBAdResponse dTBAdResponse2 = null;
        try {
            synchronized (this.responses) {
                poll = this.responses.poll();
            }
            if (poll != null) {
                dTBAdResponse = poll.response;
            }
            dTBAdResponse2 = dTBAdResponse;
            initiateRequest();
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute dispense method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute dispense method", e);
            dTBAdResponse = dTBAdResponse2;
        }
        return dTBAdResponse;
    }

    public boolean isEmpty() {
        return this.responses.isEmpty();
    }

    public DTBAdResponse peek() {
        DTBAdResponse dTBAdResponse;
        FetchEntry peek;
        try {
            synchronized (this.responses) {
                peek = this.responses.peek();
            }
            dTBAdResponse = null;
            if (peek != null) {
                dTBAdResponse = peek.response;
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute peek method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute peek method", e);
            dTBAdResponse = null;
        }
        return dTBAdResponse;
    }

    public void start() {
        synchronized (this) {
            try {
                if (!this.started) {
                    Timer timer = new Timer();
                    this.timer = timer;
                    timer.scheduleAtFixedRate(new TimerTask() { // from class: com.amazon.device.ads.DTBFetchManager.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            DTBFetchManager.this.purgeResponses();
                        }
                    }, 0L, INSPECTION_INTERVAL_MS);
                    this.started = true;
                }
                initiateRequest();
            } catch (RuntimeException e) {
                DtbLog.error(LOG_TAG, "Fail to execute start method");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute start method", e);
            }
        }
    }

    public void stop() {
        synchronized (this) {
            try {
                Timer timer = this.timer;
                if (timer != null) {
                    timer.cancel();
                    this.timer = null;
                }
                this.started = false;
            } catch (RuntimeException e) {
                DtbLog.error(LOG_TAG, "Fail to execute stop method");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute stop method", e);
            }
        }
    }

    public void submitWasteQueueReport() {
        LinkedList<FetchEntry> linkedList = this.responses;
        if (linkedList == null || linkedList.size() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<FetchEntry> it = this.responses.iterator();
        while (it.hasNext()) {
            FetchEntry next = it.next();
            if (next.response.getBidId() != null) {
                arrayList.add(new DTBMetricReport.BidWrapper(next.response.getBidId(), next.response.getHost()));
            }
        }
        submitExpiredBidsReport(arrayList);
    }
}
