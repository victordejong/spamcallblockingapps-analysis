package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.Nullable;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzaz.class */
final class zzaz extends BroadcastReceiver {
    @Nullable
    private zzay zzdk;

    public zzaz(zzay zzayVar) {
        this.zzdk = zzayVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.zzdk != null && this.zzdk.zzao()) {
            if (FirebaseInstanceId.zzl()) {
                Log.d("FirebaseInstanceId", "Connectivity changed. Starting background sync.");
            }
            FirebaseInstanceId.zza(this.zzdk, 0L);
            this.zzdk.getContext().unregisterReceiver(this);
            this.zzdk = null;
        }
    }

    public final void zzap() {
        if (FirebaseInstanceId.zzl()) {
            Log.d("FirebaseInstanceId", "Connectivity change received registered");
        }
        this.zzdk.getContext().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
}
