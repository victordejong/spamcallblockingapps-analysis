package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zaa.class */
public final class zaa extends AbstractSafeParcelable implements AbstractC11925m {
    public static final Parcelable.Creator<zaa> CREATOR = new C14156b();
    final int zaa;
    private int zab;
    private Intent zac;

    public zaa() {
        this(2, 0, null);
    }

    public zaa(int i, int i2, Intent intent) {
        this.zaa = i;
        this.zab = i2;
        this.zac = intent;
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.zab == 0 ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19112a(parcel, 2, this.zab);
        C12050a.m19107a(parcel, 3, this.zac, i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
