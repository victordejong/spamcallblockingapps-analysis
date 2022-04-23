package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/zzq.class */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new w();
    private final boolean zza;
    private final String zzb;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(boolean z, String str, int i) {
        this.zza = z;
        this.zzb = str;
        this.zzc = v.a(i) - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza);
        a.a(parcel, 2, this.zzb, false);
        a.a(parcel, 3, this.zzc);
        a.b(parcel, a2);
    }

    public final boolean zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return v.a(this.zzc);
    }
}
