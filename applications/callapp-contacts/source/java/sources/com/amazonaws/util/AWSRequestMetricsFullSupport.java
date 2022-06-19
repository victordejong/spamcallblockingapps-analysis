package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.MetricType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AWSRequestMetricsFullSupport.class */
public class AWSRequestMetricsFullSupport extends AWSRequestMetrics {

    /* renamed from: d */
    private static final Log f12490d = LogFactory.m38583a("com.amazonaws.latency");

    /* renamed from: e */
    private static final Object f12491e = "=";

    /* renamed from: f */
    private static final Object f12492f = ", ";

    /* renamed from: b */
    private final Map<String, List<Object>> f12493b = new HashMap();

    /* renamed from: c */
    private final Map<String, TimingInfo> f12494c = new HashMap();

    public AWSRequestMetricsFullSupport() {
        super(TimingInfo.m38222b());
    }

    /* renamed from: a */
    private static void m38278a(Object obj, Object obj2, StringBuilder sb) {
        sb.append(obj);
        sb.append(f12491e);
        sb.append(obj2);
        sb.append(f12492f);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: a */
    public final void mo38281a(MetricType metricType) {
        this.f12494c.put(metricType.name(), TimingInfo.m38224a(System.nanoTime()));
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: a */
    public final void mo38280a(MetricType metricType, long j) {
        this.f12489a.mo38219a(metricType.name(), j);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: a */
    public final void mo38279a(MetricType metricType, Object obj) {
        String name = metricType.name();
        List<Object> list = this.f12493b.get(name);
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
            this.f12493b.put(name, arrayList);
        }
        arrayList.add(obj);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: b */
    public final void mo38277b() {
        if (f12490d.mo38591c()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, List<Object>> entry : this.f12493b.entrySet()) {
                m38278a(entry.getKey(), entry.getValue(), sb);
            }
            for (Map.Entry<String, Number> entry2 : this.f12489a.mo38216f().entrySet()) {
                m38278a(entry2.getKey(), entry2.getValue(), sb);
            }
            for (Map.Entry<String, List<TimingInfo>> entry3 : this.f12489a.mo38217e().entrySet()) {
                m38278a(entry3.getKey(), entry3.getValue(), sb);
            }
            f12490d.mo38590c(sb.toString());
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: b */
    public final void mo38276b(MetricType metricType) {
        String name = metricType.name();
        TimingInfo timingInfo = this.f12494c.get(name);
        if (timingInfo == null) {
            LogFactory.m38584a(getClass()).mo38587d("Trying to end an event which was never started: ".concat(String.valueOf(name)));
            return;
        }
        timingInfo.mo38215d();
        this.f12489a.mo38218a(name, TimingInfo.m38223a(timingInfo.f12514a, Long.valueOf(timingInfo.f12515b == null ? (char) 65535 : timingInfo.f12515b.longValue())));
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    /* renamed from: c */
    public final void mo38275c(MetricType metricType) {
        this.f12489a.mo38220a(metricType.name());
    }
}
