package p193e.p1485h.p1486a.p1493c.p1502r0;

import android.os.Bundle;
import n3.r.a.l;
/* renamed from: e.h.a.c.r0.n$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/n$a.class */
public class n$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f63344a;

    /* renamed from: b */
    public final /* synthetic */ n f63345b;

    /* renamed from: e.h.a.c.r0.n$a$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/r0/n$a$a.class */
    public class RunnableC22826a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ i f63346a;

        public RunnableC22826a(i iVar) {
            n$a.this = r4;
            this.f63346a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (n$a.this.f63345b.s.getVisibility() == 0) {
                this.f63346a.PA((Bundle) null, n$a.this.f63344a);
            }
            n$a.this.f63345b.s.setVisibility(8);
        }
    }

    public n$a(n nVar, int i) {
        this.f63345b = nVar;
        this.f63344a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        l activity;
        i m7743Q4 = this.f63345b.m7743Q4();
        if (m7743Q4 == null || (activity = m7743Q4.getActivity()) == null) {
            return;
        }
        activity.runOnUiThread(new RunnableC22826a(m7743Q4));
    }
}
