package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.ab */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ab.class */
public class C2761ab<T> {

    /* renamed from: a */
    private final String f7719a;

    /* renamed from: b */
    private final T f7720b;

    /* renamed from: c */
    private final int f7721c;

    /* JADX WARN: Multi-variable type inference failed */
    public C2761ab(String str, Object obj, int i) {
        this.f7719a = str;
        this.f7720b = obj;
        this.f7721c = i;
    }

    /* renamed from: a */
    public static C2761ab<Double> m13691a(String str, double d) {
        return new C2761ab<>(str, Double.valueOf(d), C2765ae.f7980c);
    }

    /* renamed from: a */
    public static C2761ab<Long> m13690a(String str, long j) {
        return new C2761ab<>(str, Long.valueOf(j), C2765ae.f7979b);
    }

    /* renamed from: a */
    public static C2761ab<String> m13689a(String str, String str2) {
        return new C2761ab<>(str, str2, C2765ae.f7981d);
    }

    /* renamed from: a */
    public static C2761ab<Boolean> m13688a(String str, boolean z) {
        return new C2761ab<>(str, Boolean.valueOf(z), C2765ae.f7978a);
    }

    /* renamed from: a */
    public T mo13599a() {
        Boolean mo7870a;
        AbstractC2825bb m12046a = C2828be.m12046a();
        if (m12046a == null) {
            throw new IllegalStateException("Flag is not initialized.");
        }
        switch (C2760aa.f7574a[this.f7721c - 1]) {
            case 1:
                mo7870a = m12046a.mo7869a(this.f7719a, ((Boolean) this.f7720b).booleanValue());
                break;
            case 2:
                mo7870a = m12046a.mo7871a(this.f7719a, ((Long) this.f7720b).longValue());
                break;
            case 3:
                mo7870a = m12046a.mo7872a(this.f7719a, ((Double) this.f7720b).doubleValue());
                break;
            case 4:
                mo7870a = m12046a.mo7870a(this.f7719a, (String) this.f7720b);
                break;
            default:
                throw new IllegalStateException();
        }
        return (T) mo7870a;
    }
}
