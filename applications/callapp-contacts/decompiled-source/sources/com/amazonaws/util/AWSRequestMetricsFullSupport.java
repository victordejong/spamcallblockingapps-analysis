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

    /* renamed from: d  reason: collision with root package name */
    private static final Log f6899d = LogFactory.a("com.amazonaws.latency");
    private static final Object e = "=";
    private static final Object f = ", ";

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, List<Object>> f6900b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, TimingInfo> f6901c = new HashMap();

    public AWSRequestMetricsFullSupport() {
        super(TimingInfo.b());
    }

    private static void a(Object obj, Object obj2, StringBuilder sb) {
        sb.append(obj);
        sb.append(e);
        sb.append(obj2);
        sb.append(f);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public final void a(MetricType metricType) {
        this.f6901c.put(metricType.name(), TimingInfo.a(System.nanoTime()));
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public final void a(MetricType metricType, long j) {
        this.f6898a.a(metricType.name(), j);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public final void a(MetricType metricType, Object obj) {
        String name = metricType.name();
        List<Object> list = this.f6900b.get(name);
        List<Object> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.f6900b.put(name, list2);
        }
        list2.add(obj);
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public final void b() {
        if (f6899d.c()) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, List<Object>> entry : this.f6900b.entrySet()) {
                a(entry.getKey(), entry.getValue(), sb);
            }
            for (Map.Entry<String, Number> entry2 : this.f6898a.f().entrySet()) {
                a(entry2.getKey(), entry2.getValue(), sb);
            }
            for (Map.Entry<String, List<TimingInfo>> entry3 : this.f6898a.e().entrySet()) {
                a(entry3.getKey(), entry3.getValue(), sb);
            }
            f6899d.c(sb.toString());
        }
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public final void b(MetricType metricType) {
        String name = metricType.name();
        TimingInfo timingInfo = this.f6901c.get(name);
        if (timingInfo == null) {
            LogFactory.a(getClass()).d("Trying to end an event which was never started: ".concat(String.valueOf(name)));
            return;
        }
        timingInfo.d();
        this.f6898a.a(name, TimingInfo.a(timingInfo.f6921a, Long.valueOf(timingInfo.f6922b == null ? -1L : timingInfo.f6922b.longValue())));
    }

    @Override // com.amazonaws.util.AWSRequestMetrics
    public final void c(MetricType metricType) {
        this.f6898a.a(metricType.name());
    }
}
