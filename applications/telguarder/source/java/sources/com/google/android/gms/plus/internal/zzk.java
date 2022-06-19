package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/internal/zzk.class */
final class zzk extends zza {
    private final BaseImplementation.ResultHolder<Status> zzv;

    public zzk(BaseImplementation.ResultHolder<Status> resultHolder) {
        this.zzv = resultHolder;
    }

    @Override // com.google.android.gms.plus.internal.zza, com.google.android.gms.plus.internal.zzb
    public final void zza(int i, Bundle bundle) {
        this.zzv.setResult(new Status(i, (String) null, bundle != null ? (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT) : null));
    }
}
