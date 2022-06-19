package com.huawei.hms.api;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/UserRecoverableException.class */
public class UserRecoverableException extends Exception {

    /* renamed from: a */
    private final Intent f7289a;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.f7289a = intent;
    }

    public Intent getIntent() {
        return new Intent(this.f7289a);
    }
}
