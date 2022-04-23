package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesRepairableException.class */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    public final int zza;

    public GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.zza = i;
    }

    public int getConnectionStatusCode() {
        return this.zza;
    }
}
