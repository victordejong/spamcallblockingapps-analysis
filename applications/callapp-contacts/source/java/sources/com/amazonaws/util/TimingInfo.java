package com.amazonaws.util;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/TimingInfo.class */
public class TimingInfo {

    /* renamed from: a */
    final long f12514a;

    /* renamed from: b */
    Long f12515b;

    /* renamed from: c */
    private final Long f12516c;

    public TimingInfo(Long l, long j, Long l2) {
        this.f12516c = l;
        this.f12514a = j;
        this.f12515b = l2;
    }

    /* renamed from: a */
    public static TimingInfo m38225a() {
        return new TimingInfo(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    /* renamed from: a */
    public static TimingInfo m38224a(long j) {
        return new TimingInfoFullSupport(null, j, null);
    }

    /* renamed from: a */
    public static TimingInfo m38223a(long j, Long l) {
        return new TimingInfoUnmodifiable(null, j, l);
    }

    /* renamed from: b */
    public static TimingInfo m38222b() {
        return new TimingInfoFullSupport(Long.valueOf(System.currentTimeMillis()), System.nanoTime(), null);
    }

    /* renamed from: a */
    public void mo38220a(String str) {
    }

    /* renamed from: a */
    public void mo38219a(String str, long j) {
    }

    /* renamed from: a */
    public void mo38218a(String str, TimingInfo timingInfo) {
    }

    /* renamed from: c */
    public final boolean m38221c() {
        return this.f12515b != null;
    }

    /* renamed from: d */
    public TimingInfo mo38215d() {
        this.f12515b = Long.valueOf(System.nanoTime());
        return this;
    }

    /* renamed from: e */
    public Map<String, List<TimingInfo>> mo38217e() {
        return Collections.emptyMap();
    }

    /* renamed from: f */
    public Map<String, Number> mo38216f() {
        return Collections.emptyMap();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [double] */
    public final String toString() {
        Double d;
        if (m38221c()) {
            d = Double.valueOf(TimeUnit.NANOSECONDS.toMicros(this.f12515b.longValue() - this.f12514a) / 1000.0d);
        } else {
            d = null;
        }
        return String.valueOf((double) (d == null ? (char) 0 : d.doubleValue()));
    }
}
