package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesRepairableException.class */
public class GooglePlayServicesRepairableException extends UserRecoverableException {

    /* renamed from: g */
    private final int f6983g;

    public GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.f6983g = i;
    }

    /* renamed from: a */
    public int m15056a() {
        return this.f6983g;
    }
}
