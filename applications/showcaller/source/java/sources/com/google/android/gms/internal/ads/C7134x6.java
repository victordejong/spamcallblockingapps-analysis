package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.x6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x6.class */
public final class C7134x6 {

    /* renamed from: a */
    public static final C7134x6 f31912a;

    /* renamed from: b */
    public static final C7134x6 f31913b = new C7134x6(Long.MAX_VALUE, Long.MAX_VALUE);

    /* renamed from: c */
    public static final C7134x6 f31914c = new C7134x6(Long.MAX_VALUE, 0);

    /* renamed from: d */
    public static final C7134x6 f31915d = new C7134x6(0, Long.MAX_VALUE);

    /* renamed from: e */
    public static final C7134x6 f31916e;

    /* renamed from: f */
    public final long f31917f;

    /* renamed from: g */
    public final long f31918g;

    static {
        C7134x6 c7134x6 = new C7134x6(0L, 0L);
        f31912a = c7134x6;
        f31916e = c7134x6;
    }

    public C7134x6(long j, long j2) {
        C7173y8.m8898a(j >= 0);
        C7173y8.m8898a(j2 >= 0);
        this.f31917f = j;
        this.f31918g = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C7134x6.class != obj.getClass()) {
            return false;
        }
        C7134x6 c7134x6 = (C7134x6) obj;
        return this.f31917f == c7134x6.f31917f && this.f31918g == c7134x6.f31918g;
    }

    public final int hashCode() {
        return (((int) this.f31917f) * 31) + ((int) this.f31918g);
    }
}
