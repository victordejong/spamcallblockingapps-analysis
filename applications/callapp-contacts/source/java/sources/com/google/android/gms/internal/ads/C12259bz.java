package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.bz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bz.class */
public class C12259bz<T> {

    /* renamed from: a */
    private final String f45138a;

    /* renamed from: b */
    private final T f45139b;

    /* renamed from: c */
    private final int f45140c;

    /* JADX WARN: Multi-variable type inference failed */
    public C12259bz(String str, Object obj, int i) {
        this.f45138a = str;
        this.f45139b = obj;
        this.f45140c = i;
    }

    /* renamed from: a */
    public static C12259bz<Double> m17556a(String str, double d) {
        return new C12259bz<>(str, Double.valueOf(d), C12264cc.f45489c);
    }

    /* renamed from: a */
    public static C12259bz<Long> m17555a(String str, long j) {
        return new C12259bz<>(str, Long.valueOf(j), C12264cc.f45488b);
    }

    /* renamed from: a */
    public static C12259bz<String> m17554a(String str, String str2) {
        return new C12259bz<>(str, str2, C12264cc.f45490d);
    }

    /* renamed from: a */
    public static C12259bz<Boolean> m17553a(String str, boolean z) {
        return new C12259bz<>(str, Boolean.valueOf(z), C12264cc.f45487a);
    }

    /* renamed from: a */
    public T mo17481a() {
        AbstractC12298da m16888a = C12320dc.m16888a();
        if (m16888a != null) {
            int i = C12266cd.f45540a[this.f45140c - 1];
            if (i == 1) {
                return (T) m16888a.mo16973a(this.f45138a, ((Boolean) this.f45139b).booleanValue());
            }
            if (i == 2) {
                return (T) m16888a.mo16975a(this.f45138a, ((Long) this.f45139b).longValue());
            }
            if (i == 3) {
                return (T) m16888a.mo16976a(this.f45138a, ((Double) this.f45139b).doubleValue());
            }
            if (i != 4) {
                throw new IllegalStateException();
            }
            return (T) m16888a.mo16974a(this.f45138a, (String) this.f45139b);
        }
        throw new IllegalStateException("Flag is not initialized.");
    }
}
