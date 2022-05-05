package gogolook.callgogolook2.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import p459j.p460a.p582w0.C14016g3;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/receiver/ReferrerReceiver.class */
public class ReferrerReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(Payload.REFERRER);
        if (!TextUtils.isEmpty(stringExtra)) {
            C14016g3.m2836a(context, stringExtra);
        }
    }
}
