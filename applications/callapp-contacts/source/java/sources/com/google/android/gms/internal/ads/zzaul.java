package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaul.class */
public final class zzaul extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaul> CREATOR = new C12919sw();
    String zzdyw;

    public zzaul(String str) {
        this.zzdyw = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, this.zzdyw, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
