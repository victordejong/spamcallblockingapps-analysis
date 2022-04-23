package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bz.class */
public class bz<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f25434a;

    /* renamed from: b  reason: collision with root package name */
    private final T f25435b;

    /* renamed from: c  reason: collision with root package name */
    private final int f25436c;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;TT;Ljava/lang/Integer;)V */
    /* JADX WARN: Multi-variable type inference failed */
    public bz(String str, Object obj, int i) {
        this.f25434a = str;
        this.f25435b = obj;
        this.f25436c = i;
    }

    public static bz<Double> a(String str, double d2) {
        return new bz<>(str, Double.valueOf(d2), cc.f25568c);
    }

    public static bz<Long> a(String str, long j) {
        return new bz<>(str, Long.valueOf(j), cc.f25567b);
    }

    public static bz<String> a(String str, String str2) {
        return new bz<>(str, str2, cc.f25569d);
    }

    public static bz<Boolean> a(String str, boolean z) {
        return new bz<>(str, Boolean.valueOf(z), cc.f25566a);
    }

    public T a() {
        da a2 = dc.a();
        if (a2 != null) {
            int i = cd.f25613a[this.f25436c - 1];
            if (i == 1) {
                return (T) a2.a(this.f25434a, ((Boolean) this.f25435b).booleanValue());
            }
            if (i == 2) {
                return (T) a2.a(this.f25434a, ((Long) this.f25435b).longValue());
            }
            if (i == 3) {
                return (T) a2.a(this.f25434a, ((Double) this.f25435b).doubleValue());
            }
            if (i == 4) {
                return (T) a2.a(this.f25434a, (String) this.f25435b);
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException("Flag is not initialized.");
    }
}
