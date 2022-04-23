package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzazi.class */
public final class zzazi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzazi> CREATOR = new xw();
    public final String zzbrw;
    @Deprecated
    public final String zzbvf;
    @Deprecated
    public final zzvt zzedt;
    public final zzvq zzedu;

    public zzazi(String str, String str2, zzvt zzvtVar, zzvq zzvqVar) {
        this.zzbvf = str;
        this.zzbrw = str2;
        this.zzedt = zzvtVar;
        this.zzedu = zzvqVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzbvf, false);
        a.a(parcel, 2, this.zzbrw, false);
        a.a(parcel, 3, this.zzedt, i, false);
        a.a(parcel, 4, this.zzedu, i, false);
        a.b(parcel, a2);
    }
}
