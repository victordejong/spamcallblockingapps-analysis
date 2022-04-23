package com.google.android.gms.common;

import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesRepairableException.class */
public class GooglePlayServicesRepairableException extends UserRecoverableException {

    /* renamed from: a  reason: collision with root package name */
    public final int f22590a;

    public GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.f22590a = i;
    }
}
