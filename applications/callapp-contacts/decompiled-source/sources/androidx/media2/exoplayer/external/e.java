package androidx.media2.exoplayer.external;

import androidx.media2.exoplayer.external.util.b;
import androidx.media2.exoplayer.external.util.l;
import androidx.media2.exoplayer.external.util.v;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/e.class */
final class e implements l {

    /* renamed from: a  reason: collision with root package name */
    private final v f3000a;

    /* renamed from: b  reason: collision with root package name */
    private final a f3001b;

    /* renamed from: c  reason: collision with root package name */
    private ag f3002c;

    /* renamed from: d  reason: collision with root package name */
    private l f3003d;
    private boolean e = true;
    private boolean f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/e$a.class */
    public interface a {
        void a(ad adVar);
    }

    public e(a aVar, b bVar) {
        this.f3001b = aVar;
        this.f3000a = new v(bVar);
    }

    public final long a(boolean z) {
        ag agVar = this.f3002c;
        if (agVar == null || agVar.y() || (!this.f3002c.x() && (z || this.f3002c.g()))) {
            this.e = true;
            if (this.f) {
                this.f3000a.a();
            }
        } else {
            long h_ = this.f3003d.h_();
            if (this.e) {
                if (h_ < this.f3000a.h_()) {
                    this.f3000a.b();
                } else {
                    this.e = false;
                    if (this.f) {
                        this.f3000a.a();
                    }
                }
            }
            this.f3000a.a(h_);
            ad d2 = this.f3003d.d();
            if (!d2.equals(this.f3000a.f4182a)) {
                this.f3000a.a(d2);
                this.f3001b.a(d2);
            }
        }
        return h_();
    }

    public final void a() {
        this.f = true;
        this.f3000a.a();
    }

    public final void a(long j) {
        this.f3000a.a(j);
    }

    @Override // androidx.media2.exoplayer.external.util.l
    public final void a(ad adVar) {
        l lVar = this.f3003d;
        ad adVar2 = adVar;
        if (lVar != null) {
            lVar.a(adVar);
            adVar2 = this.f3003d.d();
        }
        this.f3000a.a(adVar2);
    }

    public final void a(ag agVar) throws ExoPlaybackException {
        l lVar;
        l c2 = agVar.c();
        if (c2 != null && c2 != (lVar = this.f3003d)) {
            if (lVar == null) {
                this.f3003d = c2;
                this.f3002c = agVar;
                c2.a(this.f3000a.f4182a);
                return;
            }
            throw ExoPlaybackException.a(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    public final void b() {
        this.f = false;
        this.f3000a.b();
    }

    public final void b(ag agVar) {
        if (agVar == this.f3002c) {
            this.f3003d = null;
            this.f3002c = null;
            this.e = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.util.l
    public final ad d() {
        l lVar = this.f3003d;
        return lVar != null ? lVar.d() : this.f3000a.f4182a;
    }

    @Override // androidx.media2.exoplayer.external.util.l
    public final long h_() {
        return this.e ? this.f3000a.h_() : this.f3003d.h_();
    }
}
