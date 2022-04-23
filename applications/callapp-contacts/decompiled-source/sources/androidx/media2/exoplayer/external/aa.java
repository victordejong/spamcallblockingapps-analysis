package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/aa.class */
final class aa {

    /* renamed from: a  reason: collision with root package name */
    public final t.a f2797a;

    /* renamed from: b  reason: collision with root package name */
    public final long f2798b;

    /* renamed from: c  reason: collision with root package name */
    public final long f2799c;

    /* renamed from: d  reason: collision with root package name */
    public final long f2800d;
    public final long e;
    public final boolean f;
    public final boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(t.a aVar, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.f2797a = aVar;
        this.f2798b = j;
        this.f2799c = j2;
        this.f2800d = j3;
        this.e = j4;
        this.f = z;
        this.g = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        aa aaVar = (aa) obj;
        return this.f2798b == aaVar.f2798b && this.f2799c == aaVar.f2799c && this.f2800d == aaVar.f2800d && this.e == aaVar.e && this.f == aaVar.f && this.g == aaVar.g && ac.a(this.f2797a, aaVar.f2797a);
    }

    public final int hashCode() {
        return ((((((((((((this.f2797a.hashCode() + 527) * 31) + ((int) this.f2798b)) * 31) + ((int) this.f2799c)) * 31) + ((int) this.f2800d)) * 31) + ((int) this.e)) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0);
    }
}
