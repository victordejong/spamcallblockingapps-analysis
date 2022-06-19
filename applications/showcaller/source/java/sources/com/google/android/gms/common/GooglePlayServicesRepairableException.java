package com.google.android.gms.common;

import android.content.Intent;
import androidx.annotation.RecentlyNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesRepairableException.class */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    private final int zza;

    public GooglePlayServicesRepairableException(int i, @RecentlyNonNull String str, @RecentlyNonNull Intent intent) {
        super(str, intent);
        this.zza = i;
    }

    public int getConnectionStatusCode() {
        return this.zza;
    }
}
