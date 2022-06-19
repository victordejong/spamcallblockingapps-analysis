package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "AutoClickProtectionConfigurationParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcde.class */
public final class zzcde extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcde> CREATOR = new zzcdf();
    @SafeParcelable.Field(m4805id = 2)
    public final boolean zza;
    @SafeParcelable.Field(m4805id = 3)
    public final List<String> zzb;

    public zzcde() {
        this(false, Collections.emptyList());
    }

    @SafeParcelable.Constructor
    public zzcde(@SafeParcelable.Param(m4804id = 2) boolean z, @SafeParcelable.Param(m4804id = 3) List<String> list) {
        this.zza = z;
        this.zzb = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zza);
        SafeParcelWriter.writeStringList(parcel, 3, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
