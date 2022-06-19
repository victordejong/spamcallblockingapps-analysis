package com.truecaller.messaging.transport.mms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p195a.p244k.AbstractC6707s;
import p193e.p194a.p195a.p244k.AbstractC6708t;
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/mms/MmsStatusReceiver.class */
public class MmsStatusReceiver extends BroadcastReceiver {

    /* renamed from: b */
    public static final /* synthetic */ int f13779b = 0;
    @Inject

    /* renamed from: a */
    public a<AbstractC6708t> f13780a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str = "MMS status changed: " + intent;
        if (intent == null) {
            return;
        }
        ((AbstractC6707s) context.getApplicationContext()).mo30565r().mo11148b(this);
        ((AbstractC6708t) this.f13780a.get()).mo30564A(1, intent, getResultCode());
    }
}
