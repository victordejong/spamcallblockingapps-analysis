package com.amazon.device.ads;

import com.amazon.device.ads.DtbMetric;
import com.amazon.device.ads.DtbMetrics;
import com.huawei.hms.opendevice.AbstractC2405c;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetrics.class */
public class DtbMetrics implements Cloneable {
    private final String LOG_TAG = DtbMetrics.class.getSimpleName();
    private volatile Map<DtbMetric, Long> collectedMetrics = new EnumMap(DtbMetric.class);
    private volatile Map<DtbMetric, Long> tempTimer = new EnumMap(DtbMetric.class);
    private String instPxlUrl = null;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetrics$Submitter.class */
    public static class Submitter {
        public static final Submitter INSTANCE = new Submitter();
        private final String LOG_TAG = Submitter.class.getSimpleName();
        private final Queue<DtbMetrics> metricsQueue = new ConcurrentLinkedQueue();

        private Submitter() {
        }

        private void submitMetrics() {
            Iterator<DtbMetrics> it = this.metricsQueue.iterator();
            int i = 0;
            while (it.hasNext()) {
                DtbMetrics next = it.next();
                i++;
                DtbLog.debug("Starting metrics submission - Sequence " + i);
                if (next.getInstPxlUrl() == null) {
                    it.remove();
                    DtbLog.debug("No metric url found- Sequence " + i + ", skipping..");
                } else {
                    String str = next.getInstPxlUrl() + next.toURLEncodedString();
                    DtbLog.debug("Metrics URL:" + str);
                    try {
                        DtbHttpClient dtbHttpClient = new DtbHttpClient(str);
                        dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
                        dtbHttpClient.executeGET();
                        if (!dtbHttpClient.isHttpStatusCodeOK()) {
                            DtbLog.debug("Metrics submission failed- Sequence " + i + ", response invalid");
                            return;
                        }
                        DtbLog.debug("Metrics submitted- Sequence " + i);
                        it.remove();
                    } catch (Exception e) {
                        StringBuilder m8720E = C22128a.m8720E("Metrics submission failed- Sequence ", i, ", encountered error:");
                        m8720E.append(e.toString());
                        DtbLog.debug(m8720E.toString());
                        return;
                    }
                }
            }
        }

        /* renamed from: a */
        public /* synthetic */ void m42582a() {
            DtbLog.debug("Starting metrics submission..");
            submitMetrics();
            DtbLog.debug("Metrics submission thread complete.");
        }

        public void submitMetrics(DtbMetrics dtbMetrics) {
            if (dtbMetrics.getMetricsCount() > 0) {
                this.metricsQueue.add(dtbMetrics.clone());
                dtbMetrics.reset();
                DtbLog.debug("Scheduling metrics submission in background thread.");
                DtbThreadService.getInstance().schedule(new Runnable() { // from class: e.c.b.a.k0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DtbMetrics.Submitter.this.m42582a();
                    }
                });
                DtbLog.debug("Dispatched the metrics submit task on a background schedule thread.");
            }
        }
    }

    public DtbMetrics clone() {
        DtbMetrics dtbMetrics = new DtbMetrics();
        dtbMetrics.collectedMetrics.putAll(this.collectedMetrics);
        dtbMetrics.tempTimer.putAll(this.tempTimer);
        dtbMetrics.instPxlUrl = this.instPxlUrl;
        return dtbMetrics;
    }

    public String getInstPxlUrl() {
        return this.instPxlUrl;
    }

    public int getMetricsCount() {
        return this.collectedMetrics.size();
    }

    public void incrementMetric(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() != DtbMetric.DtbMetricType.COUNTER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not counter.");
        }
        if (this.collectedMetrics.get(dtbMetric) == null) {
            this.collectedMetrics.put(dtbMetric, 0L);
        }
        this.collectedMetrics.put(dtbMetric, Long.valueOf(this.collectedMetrics.get(dtbMetric).longValue() + 1));
    }

    public boolean isStarted(DtbMetric dtbMetric) {
        return this.tempTimer.containsKey(dtbMetric);
    }

    public void reset() {
        this.collectedMetrics.clear();
        this.tempTimer.clear();
    }

    public void resetMetric(DtbMetric dtbMetric) {
        this.collectedMetrics.remove(dtbMetric);
    }

    public void setInstPxlUrl(String str) {
        String str2 = str;
        if (str != null) {
            int indexOf = str.indexOf("://");
            str2 = str;
            if (indexOf != -1) {
                str2 = str.substring(indexOf + 3);
            }
        }
        this.instPxlUrl = str2;
    }

    public void startTimer(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() != DtbMetric.DtbMetricType.TIMER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not timer.");
        }
        if (this.collectedMetrics.get(dtbMetric) == null) {
            this.tempTimer.put(dtbMetric, Long.valueOf(System.currentTimeMillis()));
            return;
        }
        throw new IllegalArgumentException(dtbMetric + " is already set, your operation is trying to override a value.");
    }

    public void stopTimer(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() == DtbMetric.DtbMetricType.COUNTER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not timer.");
        }
        if (this.tempTimer.get(dtbMetric) == null) {
            throw new IllegalArgumentException("You are trying to stop a metric, which is not yet started: " + dtbMetric);
        } else if (this.collectedMetrics.get(dtbMetric) == null) {
            this.collectedMetrics.put(dtbMetric, Long.valueOf(System.currentTimeMillis() - this.tempTimer.get(dtbMetric).longValue()));
            this.tempTimer.remove(dtbMetric);
        } else {
            throw new IllegalArgumentException(dtbMetric + " is already set, your operation is trying to override a value.");
        }
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC2405c.f7629a, "dtbm");
            for (Map.Entry<DtbMetric, Long> entry : this.collectedMetrics.entrySet()) {
                jSONObject.put(entry.getKey().getAAXName(), entry.getValue());
            }
        } catch (JSONException e) {
            StringBuilder m8728C = C22128a.m8728C("Error while adding values to JSON object: ");
            m8728C.append(e.getLocalizedMessage());
            DtbLog.debug(m8728C.toString());
        }
        return jSONObject.toString();
    }

    public String toURLEncodedString() {
        return DtbCommonUtils.getURLEncodedString(toString());
    }
}
