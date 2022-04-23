package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.p4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/p4.class */
public class C1888p4<T> {

    /* renamed from: a */
    private final String f7922a;

    /* renamed from: b */
    private final T f7923b;

    /* renamed from: c */
    private final int f7924c;

    protected C1888p4(String str, T t, int i) {
        this.f7922a = str;
        this.f7923b = t;
        this.f7924c = i;
    }

    /* renamed from: a */
    public static C1888p4<Boolean> m6226a(String str, boolean z) {
        return new C1888p4<>(str, Boolean.valueOf(z), 1);
    }

    /* renamed from: b */
    public static C1888p4<Long> m6225b(String str, long j) {
        return new C1888p4<>(str, Long.valueOf(j), 2);
    }

    /* renamed from: c */
    public static C1888p4<Double> m6224c(String str, double d) {
        return new C1888p4<>(str, Double.valueOf(d), 3);
    }

    /* renamed from: d */
    public static C1888p4<String> m6223d(String str, String str2) {
        return new C1888p4<>(str, str2, 4);
    }

    /* renamed from: e */
    public final T m6222e() {
        AbstractC1856n5 a = C1872o5.m6344a();
        if (a != null) {
            int i = this.f7924c - 1;
            return i != 0 ? i != 1 ? i != 2 ? (T) a.m6467b(this.f7922a, (String) this.f7923b) : (T) a.m6466c(this.f7922a, ((Double) this.f7923b).doubleValue()) : (T) a.m6468a(this.f7922a, ((Long) this.f7923b).longValue()) : (T) a.m6465d(this.f7922a, ((Boolean) this.f7923b).booleanValue());
        }
        throw new IllegalStateException("Flag is not initialized.");
    }
}
