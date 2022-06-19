package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzau.class */
final class zzau extends BroadcastReceiver {
    @Nullable
    private zzav zza;

    public zzau(zzav zzavVar) {
        this.zza = zzavVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        zzav zzavVar = this.zza;
        if (zzavVar != null && zzavVar.zzb()) {
            if (FirebaseInstanceId.zzd()) {
                Log.d("FirebaseInstanceId", "Connectivity changed. Starting background sync.");
            }
            FirebaseInstanceId.zza(this.zza, 0L);
            this.zza.zza().unregisterReceiver(this);
            this.zza = null;
        }
    }

    public final void zza() {
        if (FirebaseInstanceId.zzd()) {
            Log.d("FirebaseInstanceId", "Connectivity change received registered");
        }
        this.zza.zza().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
}
