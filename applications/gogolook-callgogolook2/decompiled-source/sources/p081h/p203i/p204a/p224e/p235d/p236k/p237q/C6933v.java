package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.app.Activity;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.q.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/v.class */
public class C6933v extends AbstractDialogInterface$OnCancelListenerC6877h2 {

    /* renamed from: f */
    public final ArraySet<C6864e2<?>> f16992f = new ArraySet<>();

    /* renamed from: g */
    public C6858e f16993g;

    public C6933v(AbstractC6874h hVar) {
        super(hVar);
        this.f6535a.mo21475a("ConnectionlessLifecycleHelper", this);
    }

    /* renamed from: a */
    public static void m21528a(Activity activity, C6858e eVar, C6864e2<?> e2Var) {
        AbstractC6874h a = LifecycleCallback.m31971a(activity);
        C6933v vVar = (C6933v) a.mo21474a("ConnectionlessLifecycleHelper", C6933v.class);
        C6933v vVar2 = vVar;
        if (vVar == null) {
            vVar2 = new C6933v(a);
        }
        vVar2.f16993g = eVar;
        C7021t.m21289a(e2Var, "ApiKey cannot be null");
        vVar2.f16992f.add(e2Var);
        eVar.m21756a(vVar2);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractDialogInterface$OnCancelListenerC6877h2
    /* renamed from: a */
    public final void mo21527a(ConnectionResult connectionResult, int i) {
        this.f16993g.m21762a(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: c */
    public void mo21526c() {
        super.mo21526c();
        m21522i();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractDialogInterface$OnCancelListenerC6877h2, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public void mo21525d() {
        super.mo21525d();
        m21522i();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractDialogInterface$OnCancelListenerC6877h2, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    public void mo16034e() {
        super.mo16034e();
        this.f16993g.m21750b(this);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractDialogInterface$OnCancelListenerC6877h2
    /* renamed from: f */
    public final void mo21524f() {
        this.f16993g.m21749c();
    }

    /* renamed from: h */
    public final ArraySet<C6864e2<?>> m21523h() {
        return this.f16992f;
    }

    /* renamed from: i */
    public final void m21522i() {
        if (!this.f16992f.isEmpty()) {
            this.f16993g.m21756a(this);
        }
    }
}
