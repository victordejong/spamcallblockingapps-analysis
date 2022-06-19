package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesRepairableException.class */
public class GooglePlayServicesRepairableException extends UserRecoverableException {

    /* renamed from: a */
    public final int f39155a;

    public GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.f39155a = i;
    }
}
