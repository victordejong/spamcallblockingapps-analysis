package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/zzai.class */
public final class zzai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzai> CREATOR = new C12000az();
    final int zza;

    public zzai(int i) {
        this.zza = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zza);
        C12050a.m19095b(parcel, m19116a);
    }
}
