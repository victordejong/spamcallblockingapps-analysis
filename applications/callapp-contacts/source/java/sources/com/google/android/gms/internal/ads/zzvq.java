package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
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
        this.zzcin = list3 == null ? new ArrayList() : list3;
        this.zzcio = i5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzvq)) {
            return false;
        }
        zzvq zzvqVar = (zzvq) obj;
        return this.versionCode == zzvqVar.versionCode && this.zzcia == zzvqVar.zzcia && C12041m.m19168a(this.extras, zzvqVar.extras) && this.zzcib == zzvqVar.zzcib && C12041m.m19168a(this.zzcic, zzvqVar.zzcic) && this.zzcid == zzvqVar.zzcid && this.zzadv == zzvqVar.zzadv && this.zzbns == zzvqVar.zzbns && C12041m.m19168a(this.zzcie, zzvqVar.zzcie) && C12041m.m19168a(this.zzcif, zzvqVar.zzcif) && C12041m.m19168a(this.zzng, zzvqVar.zzng) && C12041m.m19168a(this.zzcig, zzvqVar.zzcig) && C12041m.m19168a(this.zzcih, zzvqVar.zzcih) && C12041m.m19168a(this.zzcii, zzvqVar.zzcii) && C12041m.m19168a(this.zzcij, zzvqVar.zzcij) && C12041m.m19168a(this.zzcik, zzvqVar.zzcik) && C12041m.m19168a(this.zzcil, zzvqVar.zzcil) && this.zzcim == zzvqVar.zzcim && this.zzadw == zzvqVar.zzadw && C12041m.m19168a(this.zzadx, zzvqVar.zzadx) && C12041m.m19168a(this.zzcin, zzvqVar.zzcin) && this.zzcio == zzvqVar.zzcio;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.versionCode), Long.valueOf(this.zzcia), this.extras, Integer.valueOf(this.zzcib), this.zzcic, Boolean.valueOf(this.zzcid), Integer.valueOf(this.zzadv), Boolean.valueOf(this.zzbns), this.zzcie, this.zzcif, this.zzng, this.zzcig, this.zzcih, this.zzcii, this.zzcij, this.zzcik, this.zzcil, Boolean.valueOf(this.zzcim), Integer.valueOf(this.zzadw), this.zzadx, this.zzcin, Integer.valueOf(this.zzcio)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.versionCode);
        C12050a.m19111a(parcel, 2, this.zzcia);
        C12050a.m19110a(parcel, 3, this.extras, false);
        C12050a.m19112a(parcel, 4, this.zzcib);
        C12050a.m19103a(parcel, 5, this.zzcic);
        C12050a.m19101a(parcel, 6, this.zzcid);
        C12050a.m19112a(parcel, 7, this.zzadv);
        C12050a.m19101a(parcel, 8, this.zzbns);
        C12050a.m19104a(parcel, 9, this.zzcie, false);
        C12050a.m19107a(parcel, 10, this.zzcif, i, false);
        C12050a.m19107a(parcel, 11, this.zzng, i, false);
        C12050a.m19104a(parcel, 12, this.zzcig, false);
        C12050a.m19110a(parcel, 13, this.zzcih, false);
        C12050a.m19110a(parcel, 14, this.zzcii, false);
        C12050a.m19103a(parcel, 15, this.zzcij);
        C12050a.m19104a(parcel, 16, this.zzcik, false);
        C12050a.m19104a(parcel, 17, this.zzcil, false);
        C12050a.m19101a(parcel, 18, this.zzcim);
        C12050a.m19107a(parcel, 19, this.zzcip, i, false);
        C12050a.m19112a(parcel, 20, this.zzadw);
        C12050a.m19104a(parcel, 21, this.zzadx, false);
        C12050a.m19103a(parcel, 22, this.zzcin);
        C12050a.m19112a(parcel, 23, this.zzcio);
        C12050a.m19095b(parcel, m19116a);
    }
}
