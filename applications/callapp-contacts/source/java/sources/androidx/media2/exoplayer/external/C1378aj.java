package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.util.C1993a;
/* renamed from: androidx.media2.exoplayer.external.aj */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/aj.class */
public final class C1378aj {

    /* renamed from: a */
    public static final C1378aj f5153a;

    /* renamed from: b */
    public static final C1378aj f5154b = new C1378aj(Long.MAX_VALUE, Long.MAX_VALUE);

    /* renamed from: c */
    public static final C1378aj f5155c = new C1378aj(Long.MAX_VALUE, 0);

    /* renamed from: d */
    public static final C1378aj f5156d = new C1378aj(0, Long.MAX_VALUE);

    /* renamed from: e */
    public static final C1378aj f5157e;

    /* renamed from: f */
    public final long f5158f;

    /* renamed from: g */
    public final long f5159g;

    static {
        C1378aj c1378aj = new C1378aj(0L, 0L);
        f5153a = c1378aj;
        f5157e = c1378aj;
    }

    public C1378aj(long j, long j2) {
        C1993a.m41688a(j >= 0);
        C1993a.m41688a(j2 >= 0);
        this.f5158f = j;
        this.f5159g = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1378aj c1378aj = (C1378aj) obj;
        return this.f5158f == c1378aj.f5158f && this.f5159g == c1378aj.f5159g;
    }

    public final int hashCode() {
        return (((int) this.f5158f) * 31) + ((int) this.f5159g);
    }
}
