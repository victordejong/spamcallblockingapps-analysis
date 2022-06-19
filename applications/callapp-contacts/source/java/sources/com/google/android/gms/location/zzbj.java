package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzbj.class */
public final class zzbj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbj> CREATOR = new C13730ab();
    private final String zza;
    private final String zzb;
    private final String zzc;

    public zzbj(String str, String str2, String str3) {
        this.zzc = str;
        this.zza = str2;
        this.zzb = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, this.zza, false);
        C12050a.m19104a(parcel, 2, this.zzb, false);
        C12050a.m19104a(parcel, 5, this.zzc, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
