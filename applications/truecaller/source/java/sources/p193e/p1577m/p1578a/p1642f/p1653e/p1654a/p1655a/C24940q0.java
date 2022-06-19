package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.app.Dialog;
import com.google.android.gms.common.api.internal.zabq;
/* renamed from: e.m.a.f.e.a.a.q0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/q0.class */
public final class C24940q0 extends zabq {

    /* renamed from: a */
    public final /* synthetic */ Dialog f69865a;

    /* renamed from: b */
    public final /* synthetic */ RunnableC24942r0 f69866b;

    public C24940q0(RunnableC24942r0 runnableC24942r0, Dialog dialog) {
        this.f69866b = runnableC24942r0;
        this.f69865a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.zabq
    /* renamed from: a */
    public final void mo4281a() {
        this.f69866b.f69869b.m38930k();
        if (this.f69865a.isShowing()) {
            this.f69865a.dismiss();
        }
    }
}
