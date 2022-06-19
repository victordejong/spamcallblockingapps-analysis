package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/UserRecoverableException.class */
public class UserRecoverableException extends Exception {

    /* renamed from: a */
    private final Intent f39160a;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.f39160a = intent;
    }

    /* renamed from: a */
    public final Intent m19477a() {
        return new Intent(this.f39160a);
    }
}
