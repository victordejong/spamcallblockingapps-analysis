package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzcja, false);
        a.a(parcel, 2, this.zzcjb);
        a.a(parcel, 3, this.zzcjc, i, false);
        a.a(parcel, 4, this.zzcjd, false);
        a.b(parcel, a2);
    }
}
