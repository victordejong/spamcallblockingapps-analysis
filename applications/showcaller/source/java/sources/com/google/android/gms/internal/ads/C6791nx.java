package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.nx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nx.class */
public class C6791nx<T> {

    /* renamed from: a */
    private final String f27352a;

    /* renamed from: b */
    private final T f27353b;

    /* renamed from: c */
    private final int f27354c;

    public C6791nx(String str, T t, int i) {
        this.f27352a = str;
        this.f27353b = t;
        this.f27354c = i;
    }

    /* renamed from: a */
    public static C6791nx<Boolean> m12803a(String str, boolean z) {
        return new C6791nx<>(str, Boolean.valueOf(z), 1);
    }

    /* renamed from: b */
    public static C6791nx<Long> m12802b(String str, long j) {
        return new C6791nx<>(str, Long.valueOf(j), 2);
    }

    /* renamed from: c */
    public static C6791nx<Double> m12801c(String str, double d) {
        return new C6791nx<>(str, Double.valueOf(d), 3);
    }

    /* renamed from: d */
    public static C6791nx<String> m12800d(String str, String str2) {
        return new C6791nx<>(str, str2, 4);
    }

    /* renamed from: e */
    public final T m12799e() {
        AbstractC6792ny m12476a = C6829oy.m12476a();
        if (m12476a == null) {
            return this.f27353b;
        }
        int i = this.f27354c - 1;
        return i != 0 ? i != 1 ? i != 2 ? (T) m12476a.mo12792a(this.f27352a, (String) this.f27353b) : (T) m12476a.mo12790c(this.f27352a, ((Double) this.f27353b).doubleValue()) : (T) m12476a.mo12791b(this.f27352a, ((Long) this.f27353b).longValue()) : (T) m12476a.mo12789d(this.f27352a, ((Boolean) this.f27353b).booleanValue());
    }
}
