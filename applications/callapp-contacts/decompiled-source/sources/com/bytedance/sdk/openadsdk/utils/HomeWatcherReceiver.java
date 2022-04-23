package com.bytedance.sdk.openadsdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver.class */
public class HomeWatcherReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private a f10264a;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a.class */
    public interface a {
        void H();

        void I();
    }

    public void a(a aVar) {
        this.f10264a = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && "android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("reason");
            if ("homekey".equals(stringExtra)) {
                a aVar = this.f10264a;
                if (aVar != null) {
                    aVar.H();
                }
            } else if ("recentapps".equals(stringExtra)) {
                a aVar2 = this.f10264a;
                if (aVar2 != null) {
                    aVar2.I();
                }
            } else {
                "assist".equals(stringExtra);
            }
        }
    }
}
