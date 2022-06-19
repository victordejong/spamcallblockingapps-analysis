package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.wearable.ConnectionConfiguration;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdy.class */
public final class zzdy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdy> CREATOR = new C14257az();
    private final int statusCode;
    private final ConnectionConfiguration[] zzdw;

    public zzdy(int i, ConnectionConfiguration[] connectionConfigurationArr) {
        this.statusCode = i;
        this.zzdw = connectionConfigurationArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.statusCode);
        C12050a.m19098a(parcel, 3, this.zzdw, i);
        C12050a.m19095b(parcel, m19116a);
    }
}
