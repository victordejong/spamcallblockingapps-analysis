package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t11.class */
public final class t11 {

    /* renamed from: a */
    public static final t11 f29774a = new t11(null, new ub0[0], 0, -9223372036854775807L, 0);

    /* renamed from: b */
    private static final ub0 f29775b = new ub0(0).m10356b(0);

    /* renamed from: c */
    public static final AbstractC7093w2<t11> f29776c = C6274a.f19779a;

    /* renamed from: d */
    public final long f29777d = 0;

    /* renamed from: e */
    private final ub0[] f29778e;

    private t11(Object obj, ub0[] ub0VarArr, long j, long j2, int i) {
        this.f29778e = ub0VarArr;
    }

    /* renamed from: a */
    public final ub0 m10861a(int i) {
        return i < 0 ? f29775b : this.f29778e[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t11.class != obj.getClass()) {
            return false;
        }
        return C7101wa.m9720H(null, null) && Arrays.equals(this.f29778e, ((t11) obj).f29778e);
    }

    public final int hashCode() {
        return (((int) (-9223372036854775807L)) * 961) + Arrays.hashCode(this.f29778e);
    }

    public final String toString() {
        return "AdPlaybackState(adsId=" + ((Object) null) + ", adResumePositionUs=0, adGroups=[])";
    }
}
