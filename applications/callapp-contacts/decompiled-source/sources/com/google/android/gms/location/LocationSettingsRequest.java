package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsRequest.class */
public final class LocationSettingsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new ac();
    private final List<LocationRequest> zza;
    private final boolean zzb;
    private final boolean zzc;
    private zzbj zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationSettingsRequest(List<LocationRequest> list, boolean z, boolean z2, zzbj zzbjVar) {
        this.zza = list;
        this.zzb = z;
        this.zzc = z2;
        this.zzd = zzbjVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, Collections.unmodifiableList(this.zza), false);
        a.a(parcel, 2, this.zzb);
        a.a(parcel, 3, this.zzc);
        a.a(parcel, 5, this.zzd, i, false);
        a.b(parcel, a2);
    }
}
