package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaat.class */
public final class zzaat extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaat> CREATOR = new C12950u();
    private final int zzadv;
    private final int zzadw;

    public zzaat(int i, int i2) {
        this.zzadv = i;
        this.zzadw = i2;
    }

    public zzaat(RequestConfiguration requestConfiguration) {
        this.zzadv = requestConfiguration.getTagForChildDirectedTreatment();
        this.zzadw = requestConfiguration.getTagForUnderAgeOfConsent();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zzadv);
        C12050a.m19112a(parcel, 2, this.zzadw);
        C12050a.m19095b(parcel, m19116a);
    }
}
