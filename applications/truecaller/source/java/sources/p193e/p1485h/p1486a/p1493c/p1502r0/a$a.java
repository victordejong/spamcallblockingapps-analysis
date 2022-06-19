package p193e.p1485h.p1486a.p1493c.p1502r0;

import android.os.Bundle;
import n3.r.a.l;
/* renamed from: e.h.a.c.r0.a$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/r0/a$a.class */
public class a$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ i f63259a;

    /* renamed from: b */
    public final /* synthetic */ i f63260b;

    /* renamed from: c */
    public final /* synthetic */ int f63261c;

    /* renamed from: d */
    public final /* synthetic */ a f63262d;

    /* renamed from: e.h.a.c.r0.a$a$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/r0/a$a$a.class */
    public class RunnableC22811a implements Runnable {
        public RunnableC22811a() {
            a$a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            a$a a_a;
            i iVar;
            if (a$a.this.f63262d.o.getVisibility() == 0 && (iVar = (a_a = a$a.this).f63260b) != null) {
                iVar.PA((Bundle) null, a_a.f63261c);
            }
            a$a.this.f63262d.o.setVisibility(8);
        }
    }

    public a$a(a aVar, i iVar, i iVar2, int i) {
        this.f63262d = aVar;
        this.f63259a = iVar;
        this.f63260b = iVar2;
        this.f63261c = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        l activity = this.f63259a.getActivity();
        if (activity == null) {
            return;
        }
        activity.runOnUiThread(new RunnableC22811a());
    }
}
