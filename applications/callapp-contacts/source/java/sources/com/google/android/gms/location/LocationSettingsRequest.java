package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsRequest.class */
public final class LocationSettingsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new C13731ac();
    private final List<LocationRequest> zza;
    private final boolean zzb;
    private final boolean zzc;
    private zzbj zzd;

    public LocationSettingsRequest(List<LocationRequest> list, boolean z, boolean z2, zzbj zzbjVar) {
        this.zza = list;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = zzbjVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19102a(parcel, 1, Collections.unmodifiableList(this.zza), false);
        C12050a.m19101a(parcel, 2, this.zzb);
        C12050a.m19101a(parcel, 3, this.zzc);
        C12050a.m19107a(parcel, 5, this.zzd, i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
