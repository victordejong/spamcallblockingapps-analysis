package com.amazon.device.ads;

import com.amazon.device.ads.DtbMetric;
import com.amazon.device.ads.DtbMetrics;
import com.appsflyer.share.Constants;
import java.util.EnumMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetrics.class */
public class DtbMetrics implements Cloneable {

    /* renamed from: d */
    private final String f11898d = DtbMetrics.class.getSimpleName();

    /* renamed from: a */
    volatile Map<DtbMetric, Long> f11895a = new EnumMap(DtbMetric.class);

    /* renamed from: b */
    volatile Map<DtbMetric, Long> f11896b = new EnumMap(DtbMetric.class);

    /* renamed from: c */
    String f11897c = null;

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetrics$Submitter.class */
    public static class Submitter {

        /* renamed from: a */
        public static final Submitter f11899a = new Submitter();

        /* renamed from: b */
        private final String f11900b = Submitter.class.getSimpleName();

        /* renamed from: c */
        private final Queue<DtbMetrics> f11901c = new ConcurrentLinkedQueue();

        private Submitter() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x00e0, code lost:
            r0 = new java.lang.StringBuilder("Metrics submission failed- Sequence ");
            r0.append(r0);
            r0.append(", response invalid");
            com.amazon.device.ads.DtbLog.m38825b();
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void m38811a() {
            /*
                Method dump skipped, instructions count: 295
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbMetrics.Submitter.m38811a():void");
        }

        /* renamed from: a */
        public final void m38810a(DtbMetrics dtbMetrics) {
            if (dtbMetrics.f11895a.size() > 0) {
                this.f11901c.add(dtbMetrics.clone());
                dtbMetrics.f11895a.clear();
                dtbMetrics.f11896b.clear();
                DtbLog.m38825b();
                DtbThreadService m38766a = DtbThreadService.m38766a();
                Runnable runnable = new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DtbMetrics$Submitter$0jBw3RyIOF2xrD1SfJeNuoHcO4c
                    @Override // java.lang.Runnable
                    public final void run() {
                        DtbMetrics.Submitter.this.m38811a();
                    }
                };
                try {
                    if (!m38766a.f11914a) {
                        if (m38766a.f11915c == null) {
                            m38766a.f11915c = Executors.newScheduledThreadPool(1);
                        }
                        m38766a.f11915c.schedule(runnable, DtbThreadService.f11912b, TimeUnit.SECONDS);
                    }
                } catch (InternalError e) {
                    DtbThreadService.m38764a(e);
                }
                DtbLog.m38825b();
            }
        }
    }

    /* renamed from: a */
    public final DtbMetrics clone() {
        DtbMetrics dtbMetrics = new DtbMetrics();
        dtbMetrics.f11895a.putAll(this.f11895a);
        dtbMetrics.f11896b.putAll(this.f11896b);
        dtbMetrics.f11897c = this.f11897c;
        return dtbMetrics;
    }

    /* renamed from: a */
    public final void m38815a(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() != DtbMetric.DtbMetricType.COUNTER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not counter.");
        }
        if (this.f11895a.get(dtbMetric) == null) {
            this.f11895a.put(dtbMetric, 0L);
        }
        this.f11895a.put(dtbMetric, Long.valueOf(this.f11895a.get(dtbMetric).longValue() + 1));
    }

    /* renamed from: b */
    public final void m38814b(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() != DtbMetric.DtbMetricType.TIMER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not timer.");
        }
        if (this.f11895a.get(dtbMetric) == null) {
            this.f11896b.put(dtbMetric, Long.valueOf(System.currentTimeMillis()));
            return;
        }
        throw new IllegalArgumentException(dtbMetric + " is already set, your operation is trying to override a value.");
    }

    /* renamed from: c */
    public final void m38813c(DtbMetric dtbMetric) {
        this.f11895a.remove(dtbMetric);
    }

    /* renamed from: d */
    public final void m38812d(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() == DtbMetric.DtbMetricType.COUNTER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not timer.");
        }
        if (this.f11896b.get(dtbMetric) == null) {
            throw new IllegalArgumentException("You are trying to stop a metric, which is not yet started: ".concat(String.valueOf(dtbMetric)));
        }
        if (this.f11895a.get(dtbMetric) == null) {
            this.f11895a.put(dtbMetric, Long.valueOf(System.currentTimeMillis() - this.f11896b.get(dtbMetric).longValue()));
            this.f11896b.remove(dtbMetric);
            return;
        }
        throw new IllegalArgumentException(dtbMetric + " is already set, your operation is trying to override a value.");
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Constants.URL_CAMPAIGN, "dtbm");
            for (Map.Entry<DtbMetric, Long> entry : this.f11895a.entrySet()) {
                jSONObject.put(entry.getKey().getAAXName(), entry.getValue());
            }
        } catch (JSONException e) {
            new StringBuilder("Error while adding values to JSON object: ").append(e.getLocalizedMessage());
            DtbLog.m38825b();
        }
        return jSONObject.toString();
    }
}
