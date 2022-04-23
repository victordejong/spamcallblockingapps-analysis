package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/UserRecoverableException.class */
public class UserRecoverableException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final Intent f22595a;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.f22595a = intent;
    }

    public final Intent a() {
        return new Intent(this.f22595a);
    }
}
