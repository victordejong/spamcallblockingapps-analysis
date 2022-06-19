package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseBroadcastReceiver.class */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public final long f4637a;

    /* renamed from: b */
    public Context f4638b;

    public BaseBroadcastReceiver(long j) {
        this.f4637a = j;
    }

    public static void broadcastAction(Context context, long j, String str) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(str, "action cannot be null");
        Intent intent = new Intent(str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        nf.b(context.getApplicationContext()).d(intent);
    }

    public abstract IntentFilter getIntentFilter();

    public void register(BroadcastReceiver broadcastReceiver, Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f4638b = applicationContext;
        nf.b(applicationContext).c(broadcastReceiver, getIntentFilter());
    }

    public boolean shouldConsumeBroadcast(Intent intent) {
        Preconditions.checkNotNull(intent, "intent cannot be null");
        return this.f4637a == intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }

    public void unregister(BroadcastReceiver broadcastReceiver) {
        Context context = this.f4638b;
        if (context == null || broadcastReceiver == null) {
            return;
        }
        nf.b(context).e(broadcastReceiver);
        this.f4638b = null;
    }
}
