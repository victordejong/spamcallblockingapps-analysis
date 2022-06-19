package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/UserRecoverableException.class */
public class UserRecoverableException extends Exception {

    /* renamed from: a */
    public final Intent f5688a;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.f5688a = intent;
    }
}
