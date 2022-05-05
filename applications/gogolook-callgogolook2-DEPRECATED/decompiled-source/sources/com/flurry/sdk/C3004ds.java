package com.flurry.sdk;
/* renamed from: com.flurry.sdk.ds */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ds.class */
public final class C3004ds {

    /* renamed from: a */
    public long f4684a = 1000;

    /* renamed from: b */
    public boolean f4685b = true;

    /* renamed from: c */
    public boolean f4686c = false;

    /* renamed from: d */
    public AbstractRunnableC3447lc f4687d = new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ds.1
        @Override // com.flurry.sdk.AbstractRunnableC3447lc
        /* renamed from: a */
        public final void mo32300a() {
            C3345jm.m32636a().m32635a(new C3002dq());
            C3004ds dsVar = C3004ds.this;
            if (dsVar.f4685b && dsVar.f4686c) {
                C3331jb a = C3331jb.m32681a();
                C3004ds dsVar2 = C3004ds.this;
                a.m32677a(dsVar2.f4687d, dsVar2.f4684a);
            }
        }
    };

    /* renamed from: a */
    public final void m33331a() {
        synchronized (this) {
            if (!this.f4686c) {
                C3331jb.m32681a().m32677a(this.f4687d, this.f4684a);
                this.f4686c = true;
            }
        }
    }

    /* renamed from: b */
    public final void m33330b() {
        synchronized (this) {
            if (this.f4686c) {
                C3331jb.m32681a().m32673c(this.f4687d);
                this.f4686c = false;
            }
        }
    }
}
