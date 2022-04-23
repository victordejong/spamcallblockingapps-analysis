package com.bumptech.glide.e;

import com.bumptech.glide.e.e;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/k.class */
public final class k implements d, e {

    /* renamed from: a  reason: collision with root package name */
    private final e f7319a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f7320b;

    /* renamed from: c  reason: collision with root package name */
    private volatile d f7321c;

    /* renamed from: d  reason: collision with root package name */
    private volatile d f7322d;
    private e.a e = e.a.CLEARED;
    private e.a f = e.a.CLEARED;
    private boolean g;

    public k(Object obj, e eVar) {
        this.f7320b = obj;
        this.f7319a = eVar;
    }

    @Override // com.bumptech.glide.e.d
    public final void a() {
        synchronized (this.f7320b) {
            this.g = true;
            if (!(this.e == e.a.SUCCESS || this.f == e.a.RUNNING)) {
                this.f = e.a.RUNNING;
                this.f7322d.a();
            }
            if (this.g && this.e != e.a.RUNNING) {
                this.e = e.a.RUNNING;
                this.f7321c.a();
            }
            this.g = false;
        }
    }

    public final void a(d dVar, d dVar2) {
        this.f7321c = dVar;
        this.f7322d = dVar2;
    }

    @Override // com.bumptech.glide.e.d
    public final boolean a(d dVar) {
        if (!(dVar instanceof k)) {
            return false;
        }
        k kVar = (k) dVar;
        if (this.f7321c == null) {
            if (kVar.f7321c != null) {
                return false;
            }
        } else if (!this.f7321c.a(kVar.f7321c)) {
            return false;
        }
        return this.f7322d == null ? kVar.f7322d == null : this.f7322d.a(kVar.f7322d);
    }

    @Override // com.bumptech.glide.e.d
    public final void b() {
        synchronized (this.f7320b) {
            this.g = false;
            this.e = e.a.CLEARED;
            this.f = e.a.CLEARED;
            this.f7322d.b();
            this.f7321c.b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
        if (r3.e != com.bumptech.glide.e.e.a.SUCCESS) goto L_0x004b;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[Catch: all -> 0x0053, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:7:0x0013, B:14:0x0032, B:18:0x0041, B:23:0x004f), top: B:31:0x0007 }] */
    @Override // com.bumptech.glide.e.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(com.bumptech.glide.e.d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f7320b
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f7319a     // Catch: all -> 0x0053
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0026
            r0 = r6
            r1 = r3
            boolean r0 = r0.b(r1)     // Catch: all -> 0x0053
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
            if (r0 == 0) goto L_0x004e
            r0 = r4
            r1 = r3
            com.bumptech.glide.e.d r1 = r1.f7321c     // Catch: all -> 0x0053
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x0053
            if (r0 != 0) goto L_0x004b
            r0 = r7
            r9 = r0
            r0 = r3
            com.bumptech.glide.e.e$a r0 = r0.e     // Catch: all -> 0x0053
            com.bumptech.glide.e.e$a r1 = com.bumptech.glide.e.e.a.SUCCESS     // Catch: all -> 0x0053
            if (r0 == r1) goto L_0x004e
        L_0x004b:
            r0 = 1
            r9 = r0
        L_0x004e:
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0053
            r0 = r9
            return r0
        L_0x0053:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0053
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.k.b(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.e.d
    public final void c() {
        synchronized (this.f7320b) {
            if (!this.f.isComplete()) {
                this.f = e.a.PAUSED;
                this.f7322d.c();
            }
            if (!this.e.isComplete()) {
                this.e = e.a.PAUSED;
                this.f7321c.c();
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
            java.lang.Object r0 = r0.f7320b
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f7319a     // Catch: all -> 0x0054
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0026
            r0 = r6
            r1 = r3
            boolean r0 = r0.c(r1)     // Catch: all -> 0x0054
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
            if (r0 == 0) goto L_0x004f
            r0 = r7
            r9 = r0
            r0 = r4
            r1 = r3
            com.bumptech.glide.e.d r1 = r1.f7321c     // Catch: all -> 0x0054
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x0054
            if (r0 == 0) goto L_0x004f
            r0 = r7
            r9 = r0
            r0 = r3
            boolean r0 = r0.g()     // Catch: all -> 0x0054
            if (r0 != 0) goto L_0x004f
            r0 = 1
            r9 = r0
        L_0x004f:
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0054
            r0 = r9
            return r0
        L_0x0054:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0054
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.k.c(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.e.d
    public final boolean d() {
        boolean z;
        synchronized (this.f7320b) {
            z = this.e == e.a.RUNNING;
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
            java.lang.Object r0 = r0.f7320b
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f7319a     // Catch: all -> 0x0057
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0026
            r0 = r6
            r1 = r3
            boolean r0 = r0.d(r1)     // Catch: all -> 0x0057
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
            if (r0 == 0) goto L_0x0052
            r0 = r7
            r9 = r0
            r0 = r4
            r1 = r3
            com.bumptech.glide.e.d r1 = r1.f7321c     // Catch: all -> 0x0057
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x0057
            if (r0 == 0) goto L_0x0052
            r0 = r7
            r9 = r0
            r0 = r3
            com.bumptech.glide.e.e$a r0 = r0.e     // Catch: all -> 0x0057
            com.bumptech.glide.e.e$a r1 = com.bumptech.glide.e.e.a.PAUSED     // Catch: all -> 0x0057
            if (r0 == r1) goto L_0x0052
            r0 = 1
            r9 = r0
        L_0x0052:
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0057
            r0 = r9
            return r0
        L_0x0057:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x0057
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.e.k.d(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.e.e
    public final void e(d dVar) {
        synchronized (this.f7320b) {
            if (dVar.equals(this.f7322d)) {
                this.f = e.a.SUCCESS;
                return;
            }
            this.e = e.a.SUCCESS;
            e eVar = this.f7319a;
            if (eVar != null) {
                eVar.e(this);
            }
            if (!this.f.isComplete()) {
                this.f7322d.b();
            }
        }
    }

    @Override // com.bumptech.glide.e.d
    public final boolean e() {
        boolean z;
        synchronized (this.f7320b) {
            z = this.e == e.a.SUCCESS;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.e
    public final void f(d dVar) {
        synchronized (this.f7320b) {
            if (!dVar.equals(this.f7321c)) {
                this.f = e.a.FAILED;
                return;
            }
            this.e = e.a.FAILED;
            e eVar = this.f7319a;
            if (eVar != null) {
                eVar.f(this);
            }
        }
    }

    @Override // com.bumptech.glide.e.d
    public final boolean f() {
        boolean z;
        synchronized (this.f7320b) {
            z = this.e == e.a.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.d, com.bumptech.glide.e.e
    public final boolean g() {
        boolean z;
        synchronized (this.f7320b) {
            if (!this.f7322d.g() && !this.f7321c.g()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.e.e
    public final e h() {
        e h;
        synchronized (this.f7320b) {
            e eVar = this.f7319a;
            h = eVar != null ? eVar.h() : this;
        }
        return h;
    }
}
