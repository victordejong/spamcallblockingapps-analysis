package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzfu;
import com.google.android.gms.measurement.internal.zzkl;
/* renamed from: c.d.b.d.i.a.q7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/q7.class */
public final class C4795q7 implements AbstractC4840v7 {

    /* renamed from: a */
    public final /* synthetic */ zzkl f17355a;

    public C4795q7(zzkl zzklVar) {
        this.f17355a = zzklVar;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4840v7
    /* renamed from: a */
    public final void mo24872a(String str, Bundle bundle) {
        zzfu zzfuVar;
        if (TextUtils.isEmpty(str)) {
            zzfuVar = this.f17355a.f30119j;
            zzfuVar.mo8789p().m9152q().m9143a("AppId not known when logging error event");
            return;
        }
        this.f17355a.mo8795j().m9093a(new RunnableC4813s7(this, str, bundle));
    }
}
