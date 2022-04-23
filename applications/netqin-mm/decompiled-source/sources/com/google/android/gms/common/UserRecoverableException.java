package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/UserRecoverableException.class */
public class UserRecoverableException extends Exception {
    public final Intent zza;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.zza = intent;
    }

    public Intent getIntent() {
        return new Intent(this.zza);
    }
}
