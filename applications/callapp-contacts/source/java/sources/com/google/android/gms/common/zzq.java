package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/zzq.class */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new C12121w();
    private final boolean zza;
    private final String zzb;
    private final int zzc;

    public zzq(boolean z, String str, int i) {
        this.zza = z;
        this.zzb = str;
        this.zzc = C12120v.m18998a(i) - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19101a(parcel, 1, this.zza);
        C12050a.m19104a(parcel, 2, this.zzb, false);
        C12050a.m19112a(parcel, 3, this.zzc);
        C12050a.m19095b(parcel, m19116a);
    }

    public final boolean zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return C12120v.m18998a(this.zzc);
    }
}
