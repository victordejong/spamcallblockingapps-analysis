package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zaa.class */
public final class zaa extends AbstractSafeParcelable implements m {
    public static final Parcelable.Creator<zaa> CREATOR = new b();
    final int zaa;
    private int zab;
    private Intent zac;

    public zaa() {
        this(2, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaa(int i, int i2, Intent intent) {
        this.zaa = i;
        this.zab = i2;
        this.zac = intent;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.zab == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, this.zab);
        a.a(parcel, 3, this.zac, i, false);
        a.b(parcel, a2);
    }
}
