package org.mistergroup.shouldianswer.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/receivers/BootCompleteReceiver.class */
public final class BootCompleteReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(intent, "intent");
        C3104j.m157a(C3104j.f9124a, "BROADCAST: BootCompleteReceiver", (String) null, 2, (Object) null);
    }
}
