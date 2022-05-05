package p459j.p460a.p582w0.p590x4;

import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.gson.CInfo;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14236d;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.x4.j */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/j.class */
public final class C14281j {
    static {
        new C14281j();
    }

    /* renamed from: a */
    public static final void m1924a(boolean z, CallStats.Call call) {
        int i;
        C15149k.m377b(call, NotificationCompat.CATEGORY_CALL);
        CInfo d = call.m28503d(C14108o4.m2474l(call.m28486q()));
        C14236d dVar = new C14236d("whoscall_callend");
        C14231a aVar = new C14231a();
        aVar.m2100a("ced_view", Integer.valueOf(z ? 1 : CallUtils.m26526r() ? 2 : 0));
        aVar.m2100a("call_type", Integer.valueOf(call.m28529B() ? 2 : 1));
        aVar.m2100a("duration", Integer.valueOf((int) (call.m28505d() / 1000)));
        if (C15149k.m384a((Object) (d != null ? d.name_type : null), (Object) RowInfo.Primary.Type.SPOOF.name())) {
            i = 2;
        } else {
            i = 0;
            if (d != null) {
                i = 0;
                if (d.has_spoof) {
                    i = 1;
                }
            }
        }
        aVar.m2100a("spoof_db", Integer.valueOf(i));
        dVar.mo2087a(aVar);
    }
}
