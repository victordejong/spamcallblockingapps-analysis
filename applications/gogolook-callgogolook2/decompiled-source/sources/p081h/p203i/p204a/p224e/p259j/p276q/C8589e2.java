package p081h.p203i.p204a.p224e.p259j.p276q;

import android.content.Context;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6905o;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.p358p.C9835b;
/* renamed from: h.i.a.e.j.q.e2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/e2.class */
public final class C8589e2 extends AbstractC6905o<C8548a2, C9835b> {

    /* renamed from: c */
    public final Context f19666c;

    /* renamed from: d */
    public final String f19667d;

    public C8589e2(Context context, String str) {
        this.f19666c = context;
        this.f19667d = str;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6905o
    /* renamed from: a */
    public final /* synthetic */ void mo17695a(C8548a2 a2Var, C9145i<C9835b> iVar) throws RemoteException {
        C8548a2 a2Var2 = a2Var;
        try {
            ((AbstractC8620h2) a2Var2.m21414u()).mo17550a(new BinderC8580d2(this.f19666c, iVar), this.f19667d);
        } catch (RemoteException e) {
        }
    }
}
