package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.wearable.ConnectionConfiguration;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdw.class */
public final class zzdw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdw> CREATOR = new C14256ay();
    private final int statusCode;
    private final ConnectionConfiguration zzdv;

    public zzdw(int i, ConnectionConfiguration connectionConfiguration) {
        this.statusCode = i;
        this.zzdv = connectionConfiguration;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.statusCode);
        C12050a.m19107a(parcel, 3, this.zzdv, i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
