package p193e.p1485h.p1486a.p1493c.p1502r0;

import android.os.Bundle;
import n3.r.a.l;
/* renamed from: e.h.a.c.r0.d$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/d$a.class */
public class d$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f63286a;

    /* renamed from: b */
    public final /* synthetic */ d f63287b;

    /* renamed from: e.h.a.c.r0.d$a$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/r0/d$a$a.class */
    public class RunnableC22815a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ i f63288a;

        public RunnableC22815a(i iVar) {
            d$a.this = r4;
            this.f63288a = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d$a.this.f63287b.t.getVisibility() == 0) {
                this.f63288a.PA((Bundle) null, d$a.this.f63286a);
            }
            d$a.this.f63287b.t.setVisibility(8);
        }
    }

    public d$a(d dVar, int i) {
        this.f63287b = dVar;
        this.f63286a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        l activity;
        i m7743Q4 = this.f63287b.m7743Q4();
        if (m7743Q4 == null || (activity = m7743Q4.getActivity()) == null) {
            return;
        }
        activity.runOnUiThread(new RunnableC22815a(m7743Q4));
    }
}
