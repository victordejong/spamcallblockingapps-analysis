package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/UserRecoverableException.class */
public class UserRecoverableException extends Exception {

    /* renamed from: f */
    private final Intent f6997f;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.f6997f = intent;
    }
}
