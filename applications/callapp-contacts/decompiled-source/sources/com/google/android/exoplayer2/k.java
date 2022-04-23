package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.c;
import com.google.android.exoplayer2.util.p;
import com.google.android.exoplayer2.util.z;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/k.class */
final class k implements p {

    /* renamed from: a  reason: collision with root package name */
    private final z f21378a;

    /* renamed from: b  reason: collision with root package name */
    private final a f21379b;

    /* renamed from: c  reason: collision with root package name */
    private af f21380c;

    /* renamed from: d  reason: collision with root package name */
    private p f21381d;
    private boolean e = true;
    private boolean f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/k$a.class */
    public interface a {
        void a(aa aaVar);
    }

    public k(a aVar, c cVar) {
        this.f21379b = aVar;
        this.f21378a = new z(cVar);
    }

    @Override // com.google.android.exoplayer2.util.p
    public final long B_() {
        return this.e ? this.f21378a.B_() : ((p) com.google.android.exoplayer2.util.a.b(this.f21381d)).B_();
    }

    public final long a(boolean z) {
        af afVar = this.f21380c;
        if (afVar == null || afVar.z() || (!this.f21380c.y() && (z || this.f21380c.g()))) {
            this.e = true;
            if (this.f) {
                this.f21378a.a();
            }
        } else {
            p pVar = (p) com.google.android.exoplayer2.util.a.b(this.f21381d);
            long B_ = pVar.B_();
            if (this.e) {
                if (B_ < this.f21378a.B_()) {
                    this.f21378a.b();
                } else {
                    this.e = false;
                    if (this.f) {
                        this.f21378a.a();
                    }
                }
            }
            this.f21378a.a(B_);
            aa d2 = pVar.d();
            if (!d2.equals(this.f21378a.f22350a)) {
                this.f21378a.a(d2);
                this.f21379b.a(d2);
            }
        }
        return B_();
    }

    public final void a() {
        this.f = true;
        this.f21378a.a();
    }

    public final void a(long j) {
        this.f21378a.a(j);
    }

    @Override // com.google.android.exoplayer2.util.p
    public final void a(aa aaVar) {
        p pVar = this.f21381d;
        aa aaVar2 = aaVar;
        if (pVar != null) {
            pVar.a(aaVar);
            aaVar2 = this.f21381d.d();
        }
        this.f21378a.a(aaVar2);
    }

    public final void a(af afVar) throws ExoPlaybackException {
        p pVar;
        p c2 = afVar.c();
        if (c2 != null && c2 != (pVar = this.f21381d)) {
            if (pVar == null) {
                this.f21381d = c2;
                this.f21380c = afVar;
                c2.a(this.f21378a.f22350a);
                return;
            }
            throw ExoPlaybackException.a((RuntimeException) new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    public final void b() {
        this.f = false;
        this.f21378a.b();
    }

    public final void b(af afVar) {
        if (afVar == this.f21380c) {
            this.f21381d = null;
            this.f21380c = null;
            this.e = true;
        }
    }

    @Override // com.google.android.exoplayer2.util.p
    public final aa d() {
        p pVar = this.f21381d;
        return pVar != null ? pVar.d() : this.f21378a.f22350a;
    }
}
