package p193e.p194a.p1002k4.p1004o;

import com.google.android.gms.tasks.OnFailureListener;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.n;
import s1.z.c.l;
/* renamed from: e.a.k4.o.d */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/d.class */
public final class C16535d implements OnFailureListener {

    /* renamed from: a */
    public final /* synthetic */ n f46468a;

    public C16535d(n nVar) {
        this.f46468a = nVar;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        l.e(exc, "exception");
        this.f46468a.c(C25225a.m3935a0(exc));
    }
}
