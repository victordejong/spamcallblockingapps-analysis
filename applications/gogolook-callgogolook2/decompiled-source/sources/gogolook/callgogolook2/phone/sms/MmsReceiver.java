package gogolook.callgogolook2.phone.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.media2.exoplayer.external.audio.SilenceSkippingAudioProcessor;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.messaging.datamodel.action.SyncMessagesAction;
import p065f.p066a.p068b.p069a.p070r.C4272f;
import p065f.p066a.p068b.p069a.p070r.C4276j;
import p065f.p066a.p068b.p069a.p070r.C4281o;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p530k.AsyncTaskC12836f;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p594z4.C14356f;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/sms/MmsReceiver.class */
public class MmsReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static boolean f12371a = false;

    /* renamed from: a */
    public final void m26512a(Context context, Intent intent) {
        try {
            C4272f a = new C4281o(intent.getByteArrayExtra("data"), true).m29131a();
            if (a != null) {
                if (a.m29153a() == 130) {
                    if (C12810o.m5234k()) {
                        C4276j jVar = (C4276j) a;
                        String str = null;
                        String e = jVar.m29149d() == null ? null : jVar.m29149d().m29155e();
                        if (jVar.m29147f() != null) {
                            str = jVar.m29147f().m29155e();
                        }
                        C12942i b = C12928g.m5000a().m4982b(context, e, str, 2);
                        if (b.m4960d()) {
                            b.m4966a(CallStats.BlockResult.SUCCESS);
                            C14217x3.m2181a(new AsyncTaskC12836f(context, 1, jVar, b));
                            C12810o.m5240e();
                        }
                    }
                    C12810o.m5242d();
                    C14356f.m1485a(4);
                    if (!C12810o.m5232m()) {
                        SyncMessagesAction.m27654z();
                    }
                }
                C14217x3.m2190a(context, (long) SilenceSkippingAudioProcessor.PADDING_SILENCE_US);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z = context instanceof MyApplication;
        if (z || !f12371a) {
            if (z) {
                f12371a = true;
            }
            if (C12810o.m5233l()) {
                m26512a(context, intent);
            }
        }
    }
}
