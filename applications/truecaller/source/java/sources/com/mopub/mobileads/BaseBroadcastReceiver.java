package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import p1727n3.p1872x.p1873a.C27062a;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/BaseBroadcastReceiver.class */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public final long f8778a;

    /* renamed from: b */
    public Context f8779b;

    public BaseBroadcastReceiver(long j) {
        this.f8778a = j;
    }

    public static void broadcastAction(Context context, long j, String str) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(str, "action cannot be null");
        Intent intent = new Intent(str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        C27062a.m968b(context.getApplicationContext()).m966d(intent);
    }

    public abstract IntentFilter getIntentFilter();

    public void register(BroadcastReceiver broadcastReceiver, Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f8779b = applicationContext;
        C27062a.m968b(applicationContext).m967c(broadcastReceiver, getIntentFilter());
    }

    public boolean shouldConsumeBroadcast(Intent intent) {
        Preconditions.checkNotNull(intent, "intent cannot be null");
        return this.f8778a == intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }

    public void unregister(BroadcastReceiver broadcastReceiver) {
        Context context = this.f8779b;
        if (context == null || broadcastReceiver == null) {
            return;
        }
        C27062a.m968b(context).m965e(broadcastReceiver);
        this.f8779b = null;
    }
}
