package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.util.a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/aj.class */
public final class aj {

    /* renamed from: a  reason: collision with root package name */
    public static final aj f2817a;

    /* renamed from: b  reason: collision with root package name */
    public static final aj f2818b = new aj(Long.MAX_VALUE, Long.MAX_VALUE);

    /* renamed from: c  reason: collision with root package name */
    public static final aj f2819c = new aj(Long.MAX_VALUE, 0);

    /* renamed from: d  reason: collision with root package name */
    public static final aj f2820d = new aj(0, Long.MAX_VALUE);
    public static final aj e;
    public final long f;
    public final long g;

    static {
        aj ajVar = new aj(0L, 0L);
        f2817a = ajVar;
        e = ajVar;
    }

    public aj(long j, long j2) {
        boolean z = true;
        a.a(j >= 0);
        if (j2 < 0) {
            z = false;
        }
        a.a(z);
        this.f = j;
        this.g = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        aj ajVar = (aj) obj;
        return this.f == ajVar.f && this.g == ajVar.g;
    }

    public final int hashCode() {
        return (((int) this.f) * 31) + ((int) this.g);
    }
}
