package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzavt.class */
public final class zzavt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavt> CREATOR = new C12955ue();
    public final String zzbvf;
    public final zzvq zzdvn;

    public zzavt(zzvq zzvqVar, String str) {
        this.zzdvn = zzvqVar;
        this.zzbvf = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 2, this.zzdvn, i, false);
        C12050a.m19104a(parcel, 3, this.zzbvf, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
