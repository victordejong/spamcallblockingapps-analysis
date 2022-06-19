package com.freshchat.consumer.sdk.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import p1727n3.p1872x.p1873a.C27062a;
/* renamed from: com.freshchat.consumer.sdk.activity.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/b.class */
public abstract class AbstractC1419b extends C1392a {

    /* renamed from: bs */
    private C27062a f3933bs;

    /* renamed from: bt */
    private BroadcastReceiver f3934bt = new BroadcastReceiver() { // from class: com.freshchat.consumer.sdk.activity.b.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!"com.freshchat.consumer.sdk.actions.KillCurrentUserSession".equals(intent.getAction())) {
                if ("com.freshchat.consumer.sdk.actions.TokenWaitTimeout".equals(intent.getAction())) {
                    AbstractC1419b.this.m41104al();
                    return;
                } else if ("com.freshchat.consumer.sdk.actions.DismissFreshchatScreens".equals(intent.getAction())) {
                    AbstractC1419b.this.m41098gs();
                    return;
                } else if (!"com.freshchat.consumer.sdk.actions.FAQApiVersionChanged".equals(intent.getAction())) {
                    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) && C1618al.m40261aS(context)) {
                        C1594aa.m40345c(context, true);
                    }
                    AbstractC1419b.this.mo41077a(context, intent);
                    return;
                } else if (!AbstractC1419b.this.m41102bM()) {
                    return;
                }
            }
            AbstractC1419b.this.finish();
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: D */
    public C27062a m41079D() {
        if (this.f3933bs == null) {
            this.f3933bs = C27062a.m968b(getApplicationContext());
        }
        return this.f3933bs;
    }

    /* renamed from: a */
    public abstract void mo41077a(Context context, Intent intent);

    /* renamed from: a */
    public abstract String[] mo41078a();

    public void attachBaseContext(Context context) {
        AbstractC1419b.super.attachBaseContext(C1612ah.m40291bU(context));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void finish() {
        AbstractC1419b.super.finish();
    }

    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onBackPressed() {
        super.onBackPressed();
    }

    public void onPause() {
        AbstractC1419b.super.onPause();
        if (mo41078a().length > 0) {
            m41079D().m965e(this.f3934bt);
        }
        getContext().unregisterReceiver(this.f3934bt);
    }

    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onResume() {
        super.onResume();
        C1649bg.m40085bL(getContext());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.freshchat.consumer.sdk.actions.KillCurrentUserSession");
        intentFilter.addAction("com.freshchat.consumer.sdk.actions.DismissFreshchatScreens");
        for (String str : mo41078a()) {
            intentFilter.addAction(str);
        }
        if (mo41078a().length > 0) {
            m41079D().m967c(this.f3934bt, intentFilter);
        }
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        getContext().registerReceiver(this.f3934bt, intentFilter2);
    }
}
