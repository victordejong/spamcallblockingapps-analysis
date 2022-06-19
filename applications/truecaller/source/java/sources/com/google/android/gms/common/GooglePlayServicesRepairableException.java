package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesRepairableException.class */
public class GooglePlayServicesRepairableException extends UserRecoverableException {

    /* renamed from: b */
    public final int f5677b;

    public GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.f5677b = i;
    }
}
