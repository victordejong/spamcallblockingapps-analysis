package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zza.class */
abstract class zza extends zzc<Boolean> {
    public final int zza;
    public final Bundle zzb;
    final /* synthetic */ BaseGmsClient zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zza(BaseGmsClient baseGmsClient, int i, Bundle bundle) {
        super(baseGmsClient, true);
        this.zzc = baseGmsClient;
        this.zza = i;
        this.zzb = bundle;
    }

    protected abstract boolean zza();

    protected abstract void zzb(ConnectionResult connectionResult);

    @Override // com.google.android.gms.common.internal.zzc
    public final void zzc() {
    }

    @Override // com.google.android.gms.common.internal.zzc
    protected final /* bridge */ /* synthetic */ void zzd(Boolean bool) {
        ConnectionResult connectionResult;
        PendingIntent pendingIntent = null;
        if (this.zza != 0) {
            this.zzc.zzp(1, null);
            Bundle bundle = this.zzb;
            if (bundle != null) {
                pendingIntent = (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT);
            }
            connectionResult = new ConnectionResult(this.zza, pendingIntent);
        } else if (zza()) {
            return;
        } else {
            this.zzc.zzp(1, null);
            connectionResult = new ConnectionResult(8, null);
        }
        zzb(connectionResult);
    }
}
