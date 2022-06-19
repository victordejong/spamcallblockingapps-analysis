package com.bumptech.glide.p112e;

import com.bumptech.glide.p112e.AbstractC3600e;
/* renamed from: com.bumptech.glide.e.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/b.class */
public final class C3589b implements AbstractC3599d, AbstractC3600e {

    /* renamed from: a */
    private final Object f13649a;

    /* renamed from: b */
    private final AbstractC3600e f13650b;

    /* renamed from: c */
    private volatile AbstractC3599d f13651c;

    /* renamed from: d */
    private volatile AbstractC3599d f13652d;

    /* renamed from: e */
    private AbstractC3600e.EnumC3601a f13653e = AbstractC3600e.EnumC3601a.CLEARED;

    /* renamed from: f */
    private AbstractC3600e.EnumC3601a f13654f = AbstractC3600e.EnumC3601a.CLEARED;

    public C3589b(Object obj, AbstractC3600e abstractC3600e) {
        this.f13649a = obj;
        this.f13650b = abstractC3600e;
    }

    /* renamed from: g */
    private boolean m37668g(AbstractC3599d abstractC3599d) {
        if (!abstractC3599d.equals(this.f13651c)) {
            return this.f13653e == AbstractC3600e.EnumC3601a.FAILED && abstractC3599d.equals(this.f13652d);
        }
        return true;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: a */
    public final void mo37635a() {
        synchronized (this.f13649a) {
            if (this.f13653e != AbstractC3600e.EnumC3601a.RUNNING) {
                this.f13653e = AbstractC3600e.EnumC3601a.RUNNING;
                this.f13651c.mo37635a();
            }
        }
    }

    /* renamed from: a */
    public final void m37669a(AbstractC3599d abstractC3599d, AbstractC3599d abstractC3599d2) {
        this.f13651c = abstractC3599d;
        this.f13652d = abstractC3599d2;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: a */
    public final boolean mo37634a(AbstractC3599d abstractC3599d) {
        if (abstractC3599d instanceof C3589b) {
            C3589b c3589b = (C3589b) abstractC3599d;
            return this.f13651c.mo37634a(c3589b.f13651c) && this.f13652d.mo37634a(c3589b.f13652d);
        }
        return false;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: b */
    public final void mo37632b() {
        synchronized (this.f13649a) {
            this.f13653e = AbstractC3600e.EnumC3601a.CLEARED;
            this.f13651c.mo37632b();
            if (this.f13654f != AbstractC3600e.EnumC3601a.CLEARED) {
                this.f13654f = AbstractC3600e.EnumC3601a.CLEARED;
                this.f13652d.mo37632b();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo37631b(com.bumptech.glide.p112e.AbstractC3599d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f13649a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f13650b     // Catch: java.lang.Throwable -> L46
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r3
            boolean r0 = r0.mo37631b(r1)     // Catch: java.lang.Throwable -> L46
            if (r0 == 0) goto L20
            goto L26
        L20:
            r0 = 0
            r8 = r0
            goto L29
        L26:
            r0 = 1
            r8 = r0
        L29:
            r0 = r7
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L41
            r0 = r7
            r9 = r0
            r0 = r3
            r1 = r4
            boolean r0 = r0.m37668g(r1)     // Catch: java.lang.Throwable -> L46
            if (r0 == 0) goto L41
            r0 = 1
            r9 = r0
        L41:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L46
            r0 = r9
            return r0
        L46:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L46
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p112e.C3589b.mo37631b(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: c */
    public final void mo37630c() {
        synchronized (this.f13649a) {
            if (this.f13653e == AbstractC3600e.EnumC3601a.RUNNING) {
                this.f13653e = AbstractC3600e.EnumC3601a.PAUSED;
                this.f13651c.mo37630c();
            }
            if (this.f13654f == AbstractC3600e.EnumC3601a.RUNNING) {
                this.f13654f = AbstractC3600e.EnumC3601a.PAUSED;
                this.f13652d.mo37630c();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo37629c(com.bumptech.glide.p112e.AbstractC3599d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f13649a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f13650b     // Catch: java.lang.Throwable -> L46
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r3
            boolean r0 = r0.mo37629c(r1)     // Catch: java.lang.Throwable -> L46
            if (r0 == 0) goto L20
            goto L26
        L20:
            r0 = 0
            r8 = r0
            goto L29
        L26:
            r0 = 1
            r8 = r0
        L29:
            r0 = r7
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L41
            r0 = r7
            r9 = r0
            r0 = r3
            r1 = r4
            boolean r0 = r0.m37668g(r1)     // Catch: java.lang.Throwable -> L46
            if (r0 == 0) goto L41
            r0 = 1
            r9 = r0
        L41:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L46
            r0 = r9
            return r0
        L46:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L46
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p112e.C3589b.mo37629c(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: d */
    public final boolean mo37628d() {
        boolean z;
        synchronized (this.f13649a) {
            if (this.f13653e != AbstractC3600e.EnumC3601a.RUNNING && this.f13654f != AbstractC3600e.EnumC3601a.RUNNING) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo37627d(com.bumptech.glide.p112e.AbstractC3599d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f13649a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f13650b     // Catch: java.lang.Throwable -> L46
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r3
            boolean r0 = r0.mo37627d(r1)     // Catch: java.lang.Throwable -> L46
            if (r0 == 0) goto L20
            goto L26
        L20:
            r0 = 0
            r8 = r0
            goto L29
        L26:
            r0 = 1
            r8 = r0
        L29:
            r0 = r7
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L41
            r0 = r7
            r9 = r0
            r0 = r3
            r1 = r4
            boolean r0 = r0.m37668g(r1)     // Catch: java.lang.Throwable -> L46
            if (r0 == 0) goto L41
            r0 = 1
            r9 = r0
        L41:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L46
            r0 = r9
            return r0
        L46:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L46
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p112e.C3589b.mo37627d(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: e */
    public final void mo37625e(AbstractC3599d abstractC3599d) {
        synchronized (this.f13649a) {
            if (abstractC3599d.equals(this.f13651c)) {
                this.f13653e = AbstractC3600e.EnumC3601a.SUCCESS;
            } else if (abstractC3599d.equals(this.f13652d)) {
                this.f13654f = AbstractC3600e.EnumC3601a.SUCCESS;
            }
            AbstractC3600e abstractC3600e = this.f13650b;
            if (abstractC3600e != null) {
                abstractC3600e.mo37625e(this);
            }
        }
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: e */
    public final boolean mo37626e() {
        boolean z;
        synchronized (this.f13649a) {
            if (this.f13653e != AbstractC3600e.EnumC3601a.SUCCESS && this.f13654f != AbstractC3600e.EnumC3601a.SUCCESS) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: f */
    public final void mo37623f(AbstractC3599d abstractC3599d) {
        synchronized (this.f13649a) {
            if (!abstractC3599d.equals(this.f13652d)) {
                this.f13653e = AbstractC3600e.EnumC3601a.FAILED;
                if (this.f13654f != AbstractC3600e.EnumC3601a.RUNNING) {
                    this.f13654f = AbstractC3600e.EnumC3601a.RUNNING;
                    this.f13652d.mo37635a();
                }
                return;
            }
            this.f13654f = AbstractC3600e.EnumC3601a.FAILED;
            AbstractC3600e abstractC3600e = this.f13650b;
            if (abstractC3600e != null) {
                abstractC3600e.mo37623f(this);
            }
        }
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: f */
    public final boolean mo37624f() {
        boolean z;
        synchronized (this.f13649a) {
            z = this.f13653e == AbstractC3600e.EnumC3601a.CLEARED && this.f13654f == AbstractC3600e.EnumC3601a.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d, com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: g */
    public final boolean mo37622g() {
        boolean z;
        synchronized (this.f13649a) {
            if (!this.f13651c.mo37622g() && !this.f13652d.mo37622g()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: h */
    public final AbstractC3600e mo37621h() {
        C3589b mo37621h;
        synchronized (this.f13649a) {
            AbstractC3600e abstractC3600e = this.f13650b;
            mo37621h = abstractC3600e != null ? abstractC3600e.mo37621h() : this;
        }
        return mo37621h;
    }
}
