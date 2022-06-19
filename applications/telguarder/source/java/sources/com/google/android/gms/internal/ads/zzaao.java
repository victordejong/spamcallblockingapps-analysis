package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaao.class */
public final class zzaao extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaao> CREATOR = new zzaar();
    private final int zzado;
    private final int zzadp;

    public zzaao(int i, int i2) {
        this.zzado = i;
        this.zzadp = i2;
    }

    public zzaao(RequestConfiguration requestConfiguration) {
        this.zzado = requestConfiguration.getTagForChildDirectedTreatment();
        this.zzadp = requestConfiguration.getTagForUnderAgeOfConsent();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzado);
        SafeParcelWriter.writeInt(parcel, 2, this.zzadp);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
