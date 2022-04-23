package com.amazonaws.util;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/TimingInfo.class */
public class TimingInfo {

    /* renamed from: a  reason: collision with root package name */
    final long f6921a;

    /* renamed from: b  reason: collision with root package name */
    Long f6922b;

    /* renamed from: c  reason: collision with root package name */
    private final Long f6923c;

    /* JADX INFO: Access modifiers changed from: protected */
    public TimingInfo(Long l, long j, Long l2) {
        this.f6923c = l;
        this.f6921a = j;
        this.f6922b = l2;
    }

    public static TimingInfo a() {
        return new TimingInfo(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public static TimingInfo a(long j) {
        return new TimingInfoFullSupport(null, j, null);
    }

    public static TimingInfo a(long j, Long l) {
        return new TimingInfoUnmodifiable(null, j, l);
    }

    public static TimingInfo b() {
        return new TimingInfoFullSupport(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    public void a(String str) {
    }

    public void a(String str, long j) {
    }

    public void a(String str, TimingInfo timingInfo) {
    }

    public final boolean c() {
        return this.f6922b != null;
    }

    public TimingInfo d() {
        this.f6922b = Long.valueOf(System.nanoTime());
        return this;
    }

    public Map<String, List<TimingInfo>> e() {
        return Collections.emptyMap();
    }

    public Map<String, Number> f() {
        return Collections.emptyMap();
    }

    public final String toString() {
        Double d2;
        if (c()) {
            d2 = Double.valueOf(TimeUnit.NANOSECONDS.toMicros(this.f6922b.longValue() - this.f6921a) / 1000.0d);
        } else {
            d2 = null;
        }
        return String.valueOf(d2 == null ? -1.0d : d2.doubleValue());
    }
}
