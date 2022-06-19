package com.amazon.device.ads;

import com.amazon.device.ads.DTBBidInspector;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBBidInspector.class */
public class DTBBidInspector {
    private static final int INSPECTION_PERIOD = 180000;
    private static final int RETENTION_INTERVAL = 480000;
    public static DTBBidInspector theInstance = new DTBBidInspector();
    private List<BidDescriptor> bids = new ArrayList();
    private Timer timer;

    /* renamed from: com.amazon.device.ads.DTBBidInspector$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBBidInspector$1.class */
    public class C04501 extends TimerTask {
        public C04501() {
            DTBBidInspector.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            DtbThreadService.getInstance().execute(new Runnable() { // from class: e.c.b.a.e0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBBidInspector.this.purge();
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBBidInspector$BidDescriptor.class */
    public class BidDescriptor {
        public String bidId;
        public long bidTime;

        public BidDescriptor() {
            DTBBidInspector.this = r4;
        }
    }

    private DTBBidInspector() {
        Timer timer = new Timer();
        this.timer = timer;
        timer.schedule(new C04501(), 180000L, 180000L);
    }

    public static DTBBidInspector getInstance() {
        return theInstance;
    }

    public void purge() {
        synchronized (this) {
            long time = new Date().getTime();
            Iterator<BidDescriptor> it = this.bids.iterator();
            int i = 0;
            while (it.hasNext() && time - it.next().bidTime > 480000) {
                i++;
            }
            for (int i2 = 0; i2 < i; i2++) {
                this.bids.remove(0);
            }
        }
    }

    public void addBid(String str) {
        synchronized (this) {
            BidDescriptor bidDescriptor = new BidDescriptor();
            bidDescriptor.bidId = str;
            bidDescriptor.bidTime = new Date().getTime();
            this.bids.add(bidDescriptor);
        }
    }

    public boolean wasUsed(String str) {
        BidDescriptor next;
        synchronized (this) {
            Iterator<BidDescriptor> it = this.bids.iterator();
            do {
                if (!it.hasNext()) {
                    return true;
                }
                next = it.next();
            } while (!next.bidId.equals(str));
            this.bids.remove(next);
            return false;
        }
    }
}
