package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzvx.class */
public final class zzvx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvx> CREATOR = new ejh();
    public String zzcja;
    public long zzcjb;
    public zzvh zzcjc;
    public Bundle zzcjd;

    public zzvx(String str, long j, zzvh zzvhVar, Bundle bundle) {
        this.zzcja = str;
        this.zzcjb = j;
        this.zzcjc = zzvhVar;
        this.zzcjd = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, this.zzcja, false);
        C12050a.m19111a(parcel, 2, this.zzcjb);
        C12050a.m19107a(parcel, 3, this.zzcjc, i, false);
        C12050a.m19110a(parcel, 4, this.zzcjd, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
