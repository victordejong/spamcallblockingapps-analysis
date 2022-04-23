package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzk.class */
public final class zzk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzk> CREATOR = new zzj();
    public final boolean zzbpo;
    public final boolean zzbpp;
    private final String zzbpq;
    public final boolean zzbpr;
    public final float zzbps;
    public final int zzbpt;
    public final boolean zzbpu;
    public final boolean zzbpv;
    public final boolean zzbpw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.zzbpo = z;
        this.zzbpp = z2;
        this.zzbpq = str;
        this.zzbpr = z3;
        this.zzbps = f;
        this.zzbpt = i;
        this.zzbpu = z4;
        this.zzbpv = z5;
        this.zzbpw = z6;
    }

    public zzk(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, z3, f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzbpo);
        a.a(parcel, 3, this.zzbpp);
        a.a(parcel, 4, this.zzbpq, false);
        a.a(parcel, 5, this.zzbpr);
        a.a(parcel, 6, this.zzbps);
        a.a(parcel, 7, this.zzbpt);
        a.a(parcel, 8, this.zzbpu);
        a.a(parcel, 9, this.zzbpv);
        a.a(parcel, 10, this.zzbpw);
        a.b(parcel, a2);
    }
}
