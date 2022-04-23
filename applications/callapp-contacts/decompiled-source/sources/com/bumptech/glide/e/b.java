package com.bumptech.glide.e;

import com.bumptech.glide.e.e;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/b.class */
public final class b implements d, e {

    /* renamed from: a  reason: collision with root package name */
    private final Object f7294a;

    /* renamed from: b  reason: collision with root package name */
    private final e f7295b;

    /* renamed from: c  reason: collision with root package name */
    private volatile d f7296c;

    /* renamed from: d  reason: collision with root package name */
    private volatile d f7297d;
    private e.a e = e.a.CLEARED;
    private e.a f = e.a.CLEARED;

    public b(Object obj, e eVar) {
        this.f7294a = obj;
        this.f7295b = eVar;
    }

    private boolean g(d dVar) {
        if (!dVar.equals(this.f7296c)) {
            return this.e == e.a.FAILED && dVar.equals(this.f7297d);
        }
        return true;
    }

    @Override // com.bumptech.glide.e.d
    public final void a() {
        synchronized (this.f7294a) {
            if (this.e != e.a.RUNNING) {
                this.e = e.a.RUNNING;
                this.f7296c.a();
            }
        }
    }

    public final void a(d dVar, d dVar2) {
        this.f7296c = dVar;
        this.f7297d = dVar2;
    }

    @Override // com.bumptech.glide.e.d
    public final boolean a(d dVar) {
        if (!(dVar instanceof b)) {
            return false;
        }
        b bVar = (b) dVar;
        return this.f7296c.a(bVar.f7296c) && this.f7297d.a(bVar.f7297d);
    }

    @Override // com.bumptech.glide.e.d
    public final void b() {
        synchronized (this.f7294a) {
            this.e = e.a.CLEARED;
            this.f7296c.b();
            if (this.f != e.a.CLEARED) {
                this.f = e.a.CLEARED;
                this.f7297d.b();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // com.bumptech.glide.e.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(com.bumptech.glide.e.d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f7294a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f7295b     // Catch: all -> 0x0046
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0026
            r0 = r6
            r1 = r3
            boolean r0 = r0.b(r1)     // Catch: all -> 0x0046
            if (r0 == 0) goto L_0x0020
            goto L_0x0026
        L_0x0020:
            r0 = 0
            r8 = r0
            goto L_0x0029
        L_0x0026:
            r0 = 1
            r8 = r0
        L_0x0029:
            r0 = r7
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0041
            r0 = r7
            r9 = r0
            r0 = r3
            r1 = r4
            boolean r0 = r0.g(r1)     // Catch: all -> 0x0046
            if (r0 == 0) goto L_0x0041
            r0 = 1
            r9 = r0
        L_0x0041:
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0046
            r0 = r9
            return r0
        L_0x0046:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0046
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.b.b(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.e.d
    public final void c() {
        synchronized (this.f7294a) {
            if (this.e == e.a.RUNNING) {
                this.e = e.a.PAUSED;
                this.f7296c.c();
            }
            if (this.f == e.a.RUNNING) {
                this.f = e.a.PAUSED;
                this.f7297d.c();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // com.bumptech.glide.e.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(com.bumptech.glide.e.d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f7294a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f7295b     // Catch: all -> 0x0046
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0026
            r0 = r6
            r1 = r3
            boolean r0 = r0.c(r1)     // Catch: all -> 0x0046
            if (r0 == 0) goto L_0x0020
            goto L_0x0026
        L_0x0020:
            r0 = 0
            r8 = r0
            goto L_0x0029
        L_0x0026:
            r0 = 1
            r8 = r0
        L_0x0029:
            r0 = r7
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0041
            r0 = r7
            r9 = r0
            r0 = r3
            r1 = r4
            boolean r0 = r0.g(r1)     // Catch: all -> 0x0046
            if (r0 == 0) goto L_0x0041
            r0 = 1
            r9 = r0
        L_0x0041:
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0046
            r0 = r9
            return r0
        L_0x0046:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0046
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.b.c(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.e.d
    public final boolean d() {
        boolean z;
        synchronized (this.f7294a) {
            if (!(this.e == e.a.RUNNING || this.f == e.a.RUNNING)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // com.bumptech.glide.e.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(com.bumptech.glide.e.d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f7294a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f7295b     // Catch: all -> 0x0046
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0026
            r0 = r6
            r1 = r3
            boolean r0 = r0.d(r1)     // Catch: all -> 0x0046
            if (r0 == 0) goto L_0x0020
            goto L_0x0026
        L_0x0020:
            r0 = 0
            r8 = r0
            goto L_0x0029
        L_0x0026:
            r0 = 1
            r8 = r0
        L_0x0029:
            r0 = r7
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0041
            r0 = r7
            r9 = r0
            r0 = r3
            r1 = r4
            boolean r0 = r0.g(r1)     // Catch: all -> 0x0046
            if (r0 == 0) goto L_0x0041
            r0 = 1
            r9 = r0
        L_0x0041:
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0046
            r0 = r9
            return r0
        L_0x0046:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0046
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.b.d(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.e.e
    public final void e(d dVar) {
        synchronized (this.f7294a) {
            if (dVar.equals(this.f7296c)) {
                this.e = e.a.SUCCESS;
            } else if (dVar.equals(this.f7297d)) {
                this.f = e.a.SUCCESS;
            }
            e eVar = this.f7295b;
            if (eVar != null) {
                eVar.e(this);
            }
        }
    }

    @Override // com.bumptech.glide.e.d
    public final boolean e() {
        boolean z;
        synchronized (this.f7294a) {
            if (!(this.e == e.a.SUCCESS || this.f == e.a.SUCCESS)) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.e
    public final void f(d dVar) {
        synchronized (this.f7294a) {
            if (!dVar.equals(this.f7297d)) {
                this.e = e.a.FAILED;
                if (this.f != e.a.RUNNING) {
                    this.f = e.a.RUNNING;
                    this.f7297d.a();
                }
                return;
            }
            this.f = e.a.FAILED;
            e eVar = this.f7295b;
            if (eVar != null) {
                eVar.f(this);
            }
        }
    }

    @Override // com.bumptech.glide.e.d
    public final boolean f() {
        boolean z;
        synchronized (this.f7294a) {
            z = this.e == e.a.CLEARED && this.f == e.a.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.d, com.bumptech.glide.e.e
    public final boolean g() {
        boolean z;
        synchronized (this.f7294a) {
            if (!this.f7296c.g() && !this.f7297d.g()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.e
    public final e h() {
        e h;
        synchronized (this.f7294a) {
            e eVar = this.f7295b;
            h = eVar != null ? eVar.h() : this;
        }
        return h;
    }
}
