package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawh.class */
public final class zzawh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzawh> CREATOR = new zzawg();
    public final String zzdzh;
    public final String zzdzi;

    public zzawh(ServerSideVerificationOptions serverSideVerificationOptions) {
        this(serverSideVerificationOptions.getUserId(), serverSideVerificationOptions.getCustomData());
    }

    public zzawh(String str, String str2) {
        this.zzdzh = str;
        this.zzdzi = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzdzh, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzdzi, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
