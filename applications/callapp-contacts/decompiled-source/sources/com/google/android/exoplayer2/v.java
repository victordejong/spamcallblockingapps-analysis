package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/v.class */
final class v {

    /* renamed from: a  reason: collision with root package name */
    public final r.a f22354a;

    /* renamed from: b  reason: collision with root package name */
    public final long f22355b;

    /* renamed from: c  reason: collision with root package name */
    public final long f22356c;

    /* renamed from: d  reason: collision with root package name */
    public final long f22357d;
    public final long e;
    public final boolean f;
    public final boolean g;
    public final boolean h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(r.a aVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3) {
        this.f22354a = aVar;
        this.f22355b = j;
        this.f22356c = j2;
        this.f22357d = j3;
        this.e = j4;
        this.f = z;
        this.g = z2;
        this.h = z3;
    }

    public final v a(long j) {
        return j == this.f22355b ? this : new v(this.f22354a, j, this.f22356c, this.f22357d, this.e, this.f, this.g, this.h);
    }

    public final v b(long j) {
        return j == this.f22356c ? this : new v(this.f22354a, this.f22355b, j, this.f22357d, this.e, this.f, this.g, this.h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        v vVar = (v) obj;
        return this.f22355b == vVar.f22355b && this.f22356c == vVar.f22356c && this.f22357d == vVar.f22357d && this.e == vVar.e && this.f == vVar.f && this.g == vVar.g && this.h == vVar.h && af.a(this.f22354a, vVar.f22354a);
    }

    public final int hashCode() {
        return ((((((((((((((this.f22354a.hashCode() + 527) * 31) + ((int) this.f22355b)) * 31) + ((int) this.f22356c)) * 31) + ((int) this.f22357d)) * 31) + ((int) this.e)) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0);
    }
}
