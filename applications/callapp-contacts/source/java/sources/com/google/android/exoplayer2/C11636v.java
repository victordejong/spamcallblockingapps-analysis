package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.v */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/v.class */
final class C11636v {

    /* renamed from: a */
    public final AbstractC11315r.C11316a f38758a;

    /* renamed from: b */
    public final long f38759b;

    /* renamed from: c */
    public final long f38760c;

    /* renamed from: d */
    public final long f38761d;

    /* renamed from: e */
    public final long f38762e;

    /* renamed from: f */
    public final boolean f38763f;

    /* renamed from: g */
    public final boolean f38764g;

    /* renamed from: h */
    public final boolean f38765h;

    public C11636v(AbstractC11315r.C11316a c11316a, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3) {
        this.f38758a = c11316a;
        this.f38759b = j;
        this.f38760c = j2;
        this.f38761d = j3;
        this.f38762e = j4;
        this.f38763f = z;
        this.f38764g = z2;
        this.f38765h = z3;
    }

    /* renamed from: a */
    public final C11636v m19757a(long j) {
        return j == this.f38759b ? this : new C11636v(this.f38758a, j, this.f38760c, this.f38761d, this.f38762e, this.f38763f, this.f38764g, this.f38765h);
    }

    /* renamed from: b */
    public final C11636v m19756b(long j) {
        return j == this.f38760c ? this : new C11636v(this.f38758a, this.f38759b, j, this.f38761d, this.f38762e, this.f38763f, this.f38764g, this.f38765h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C11636v c11636v = (C11636v) obj;
        return this.f38759b == c11636v.f38759b && this.f38760c == c11636v.f38760c && this.f38761d == c11636v.f38761d && this.f38762e == c11636v.f38762e && this.f38763f == c11636v.f38763f && this.f38764g == c11636v.f38764g && this.f38765h == c11636v.f38765h && C11599af.m19973a(this.f38758a, c11636v.f38758a);
    }

    public final int hashCode() {
        return ((((((((((((((this.f38758a.hashCode() + 527) * 31) + ((int) this.f38759b)) * 31) + ((int) this.f38760c)) * 31) + ((int) this.f38761d)) * 31) + ((int) this.f38762e)) * 31) + (this.f38763f ? 1 : 0)) * 31) + (this.f38764g ? 1 : 0)) * 31) + (this.f38765h ? 1 : 0);
    }
}
