package gogolook.callgogolook2.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14316y0;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/receiver/PowerStatusReceiver.class */
public class PowerStatusReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && C14217x3.m2107z()) {
            C14037j3.m2731a().mo2704a(new C14316y0(intent.getAction()));
        }
    }
}
