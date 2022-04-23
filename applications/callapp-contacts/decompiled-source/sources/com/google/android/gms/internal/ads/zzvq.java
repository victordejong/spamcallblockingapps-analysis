package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzvq.class */
public final class zzvq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvq> CREATOR = new ejc();
    public final Bundle extras;
    public final int versionCode;
    public final int zzadv;
    public final int zzadw;
    public final String zzadx;
    public final boolean zzbns;
    @Deprecated
    public final long zzcia;
    @Deprecated
    public final int zzcib;
    public final List<String> zzcic;
    public final boolean zzcid;
    public final String zzcie;
    public final zzaav zzcif;
    public final String zzcig;
    public final Bundle zzcih;
    public final Bundle zzcii;
    public final List<String> zzcij;
    public final String zzcik;
    public final String zzcil;
    @Deprecated
    public final boolean zzcim;
    public final List<String> zzcin;
    public final int zzcio;
    public final zzvf zzcip;
    public final Location zzng;

    public zzvq(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzaav zzaavVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3, zzvf zzvfVar, int i4, String str5, List<String> list3, int i5) {
        this.versionCode = i;
        this.zzcia = j;
        this.extras = bundle == null ? new Bundle() : bundle;
        this.zzcib = i2;
        this.zzcic = list;
        this.zzcid = z;
        this.zzadv = i3;
        this.zzbns = z2;
        this.zzcie = str;
        this.zzcif = zzaavVar;
        this.zzng = location;
        this.zzcig = str2;
        this.zzcih = bundle2 == null ? new Bundle() : bundle2;
        this.zzcii = bundle3;
        this.zzcij = list2;
        this.zzcik = str3;
        this.zzcil = str4;
        this.zzcim = z3;
        this.zzcip = zzvfVar;
        this.zzadw = i4;
        this.zzadx = str5;
        this.zzcin = list3 == null ? new ArrayList<>() : list3;
        this.zzcio = i5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzvq)) {
            return false;
        }
        zzvq zzvqVar = (zzvq) obj;
        return this.versionCode == zzvqVar.versionCode && this.zzcia == zzvqVar.zzcia && m.a(this.extras, zzvqVar.extras) && this.zzcib == zzvqVar.zzcib && m.a(this.zzcic, zzvqVar.zzcic) && this.zzcid == zzvqVar.zzcid && this.zzadv == zzvqVar.zzadv && this.zzbns == zzvqVar.zzbns && m.a(this.zzcie, zzvqVar.zzcie) && m.a(this.zzcif, zzvqVar.zzcif) && m.a(this.zzng, zzvqVar.zzng) && m.a(this.zzcig, zzvqVar.zzcig) && m.a(this.zzcih, zzvqVar.zzcih) && m.a(this.zzcii, zzvqVar.zzcii) && m.a(this.zzcij, zzvqVar.zzcij) && m.a(this.zzcik, zzvqVar.zzcik) && m.a(this.zzcil, zzvqVar.zzcil) && this.zzcim == zzvqVar.zzcim && this.zzadw == zzvqVar.zzadw && m.a(this.zzadx, zzvqVar.zzadx) && m.a(this.zzcin, zzvqVar.zzcin) && this.zzcio == zzvqVar.zzcio;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.versionCode), Long.valueOf(this.zzcia), this.extras, Integer.valueOf(this.zzcib), this.zzcic, Boolean.valueOf(this.zzcid), Integer.valueOf(this.zzadv), Boolean.valueOf(this.zzbns), this.zzcie, this.zzcif, this.zzng, this.zzcig, this.zzcih, this.zzcii, this.zzcij, this.zzcik, this.zzcil, Boolean.valueOf(this.zzcim), Integer.valueOf(this.zzadw), this.zzadx, this.zzcin, Integer.valueOf(this.zzcio)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.versionCode);
        a.a(parcel, 2, this.zzcia);
        a.a(parcel, 3, this.extras, false);
        a.a(parcel, 4, this.zzcib);
        a.a(parcel, 5, this.zzcic);
        a.a(parcel, 6, this.zzcid);
        a.a(parcel, 7, this.zzadv);
        a.a(parcel, 8, this.zzbns);
        a.a(parcel, 9, this.zzcie, false);
        a.a(parcel, 10, this.zzcif, i, false);
        a.a(parcel, 11, this.zzng, i, false);
        a.a(parcel, 12, this.zzcig, false);
        a.a(parcel, 13, this.zzcih, false);
        a.a(parcel, 14, this.zzcii, false);
        a.a(parcel, 15, this.zzcij);
        a.a(parcel, 16, this.zzcik, false);
        a.a(parcel, 17, this.zzcil, false);
        a.a(parcel, 18, this.zzcim);
        a.a(parcel, 19, this.zzcip, i, false);
        a.a(parcel, 20, this.zzadw);
        a.a(parcel, 21, this.zzadx, false);
        a.a(parcel, 22, this.zzcin);
        a.a(parcel, 23, this.zzcio);
        a.b(parcel, a2);
    }
}
