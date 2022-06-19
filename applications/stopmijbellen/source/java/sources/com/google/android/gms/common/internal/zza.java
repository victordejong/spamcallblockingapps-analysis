package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zza.class */
abstract class zza extends zzc<Boolean> {
    public final int zza;
    public final Bundle zzb;
    public final /* synthetic */ BaseGmsClient zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zza(BaseGmsClient baseGmsClient, int i, Bundle bundle) {
        super(baseGmsClient, Boolean.TRUE);
        this.zzc = baseGmsClient;
        this.zza = i;
        this.zzb = bundle;
    }

    @Override // com.google.android.gms.common.internal.zzc
    public final /* bridge */ /* synthetic */ void zza(Boolean bool) {
        PendingIntent pendingIntent = null;
        if (this.zza == 0) {
            if (zzd()) {
                return;
            }
            this.zzc.zzp(1, null);
            zzb(new ConnectionResult(8, null));
            return;
        }
        this.zzc.zzp(1, null);
        Bundle bundle = this.zzb;
        if (bundle != null) {
            pendingIntent = (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT);
        }
        zzb(new ConnectionResult(this.zza, pendingIntent));
    }

    public abstract void zzb(ConnectionResult connectionResult);

    @Override // com.google.android.gms.common.internal.zzc
    public final void zzc() {
    }

    public abstract boolean zzd();
}
