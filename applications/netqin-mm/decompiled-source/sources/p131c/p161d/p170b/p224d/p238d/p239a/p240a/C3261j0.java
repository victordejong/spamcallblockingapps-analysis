package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.app.Dialog;
import com.google.android.gms.common.api.internal.zabk;
/* renamed from: c.d.b.d.d.a.a.j0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/j0.class */
public final class C3261j0 extends zabk {

    /* renamed from: a */
    public final /* synthetic */ Dialog f11955a;

    /* renamed from: b */
    public final /* synthetic */ RunnableC3263k0 f11956b;

    public C3261j0(RunnableC3263k0 k0Var, Dialog dialog) {
        this.f11956b = k0Var;
        this.f11955a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.zabk
    /* renamed from: a */
    public final void mo17522a() {
        this.f11956b.f11960b.m17469g();
        if (this.f11955a.isShowing()) {
            this.f11955a.dismiss();
        }
    }
}
