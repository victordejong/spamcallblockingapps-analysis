package com.bumptech.glide.load.engine;

import androidx.core.e.c;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.g.a.b;
import com.bumptech.glide.g.j;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/t.class */
final class t<Z> implements a.c, u<Z> {

    /* renamed from: a  reason: collision with root package name */
    private static final c.a<t<?>> f7600a = a.a(20, new a.AbstractC0143a<t<?>>() { // from class: com.bumptech.glide.load.engine.t.1
        @Override // com.bumptech.glide.g.a.a.AbstractC0143a
        public final /* synthetic */ t<?> a() {
            return new t<>();
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private final b f7601b = new b.a();

    /* renamed from: c  reason: collision with root package name */
    private u<Z> f7602c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7603d;
    private boolean e;

    t() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <Z> t<Z> a(u<Z> uVar) {
        t<Z> tVar = (t) j.a(f7600a.a(), "Argument must not be null");
        ((t) tVar).e = false;
        ((t) tVar).f7603d = true;
        ((t) tVar).f7602c = uVar;
        return tVar;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Class<Z> a() {
        return this.f7602c.a();
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Z b() {
        return this.f7602c.b();
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int c() {
        return this.f7602c.c();
    }

    @Override // com.bumptech.glide.load.engine.u
    public final void d() {
        synchronized (this) {
            this.f7601b.a();
            this.e = true;
            if (!this.f7603d) {
                this.f7602c.d();
                this.f7602c = null;
                f7600a.a(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        synchronized (this) {
            this.f7601b.a();
            if (this.f7603d) {
                this.f7603d = false;
                if (this.e) {
                    d();
                }
            } else {
                throw new IllegalStateException("Already unlocked");
            }
        }
    }

    @Override // com.bumptech.glide.g.a.a.c
    public final b m_() {
        return this.f7601b;
    }
}
