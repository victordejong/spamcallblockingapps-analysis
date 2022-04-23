package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseBroadcastReceiver.class */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public final long f8423a;
    @Nullable

    /* renamed from: b */
    public Context f8424b;

    public BaseBroadcastReceiver(long j) {
        this.f8423a = j;
    }

    public static void broadcastAction(@NonNull Context context, long j, @NonNull String str) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(str, "action cannot be null");
        Intent intent = new Intent(str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(intent);
    }

    @NonNull
    public abstract IntentFilter getIntentFilter();

    public void register(@NonNull BroadcastReceiver broadcastReceiver, Context context) {
        this.f8424b = context;
        LocalBroadcastManager.getInstance(this.f8424b).registerReceiver(broadcastReceiver, getIntentFilter());
    }

    public boolean shouldConsumeBroadcast(@NonNull Intent intent) {
        Preconditions.checkNotNull(intent, "intent cannot be null");
        return this.f8423a == intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }

    public void unregister(@Nullable BroadcastReceiver broadcastReceiver) {
        Context context = this.f8424b;
        if (context != null && broadcastReceiver != null) {
            LocalBroadcastManager.getInstance(context).unregisterReceiver(broadcastReceiver);
            this.f8424b = null;
        }
    }
}
