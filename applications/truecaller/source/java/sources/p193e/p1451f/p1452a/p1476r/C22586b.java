package p193e.p1451f.p1452a.p1476r;

import p193e.p1451f.p1452a.p1476r.AbstractC22588e;
/* renamed from: e.f.a.r.b */
/* loaded from: classes-dex2jar.jar:e/f/a/r/b.class */
public final class C22586b implements AbstractC22588e, AbstractC22587d {

    /* renamed from: a */
    public final Object f62551a;

    /* renamed from: b */
    public final AbstractC22588e f62552b;

    /* renamed from: c */
    public volatile AbstractC22587d f62553c;

    /* renamed from: d */
    public volatile AbstractC22587d f62554d;

    /* renamed from: e */
    public AbstractC22588e.EnumC22589a f62555e;

    /* renamed from: f */
    public AbstractC22588e.EnumC22589a f62556f;

    public C22586b(Object obj, AbstractC22588e abstractC22588e) {
        AbstractC22588e.EnumC22589a enumC22589a = AbstractC22588e.EnumC22589a.CLEARED;
        this.f62555e = enumC22589a;
        this.f62556f = enumC22589a;
        this.f62551a = obj;
        this.f62552b = abstractC22588e;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22588e
    /* renamed from: a */
    public boolean mo8080a() {
        boolean z;
        synchronized (this.f62551a) {
            AbstractC22588e abstractC22588e = this.f62552b;
            z = true;
            if (!(abstractC22588e != null && abstractC22588e.mo8080a())) {
                z = isComplete();
            }
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    /* renamed from: b */
    public boolean mo8072b() {
        boolean z;
        synchronized (this.f62551a) {
            AbstractC22588e.EnumC22589a enumC22589a = this.f62555e;
            AbstractC22588e.EnumC22589a enumC22589a2 = AbstractC22588e.EnumC22589a.CLEARED;
            z = enumC22589a == enumC22589a2 && this.f62556f == enumC22589a2;
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    /* renamed from: c */
    public boolean mo8071c(AbstractC22587d abstractC22587d) {
        boolean z = false;
        if (abstractC22587d instanceof C22586b) {
            C22586b c22586b = (C22586b) abstractC22587d;
            z = false;
            if (this.f62553c.mo8071c(c22586b.f62553c)) {
                z = false;
                if (this.f62554d.mo8071c(c22586b.f62554d)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    public void clear() {
        synchronized (this.f62551a) {
            AbstractC22588e.EnumC22589a enumC22589a = AbstractC22588e.EnumC22589a.CLEARED;
            this.f62555e = enumC22589a;
            this.f62553c.clear();
            if (this.f62556f != enumC22589a) {
                this.f62556f = enumC22589a;
                this.f62554d.clear();
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22588e
    /* renamed from: d */
    public void mo8079d(AbstractC22587d abstractC22587d) {
        AbstractC22588e.EnumC22589a enumC22589a = AbstractC22588e.EnumC22589a.SUCCESS;
        synchronized (this.f62551a) {
            if (abstractC22587d.equals(this.f62553c)) {
                this.f62555e = enumC22589a;
            } else if (abstractC22587d.equals(this.f62554d)) {
                this.f62556f = enumC22589a;
            }
            AbstractC22588e abstractC22588e = this.f62552b;
            if (abstractC22588e != null) {
                abstractC22588e.mo8079d(this);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22588e
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo8078e(p193e.p1451f.p1452a.p1476r.AbstractC22587d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f62551a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            e.f.a.r.e r0 = r0.f62552b     // Catch: java.lang.Throwable -> L46
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r3
            boolean r0 = r0.mo8078e(r1)     // Catch: java.lang.Throwable -> L46
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
            boolean r0 = r0.m8081j(r1)     // Catch: java.lang.Throwable -> L46
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1476r.C22586b.mo8078e(e.f.a.r.d):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22588e
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo8077f(p193e.p1451f.p1452a.p1476r.AbstractC22587d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f62551a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            e.f.a.r.e r0 = r0.f62552b     // Catch: java.lang.Throwable -> L46
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r3
            boolean r0 = r0.mo8077f(r1)     // Catch: java.lang.Throwable -> L46
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
            boolean r0 = r0.m8081j(r1)     // Catch: java.lang.Throwable -> L46
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1476r.C22586b.mo8077f(e.f.a.r.d):boolean");
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22588e
    /* renamed from: g */
    public void mo8076g(AbstractC22587d abstractC22587d) {
        AbstractC22588e.EnumC22589a enumC22589a = AbstractC22588e.EnumC22589a.FAILED;
        synchronized (this.f62551a) {
            if (abstractC22587d.equals(this.f62554d)) {
                this.f62556f = enumC22589a;
                AbstractC22588e abstractC22588e = this.f62552b;
                if (abstractC22588e != null) {
                    abstractC22588e.mo8076g(this);
                }
                return;
            }
            this.f62555e = enumC22589a;
            AbstractC22588e.EnumC22589a enumC22589a2 = this.f62556f;
            AbstractC22588e.EnumC22589a enumC22589a3 = AbstractC22588e.EnumC22589a.RUNNING;
            if (enumC22589a2 != enumC22589a3) {
                this.f62556f = enumC22589a3;
                this.f62554d.mo8066h();
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    /* renamed from: h */
    public void mo8066h() {
        synchronized (this.f62551a) {
            AbstractC22588e.EnumC22589a enumC22589a = this.f62555e;
            AbstractC22588e.EnumC22589a enumC22589a2 = AbstractC22588e.EnumC22589a.RUNNING;
            if (enumC22589a != enumC22589a2) {
                this.f62555e = enumC22589a2;
                this.f62553c.mo8066h();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22588e
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo8075i(p193e.p1451f.p1452a.p1476r.AbstractC22587d r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.f62551a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            e.f.a.r.e r0 = r0.f62552b     // Catch: java.lang.Throwable -> L46
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L26
            r0 = r6
            r1 = r3
            boolean r0 = r0.mo8075i(r1)     // Catch: java.lang.Throwable -> L46
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
            boolean r0 = r0.m8081j(r1)     // Catch: java.lang.Throwable -> L46
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
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1476r.C22586b.mo8075i(e.f.a.r.d):boolean");
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    public boolean isComplete() {
        boolean z;
        synchronized (this.f62551a) {
            AbstractC22588e.EnumC22589a enumC22589a = this.f62555e;
            AbstractC22588e.EnumC22589a enumC22589a2 = AbstractC22588e.EnumC22589a.SUCCESS;
            if (enumC22589a != enumC22589a2 && this.f62556f != enumC22589a2) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    public boolean isRunning() {
        boolean z;
        synchronized (this.f62551a) {
            AbstractC22588e.EnumC22589a enumC22589a = this.f62555e;
            AbstractC22588e.EnumC22589a enumC22589a2 = AbstractC22588e.EnumC22589a.RUNNING;
            if (enumC22589a != enumC22589a2 && this.f62556f != enumC22589a2) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    /* renamed from: j */
    public final boolean m8081j(AbstractC22587d abstractC22587d) {
        return abstractC22587d.equals(this.f62553c) || (this.f62555e == AbstractC22588e.EnumC22589a.FAILED && abstractC22587d.equals(this.f62554d));
    }

    @Override // p193e.p1451f.p1452a.p1476r.AbstractC22587d
    public void pause() {
        AbstractC22588e.EnumC22589a enumC22589a = AbstractC22588e.EnumC22589a.PAUSED;
        synchronized (this.f62551a) {
            AbstractC22588e.EnumC22589a enumC22589a2 = this.f62555e;
            AbstractC22588e.EnumC22589a enumC22589a3 = AbstractC22588e.EnumC22589a.RUNNING;
            if (enumC22589a2 == enumC22589a3) {
                this.f62555e = enumC22589a;
                this.f62553c.pause();
            }
            if (this.f62556f == enumC22589a3) {
                this.f62556f = enumC22589a;
                this.f62554d.pause();
            }
        }
    }
}
