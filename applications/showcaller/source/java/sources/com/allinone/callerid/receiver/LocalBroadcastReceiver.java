package com.allinone.callerid.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/LocalBroadcastReceiver.class */
public class LocalBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    AbstractC3574a f11468a;

    /* renamed from: com.allinone.callerid.receiver.LocalBroadcastReceiver$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/receiver/LocalBroadcastReceiver$a.class */
    public interface AbstractC3574a {
        /* renamed from: a */
        void mo24962a(Intent intent);
    }

    public LocalBroadcastReceiver() {
    }

    public LocalBroadcastReceiver(AbstractC3574a abstractC3574a) {
        this.f11468a = abstractC3574a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC3574a abstractC3574a = this.f11468a;
        if (abstractC3574a != null) {
            abstractC3574a.mo24962a(intent);
        }
    }
}
