package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
/* renamed from: h.i.a.e.d.k.q.g1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/g1.class */
public final class RunnableC6872g1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ConnectionResult f16845a;

    /* renamed from: b */
    public final /* synthetic */ C6858e.C6861c f16846b;

    public RunnableC6872g1(C6858e.C6861c cVar, ConnectionResult connectionResult) {
        this.f16846b = cVar;
        this.f16845a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C6864e2 e2Var;
        C6805a.AbstractC6816f fVar;
        C6864e2 e2Var2;
        C6805a.AbstractC6816f fVar2;
        if (this.f16845a.m32001K()) {
            this.f16846b.f16821e = true;
            fVar = this.f16846b.f16817a;
            if (fVar.mo16072e()) {
                this.f16846b.m21698a();
                return;
            }
            try {
                fVar2 = this.f16846b.f16817a;
                fVar2.m21856a(null, Collections.emptySet());
            } catch (SecurityException e) {
                Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
                Map map = C6858e.this.f16797i;
                e2Var2 = this.f16846b.f16818b;
                ((C6858e.C6859a) map.get(e2Var2)).mo21591a(new ConnectionResult(10));
            }
        } else {
            Map map2 = C6858e.this.f16797i;
            e2Var = this.f16846b.f16818b;
            ((C6858e.C6859a) map2.get(e2Var)).mo21591a(this.f16845a);
        }
    }
}
