package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Set;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m;
/* renamed from: h.i.a.e.d.k.q.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/h0.class */
public final class C6875h0 extends AbstractRunnableC6894l0 {

    /* renamed from: b */
    public final ArrayList<C6805a.AbstractC6816f> f16852b;

    /* renamed from: c */
    public final /* synthetic */ C6847b0 f16853c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6875h0(C6847b0 b0Var, ArrayList<C6805a.AbstractC6816f> arrayList) {
        super(b0Var, null);
        this.f16853c = b0Var;
        this.f16852b = arrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractRunnableC6894l0
    @WorkerThread
    /* renamed from: a */
    public final void mo21655a() {
        C6938w0 w0Var;
        Set<Scope> g;
        AbstractC7003m mVar;
        C6938w0 w0Var2;
        w0Var = this.f16853c.f16749a;
        C6902n0 n0Var = w0Var.f17010n;
        g = this.f16853c.m21780g();
        n0Var.f16901q = g;
        ArrayList<C6805a.AbstractC6816f> arrayList = this.f16852b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            C6805a.AbstractC6816f fVar = arrayList.get(i);
            i++;
            mVar = this.f16853c.f16763o;
            w0Var2 = this.f16853c.f16749a;
            fVar.m21856a(mVar, w0Var2.f17010n.f16901q);
        }
    }
}
