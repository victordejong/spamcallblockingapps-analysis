package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzec.class */
public final class zzec extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzec> CREATOR = new C14261bc();
    public final int statusCode;
    public final zzdd zzdy;

    public zzec(int i, zzdd zzddVar) {
        this.statusCode = i;
        this.zzdy = zzddVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.statusCode);
        C12050a.m19107a(parcel, 3, this.zzdy, i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
