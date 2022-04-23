package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.i.a.a;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/BaseBroadcastReceiver.class */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final long f34043a;

    /* renamed from: b  reason: collision with root package name */
    private Context f34044b;

    public BaseBroadcastReceiver(long j) {
        this.f34043a = j;
    }

    public static void broadcastAction(Context context, long j, String str) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(str, "action cannot be null");
        Intent intent = new Intent(str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        a.a(context.getApplicationContext()).a(intent);
    }

    public abstract IntentFilter getIntentFilter();

    public void register(BroadcastReceiver broadcastReceiver, Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f34044b = applicationContext;
        a.a(applicationContext).a(broadcastReceiver, getIntentFilter());
    }

    public boolean shouldConsumeBroadcast(Intent intent) {
        Preconditions.checkNotNull(intent, "intent cannot be null");
        return this.f34043a == intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }

    public void unregister(BroadcastReceiver broadcastReceiver) {
        Context context = this.f34044b;
        if (context != null && broadcastReceiver != null) {
            a.a(context).a(broadcastReceiver);
            this.f34044b = null;
        }
    }
}
