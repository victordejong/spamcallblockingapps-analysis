package com.bumptech.glide.p112e;

import com.bumptech.glide.p112e.AbstractC3600e;
/* renamed from: com.bumptech.glide.e.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/k.class */
public final class C3609k implements AbstractC3599d, AbstractC3600e {

    /* renamed from: a */
    private final AbstractC3600e f13712a;

    /* renamed from: b */
    private final Object f13713b;

    /* renamed from: c */
    private volatile AbstractC3599d f13714c;

    /* renamed from: d */
    private volatile AbstractC3599d f13715d;

    /* renamed from: e */
    private AbstractC3600e.EnumC3601a f13716e = AbstractC3600e.EnumC3601a.CLEARED;

    /* renamed from: f */
    private AbstractC3600e.EnumC3601a f13717f = AbstractC3600e.EnumC3601a.CLEARED;

    /* renamed from: g */
    private boolean f13718g;

    public C3609k(Object obj, AbstractC3600e abstractC3600e) {
        this.f13713b = obj;
        this.f13712a = abstractC3600e;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: a */
    public final void mo37635a() {
        synchronized (this.f13713b) {
            this.f13718g = true;
            if (this.f13716e != AbstractC3600e.EnumC3601a.SUCCESS && this.f13717f != AbstractC3600e.EnumC3601a.RUNNING) {
                this.f13717f = AbstractC3600e.EnumC3601a.RUNNING;
                this.f13715d.mo37635a();
            }
            if (this.f13718g && this.f13716e != AbstractC3600e.EnumC3601a.RUNNING) {
                this.f13716e = AbstractC3600e.EnumC3601a.RUNNING;
                this.f13714c.mo37635a();
            }
            this.f13718g = false;
        }
    }

    /* renamed from: a */
    public final void m37633a(AbstractC3599d abstractC3599d, AbstractC3599d abstractC3599d2) {
        this.f13714c = abstractC3599d;
        this.f13715d = abstractC3599d2;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: a */
    public final boolean mo37634a(AbstractC3599d abstractC3599d) {
        if (abstractC3599d instanceof C3609k) {
            C3609k c3609k = (C3609k) abstractC3599d;
            if (this.f13714c == null) {
                if (c3609k.f13714c != null) {
                    return false;
                }
            } else if (!this.f13714c.mo37634a(c3609k.f13714c)) {
                return false;
            }
            return this.f13715d == null ? c3609k.f13715d == null : this.f13715d.mo37634a(c3609k.f13715d);
        }
        return false;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: b */
    public final void mo37632b() {
        synchronized (this.f13713b) {
            this.f13718g = false;
            this.f13716e = AbstractC3600e.EnumC3601a.CLEARED;
            this.f13717f = AbstractC3600e.EnumC3601a.CLEARED;
            this.f13715d.mo37632b();
            this.f13714c.mo37632b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
        if (r3.f13716e != com.bumptech.glide.p112e.AbstractC3600e.EnumC3601a.SUCCESS) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[Catch: all -> 0x0053, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:7:0x0013, B:14:0x0032, B:18:0x0041, B:23:0x004f), top: B:31:0x0007 }] */
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
            java.lang.Object r0 = r0.f13713b
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f13712a     // Catch: java.lang.Throwable -> L53
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r3
            boolean r0 = r0.mo37631b(r1)     // Catch: java.lang.Throwable -> L53
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
            if (r0 == 0) goto L4e
            r0 = r4
            r1 = r3
            com.bumptech.glide.e.d r1 = r1.f13714c     // Catch: java.lang.Throwable -> L53
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L53
            if (r0 != 0) goto L4b
            r0 = r7
            r9 = r0
            r0 = r3
            com.bumptech.glide.e.e$a r0 = r0.f13716e     // Catch: java.lang.Throwable -> L53
            com.bumptech.glide.e.e$a r1 = com.bumptech.glide.p112e.AbstractC3600e.EnumC3601a.SUCCESS     // Catch: java.lang.Throwable -> L53
            if (r0 == r1) goto L4e
        L4b:
            r0 = 1
            r9 = r0
        L4e:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            r0 = r9
            return r0
        L53:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p112e.C3609k.mo37631b(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: c */
    public final void mo37630c() {
        synchronized (this.f13713b) {
            if (!this.f13717f.isComplete()) {
                this.f13717f = AbstractC3600e.EnumC3601a.PAUSED;
                this.f13715d.mo37630c();
            }
            if (!this.f13716e.isComplete()) {
                this.f13716e = AbstractC3600e.EnumC3601a.PAUSED;
                this.f13714c.mo37630c();
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
            java.lang.Object r0 = r0.f13713b
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f13712a     // Catch: java.lang.Throwable -> L54
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r3
            boolean r0 = r0.mo37629c(r1)     // Catch: java.lang.Throwable -> L54
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
            if (r0 == 0) goto L4f
            r0 = r7
            r9 = r0
            r0 = r4
            r1 = r3
            com.bumptech.glide.e.d r1 = r1.f13714c     // Catch: java.lang.Throwable -> L54
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L54
            if (r0 == 0) goto L4f
            r0 = r7
            r9 = r0
            r0 = r3
            boolean r0 = r0.mo37622g()     // Catch: java.lang.Throwable -> L54
            if (r0 != 0) goto L4f
            r0 = 1
            r9 = r0
        L4f:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L54
            r0 = r9
            return r0
        L54:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L54
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p112e.C3609k.mo37629c(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: d */
    public final boolean mo37628d() {
        boolean z;
        synchronized (this.f13713b) {
            z = this.f13716e == AbstractC3600e.EnumC3601a.RUNNING;
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
            java.lang.Object r0 = r0.f13713b
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            com.bumptech.glide.e.e r0 = r0.f13712a     // Catch: java.lang.Throwable -> L57
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r3
            boolean r0 = r0.mo37627d(r1)     // Catch: java.lang.Throwable -> L57
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
            if (r0 == 0) goto L52
            r0 = r7
            r9 = r0
            r0 = r4
            r1 = r3
            com.bumptech.glide.e.d r1 = r1.f13714c     // Catch: java.lang.Throwable -> L57
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L52
            r0 = r7
            r9 = r0
            r0 = r3
            com.bumptech.glide.e.e$a r0 = r0.f13716e     // Catch: java.lang.Throwable -> L57
            com.bumptech.glide.e.e$a r1 = com.bumptech.glide.p112e.AbstractC3600e.EnumC3601a.PAUSED     // Catch: java.lang.Throwable -> L57
            if (r0 == r1) goto L52
            r0 = 1
            r9 = r0
        L52:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L57
            r0 = r9
            return r0
        L57:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L57
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p112e.C3609k.mo37627d(com.bumptech.glide.e.d):boolean");
    }

    @Override // com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: e */
    public final void mo37625e(AbstractC3599d abstractC3599d) {
        synchronized (this.f13713b) {
            if (abstractC3599d.equals(this.f13715d)) {
                this.f13717f = AbstractC3600e.EnumC3601a.SUCCESS;
                return;
            }
            this.f13716e = AbstractC3600e.EnumC3601a.SUCCESS;
            AbstractC3600e abstractC3600e = this.f13712a;
            if (abstractC3600e != null) {
                abstractC3600e.mo37625e(this);
            }
            if (!this.f13717f.isComplete()) {
                this.f13715d.mo37632b();
            }
        }
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: e */
    public final boolean mo37626e() {
        boolean z;
        synchronized (this.f13713b) {
            z = this.f13716e == AbstractC3600e.EnumC3601a.SUCCESS;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: f */
    public final void mo37623f(AbstractC3599d abstractC3599d) {
        synchronized (this.f13713b) {
            if (!abstractC3599d.equals(this.f13714c)) {
                this.f13717f = AbstractC3600e.EnumC3601a.FAILED;
                return;
            }
            this.f13716e = AbstractC3600e.EnumC3601a.FAILED;
            AbstractC3600e abstractC3600e = this.f13712a;
            if (abstractC3600e != null) {
                abstractC3600e.mo37623f(this);
            }
        }
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d
    /* renamed from: f */
    public final boolean mo37624f() {
        boolean z;
        synchronized (this.f13713b) {
            z = this.f13716e == AbstractC3600e.EnumC3601a.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3599d, com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: g */
    public final boolean mo37622g() {
        boolean z;
        synchronized (this.f13713b) {
            if (!this.f13715d.mo37622g() && !this.f13714c.mo37622g()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.p112e.AbstractC3600e
    /* renamed from: h */
    public final AbstractC3600e mo37621h() {
        C3609k mo37621h;
        synchronized (this.f13713b) {
            AbstractC3600e abstractC3600e = this.f13712a;
            mo37621h = abstractC3600e != null ? abstractC3600e.mo37621h() : this;
        }
        return mo37621h;
    }
}
