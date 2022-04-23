package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzbj.class */
public final class zzbj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbj> CREATOR = new ab();
    private final String zza;
    private final String zzb;
    private final String zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbj(String str, String str2, String str3) {
        this.zzc = str;
        this.zza = str2;
        this.zzb = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza, false);
        a.a(parcel, 2, this.zzb, false);
        a.a(parcel, 5, this.zzc, false);
        a.b(parcel, a2);
    }
}
