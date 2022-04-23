package com.callerid.block.fragment;

import com.callerid.block.sms.C1141b;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$f.class */
class b$f implements Runnable {

    /* renamed from: b */
    final /* synthetic */ b f4377b;

    /* renamed from: com.callerid.block.fragment.b$f$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/b$f$a.class */
    class RunnableC0957a implements Runnable {
        RunnableC0957a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.L1(b$f.this.f4377b);
        }
    }

    b$f(b bVar) {
        this.f4377b = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        b.W1(this.f4377b, new C1141b(b.F1(this.f4377b)));
        b bVar = this.f4377b;
        b.I1(bVar, b.V1(bVar).m9961b());
        b.J1(this.f4377b, true);
        if (b.K1(this.f4377b) && b.Q1(this.f4377b) != null) {
            b.Q1(this.f4377b).runOnUiThread(new RunnableC0957a());
        }
    }
}
