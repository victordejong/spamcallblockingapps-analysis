package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.C7001l;
import p081h.p203i.p204a.p224e.p290p.AbstractC9123f;
/* renamed from: h.i.a.e.d.k.q.e0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/e0.class */
public final class C6862e0 extends AbstractRunnableC6894l0 {

    /* renamed from: b */
    public final Map<C6805a.AbstractC6816f, C6855d0> f16823b;

    /* renamed from: c */
    public final /* synthetic */ C6847b0 f16824c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6862e0(C6847b0 b0Var, Map<C6805a.AbstractC6816f, C6855d0> map) {
        super(b0Var, null);
        this.f16824c = b0Var;
        this.f16823b = map;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractRunnableC6894l0
    @GuardedBy("mLock")
    @WorkerThread
    /* renamed from: a */
    public final void mo21655a() {
        C6793d dVar;
        boolean z;
        Context context;
        C6938w0 w0Var;
        AbstractC9123f fVar;
        AbstractC9123f fVar2;
        C6938w0 w0Var2;
        Context context2;
        Context context3;
        boolean z2;
        dVar = this.f16824c.f16752d;
        C7001l lVar = new C7001l(dVar);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (C6805a.AbstractC6816f fVar3 : this.f16823b.keySet()) {
            if (fVar3.m21852d()) {
                z2 = this.f16823b.get(fVar3).f16781c;
                if (!z2) {
                    arrayList.add(fVar3);
                }
            }
            arrayList2.add(fVar3);
        }
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        if (arrayList.isEmpty()) {
            int size = arrayList2.size();
            while (true) {
                if (i3 >= size) {
                    break;
                }
                Object obj = arrayList2.get(i3);
                i3++;
                context3 = this.f16824c.f16751c;
                int a = lVar.m21331a(context3, (C6805a.AbstractC6816f) obj);
                i = a;
                if (a == 0) {
                    i = a;
                    break;
                }
            }
        } else {
            int size2 = arrayList.size();
            while (true) {
                if (i2 >= size2) {
                    break;
                }
                Object obj2 = arrayList.get(i2);
                i2++;
                context2 = this.f16824c.f16751c;
                int a2 = lVar.m21331a(context2, (C6805a.AbstractC6816f) obj2);
                i = a2;
                if (a2 != 0) {
                    i = a2;
                    break;
                }
            }
        }
        if (i != 0) {
            ConnectionResult connectionResult = new ConnectionResult(i, null);
            w0Var2 = this.f16824c.f16749a;
            w0Var2.m21513a(new C6866f0(this, this.f16824c, connectionResult));
            return;
        }
        z = this.f16824c.f16761m;
        if (z) {
            fVar = this.f16824c.f16759k;
            if (fVar != null) {
                fVar2 = this.f16824c.f16759k;
                fVar2.connect();
            }
        }
        for (C6805a.AbstractC6816f fVar4 : this.f16823b.keySet()) {
            C6855d0 d0Var = this.f16823b.get(fVar4);
            if (fVar4.m21852d()) {
                context = this.f16824c.f16751c;
                if (lVar.m21331a(context, fVar4) != 0) {
                    w0Var = this.f16824c.f16749a;
                    w0Var.m21513a(new C6871g0(this, this.f16824c, d0Var));
                }
            }
            fVar4.m21858a(d0Var);
        }
    }
}
