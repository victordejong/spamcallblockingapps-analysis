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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetrics.class */
public class DtbMetrics implements Cloneable {

    /* renamed from: d  reason: collision with root package name */
    private final String f6497d = DtbMetrics.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    volatile Map<DtbMetric, Long> f6494a = new EnumMap(DtbMetric.class);

    /* renamed from: b  reason: collision with root package name */
    volatile Map<DtbMetric, Long> f6495b = new EnumMap(DtbMetric.class);

    /* renamed from: c  reason: collision with root package name */
    String f6496c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbMetrics$Submitter.class */
    public static class Submitter {

        /* renamed from: a  reason: collision with root package name */
        public static final Submitter f6498a = new Submitter();

        /* renamed from: b  reason: collision with root package name */
        private final String f6499b = Submitter.class.getSimpleName();

        /* renamed from: c  reason: collision with root package name */
        private final Queue<DtbMetrics> f6500c = new ConcurrentLinkedQueue();

        private Submitter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x00e0, code lost:
            r0 = new java.lang.StringBuilder("Metrics submission failed- Sequence ");
            r0.append(r0);
            r0.append(", response invalid");
            com.amazon.device.ads.DtbLog.b();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void a() {
            /*
                Method dump skipped, instructions count: 295
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbMetrics.Submitter.a():void");
        }

        public final void a(DtbMetrics dtbMetrics) {
            if (dtbMetrics.f6494a.size() > 0) {
                this.f6500c.add(dtbMetrics.clone());
                dtbMetrics.f6494a.clear();
                dtbMetrics.f6495b.clear();
                DtbLog.b();
                DtbThreadService a2 = DtbThreadService.a();
                Runnable ___lambda_dtbmetrics_submitter_0jbw3ryiof2xrd1sfjenuohco4c = new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DtbMetrics$Submitter$0jBw3RyIOF2xrD1SfJeNuoHcO4c
                    @Override // java.lang.Runnable
                    public final void run() {
                        DtbMetrics.Submitter.this.a();
                    }
                };
                try {
                    if (!a2.f6513a) {
                        if (a2.f6514c == null) {
                            a2.f6514c = Executors.newScheduledThreadPool(1);
                        }
                        a2.f6514c.schedule(___lambda_dtbmetrics_submitter_0jbw3ryiof2xrd1sfjenuohco4c, DtbThreadService.f6511b, TimeUnit.SECONDS);
                    }
                } catch (InternalError e) {
                    DtbThreadService.a(e);
                }
                DtbLog.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final DtbMetrics clone() {
        DtbMetrics dtbMetrics = new DtbMetrics();
        dtbMetrics.f6494a.putAll(this.f6494a);
        dtbMetrics.f6495b.putAll(this.f6495b);
        dtbMetrics.f6496c = this.f6496c;
        return dtbMetrics;
    }

    public final void a(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() != DtbMetric.DtbMetricType.COUNTER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not counter.");
        }
        if (this.f6494a.get(dtbMetric) == null) {
            this.f6494a.put(dtbMetric, 0L);
        }
        this.f6494a.put(dtbMetric, Long.valueOf(this.f6494a.get(dtbMetric).longValue() + 1));
    }

    public final void b(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() != DtbMetric.DtbMetricType.TIMER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not timer.");
        } else if (this.f6494a.get(dtbMetric) == null) {
            this.f6495b.put(dtbMetric, Long.valueOf(System.currentTimeMillis()));
        } else {
            throw new IllegalArgumentException(dtbMetric + " is already set, your operation is trying to override a value.");
        }
    }

    public final void c(DtbMetric dtbMetric) {
        this.f6494a.remove(dtbMetric);
    }

    public final void d(DtbMetric dtbMetric) {
        if (dtbMetric == null || dtbMetric.getMetricType() == DtbMetric.DtbMetricType.COUNTER) {
            throw new IllegalArgumentException("Either metric is null or metric type is not timer.");
        } else if (this.f6495b.get(dtbMetric) == null) {
            throw new IllegalArgumentException("You are trying to stop a metric, which is not yet started: ".concat(String.valueOf(dtbMetric)));
        } else if (this.f6494a.get(dtbMetric) == null) {
            this.f6494a.put(dtbMetric, Long.valueOf(System.currentTimeMillis() - this.f6495b.get(dtbMetric).longValue()));
            this.f6495b.remove(dtbMetric);
        } else {
            throw new IllegalArgumentException(dtbMetric + " is already set, your operation is trying to override a value.");
        }
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Constants.URL_CAMPAIGN, "dtbm");
            for (Map.Entry<DtbMetric, Long> entry : this.f6494a.entrySet()) {
                jSONObject.put(entry.getKey().getAAXName(), entry.getValue());
            }
        } catch (JSONException e) {
            new StringBuilder("Error while adding values to JSON object: ").append(e.getLocalizedMessage());
            DtbLog.b();
        }
        return jSONObject.toString();
    }
}
