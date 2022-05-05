package p081h.p203i.p204a.p224e.p259j.p269j;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.firebase-perf.zzr;
import java.util.List;
/* renamed from: h.i.a.e.j.j.a2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/a2.class */
public final class C7760a2 extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ C7759a1 f18176a;

    public C7760a2(C7759a1 a1Var) {
        this.f18176a = a1Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        List list;
        if (this.f18176a.m19566q() && !this.f18176a.m19565r()) {
            zzr q = C7823h6.m19351r().m19352q();
            list = this.f18176a.f18174u;
            list.add(q);
        }
    }
}
