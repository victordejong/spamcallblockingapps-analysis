package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.p052i.p053a.C1179a;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseBroadcastReceiver.class */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private final long f59121a;

    /* renamed from: b */
    private Context f59122b;

    public BaseBroadcastReceiver(long j) {
        this.f59121a = j;
    }

    public static void broadcastAction(Context context, long j, String str) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(str, "action cannot be null");
        Intent intent = new Intent(str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        C1179a.m43410a(context.getApplicationContext()).m43409a(intent);
    }

    public abstract IntentFilter getIntentFilter();

    public void register(BroadcastReceiver broadcastReceiver, Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f59122b = applicationContext;
        C1179a.m43410a(applicationContext).m43411a(broadcastReceiver, getIntentFilter());
    }

    public boolean shouldConsumeBroadcast(Intent intent) {
        Preconditions.checkNotNull(intent, "intent cannot be null");
        return this.f59121a == intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }

    public void unregister(BroadcastReceiver broadcastReceiver) {
        Context context = this.f59122b;
        if (context == null || broadcastReceiver == null) {
            return;
        }
        C1179a.m43410a(context).m43412a(broadcastReceiver);
        this.f59122b = null;
    }
}
