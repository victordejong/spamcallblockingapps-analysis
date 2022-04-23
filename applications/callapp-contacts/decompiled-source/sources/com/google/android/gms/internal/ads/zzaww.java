package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaww.class */
public final class zzaww extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaww> CREATOR = new vj();
    public final String zzear;
    public final String zzeas;

    public zzaww(ServerSideVerificationOptions serverSideVerificationOptions) {
        this(serverSideVerificationOptions.getUserId(), serverSideVerificationOptions.getCustomData());
    }

    public zzaww(String str, String str2) {
        this.zzear = str;
        this.zzeas = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzear, false);
        a.a(parcel, 2, this.zzeas, false);
        a.b(parcel, a2);
    }
}
