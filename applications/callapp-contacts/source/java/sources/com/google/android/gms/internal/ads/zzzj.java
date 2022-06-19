package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzzj.class */
public final class zzzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzzj> CREATOR = new ems();
    private final int zzckk;

    public zzzj(int i) {
        this.zzckk = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.zzckk);
        C12050a.m19095b(parcel, m19116a);
    }
}
