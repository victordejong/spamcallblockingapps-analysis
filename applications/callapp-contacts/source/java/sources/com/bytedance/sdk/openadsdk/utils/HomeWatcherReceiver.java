package com.bytedance.sdk.openadsdk.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver.class */
public class HomeWatcherReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private AbstractC5431a f18963a;

    /* renamed from: com.bytedance.sdk.openadsdk.utils.HomeWatcherReceiver$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a.class */
    public interface AbstractC5431a {
        /* renamed from: H */
        void mo32338H();

        /* renamed from: I */
        void mo32337I();
    }

    /* renamed from: a */
    public void m32339a(AbstractC5431a abstractC5431a) {
        this.f18963a = abstractC5431a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && "android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("reason");
            if ("homekey".equals(stringExtra)) {
                AbstractC5431a abstractC5431a = this.f18963a;
                if (abstractC5431a == null) {
                    return;
                }
                abstractC5431a.mo32338H();
            } else if (!"recentapps".equals(stringExtra)) {
                "assist".equals(stringExtra);
            } else {
                AbstractC5431a abstractC5431a2 = this.f18963a;
                if (abstractC5431a2 == null) {
                    return;
                }
                abstractC5431a2.mo32337I();
            }
        }
    }
}
