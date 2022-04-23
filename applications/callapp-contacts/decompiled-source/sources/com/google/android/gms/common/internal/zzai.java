package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/zzai.class */
public final class zzai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzai> CREATOR = new az();
    final int zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzai(int i) {
        this.zza = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza);
        a.b(parcel, a2);
    }
}
