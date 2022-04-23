package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.wearable.ConnectionConfiguration;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdw.class */
public final class zzdw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdw> CREATOR = new ay();
    private final int statusCode;
    private final ConnectionConfiguration zzdv;

    public zzdw(int i, ConnectionConfiguration connectionConfiguration) {
        this.statusCode = i;
        this.zzdv = connectionConfiguration;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.statusCode);
        a.a(parcel, 3, this.zzdv, i, false);
        a.b(parcel, a2);
    }
}
