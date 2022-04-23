package p081h.p203i.p325c.p379z.p381c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.firebase-perf.zzr;
import com.google.firebase.perf.metrics.Trace;
import java.util.List;
import p081h.p203i.p204a.p224e.p259j.p269j.C7823h6;
/* renamed from: h.i.c.z.c.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/c/b.class */
public final class C10065b extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ Trace f22760a;

    public C10065b(Trace trace) {
        this.f22760a = trace;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        List list;
        if (this.f22760a.m31042r() && !this.f22760a.m31041s()) {
            zzr q = C7823h6.m19351r().m19352q();
            list = this.f22760a.f7790g;
            list.add(q);
        }
    }
}
