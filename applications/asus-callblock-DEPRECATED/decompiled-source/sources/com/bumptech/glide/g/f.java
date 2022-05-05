package com.bumptech.glide.g;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/f.class */
public final class f implements b, c {

    /* renamed from: a  reason: collision with root package name */
    private b f3446a;

    /* renamed from: b  reason: collision with root package name */
    private b f3447b;
    private c c;

    public f() {
        this(null);
    }

    public f(c cVar) {
        this.c = cVar;
    }

    @Override // com.bumptech.glide.g.b
    public final void a() {
        this.f3446a.a();
        this.f3447b.a();
    }

    public final void a(b bVar, b bVar2) {
        this.f3446a = bVar;
        this.f3447b = bVar2;
    }

    @Override // com.bumptech.glide.g.c
    public final boolean a(b bVar) {
        boolean z;
        if (this.c == null || this.c.a(this)) {
            z = true;
            if (!bVar.equals(this.f3446a)) {
                if (!this.f3446a.g()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.bumptech.glide.g.b
    public final void b() {
        if (!this.f3447b.e()) {
            this.f3447b.b();
        }
        if (!this.f3446a.e()) {
            this.f3446a.b();
        }
    }

    @Override // com.bumptech.glide.g.c
    public final boolean b(b bVar) {
        boolean z = true;
        if (!(this.c == null || this.c.b(this)) || !bVar.equals(this.f3446a) || i()) {
            z = false;
        }
        return z;
    }

    @Override // com.bumptech.glide.g.b
    public final void c() {
        this.f3447b.c();
        this.f3446a.c();
    }

    @Override // com.bumptech.glide.g.c
    public final void c(b bVar) {
        if (!bVar.equals(this.f3447b)) {
            if (this.c != null) {
                this.c.c(this);
            }
            if (!this.f3447b.f()) {
                this.f3447b.c();
            }
        }
    }

    @Override // com.bumptech.glide.g.b
    public final void d() {
        this.f3446a.d();
        this.f3447b.d();
    }

    @Override // com.bumptech.glide.g.b
    public final boolean e() {
        return this.f3446a.e();
    }

    @Override // com.bumptech.glide.g.b
    public final boolean f() {
        return this.f3446a.f() || this.f3447b.f();
    }

    @Override // com.bumptech.glide.g.b
    public final boolean g() {
        return this.f3446a.g() || this.f3447b.g();
    }

    @Override // com.bumptech.glide.g.b
    public final boolean h() {
        return this.f3446a.h();
    }

    @Override // com.bumptech.glide.g.c
    public final boolean i() {
        boolean z = false;
        if ((this.c != null && this.c.i()) || g()) {
            z = true;
        }
        return z;
    }
}
