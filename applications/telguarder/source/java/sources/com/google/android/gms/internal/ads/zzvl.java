package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvl.class */
public final class zzvl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvl> CREATOR = new zzvn();
    public final Bundle extras;
    public final int versionCode;
    public final int zzado;
    public final int zzadp;
    public final String zzadq;
    public final boolean zzbni;
    @Deprecated
    public final long zzchn;
    @Deprecated
    public final int zzcho;
    public final List<String> zzchp;
    public final boolean zzchq;
    public final String zzchr;
    public final zzaaq zzchs;
    public final String zzcht;
    public final Bundle zzchu;
    public final Bundle zzchv;
    public final List<String> zzchw;
    public final String zzchx;
    public final String zzchy;
    @Deprecated
    public final boolean zzchz;
    public final zzve zzcia;
    public final List<String> zzcib;
    public final int zzcic;
    public final Location zznb;

    public zzvl(int i, long j, Bundle bundle, int i2, List<String> list, boolean z, int i3, boolean z2, String str, zzaaq zzaaqVar, Location location, String str2, Bundle bundle2, Bundle bundle3, List<String> list2, String str3, String str4, boolean z3, zzve zzveVar, int i4, String str5, List<String> list3, int i5) {
        this.versionCode = i;
        this.zzchn = j;
        this.extras = bundle == null ? new Bundle() : bundle;
        this.zzcho = i2;
        this.zzchp = list;
        this.zzchq = z;
        this.zzado = i3;
        this.zzbni = z2;
        this.zzchr = str;
        this.zzchs = zzaaqVar;
        this.zznb = location;
        this.zzcht = str2;
        this.zzchu = bundle2 == null ? new Bundle() : bundle2;
        this.zzchv = bundle3;
        this.zzchw = list2;
        this.zzchx = str3;
        this.zzchy = str4;
        this.zzchz = z3;
        this.zzcia = zzveVar;
        this.zzadp = i4;
        this.zzadq = str5;
        this.zzcib = list3 == null ? new ArrayList() : list3;
        this.zzcic = i5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzvl)) {
            return false;
        }
        zzvl zzvlVar = (zzvl) obj;
        return this.versionCode == zzvlVar.versionCode && this.zzchn == zzvlVar.zzchn && Objects.equal(this.extras, zzvlVar.extras) && this.zzcho == zzvlVar.zzcho && Objects.equal(this.zzchp, zzvlVar.zzchp) && this.zzchq == zzvlVar.zzchq && this.zzado == zzvlVar.zzado && this.zzbni == zzvlVar.zzbni && Objects.equal(this.zzchr, zzvlVar.zzchr) && Objects.equal(this.zzchs, zzvlVar.zzchs) && Objects.equal(this.zznb, zzvlVar.zznb) && Objects.equal(this.zzcht, zzvlVar.zzcht) && Objects.equal(this.zzchu, zzvlVar.zzchu) && Objects.equal(this.zzchv, zzvlVar.zzchv) && Objects.equal(this.zzchw, zzvlVar.zzchw) && Objects.equal(this.zzchx, zzvlVar.zzchx) && Objects.equal(this.zzchy, zzvlVar.zzchy) && this.zzchz == zzvlVar.zzchz && this.zzadp == zzvlVar.zzadp && Objects.equal(this.zzadq, zzvlVar.zzadq) && Objects.equal(this.zzcib, zzvlVar.zzcib) && this.zzcic == zzvlVar.zzcic;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.versionCode), Long.valueOf(this.zzchn), this.extras, Integer.valueOf(this.zzcho), this.zzchp, Boolean.valueOf(this.zzchq), Integer.valueOf(this.zzado), Boolean.valueOf(this.zzbni), this.zzchr, this.zzchs, this.zznb, this.zzcht, this.zzchu, this.zzchv, this.zzchw, this.zzchx, this.zzchy, Boolean.valueOf(this.zzchz), Integer.valueOf(this.zzadp), this.zzadq, this.zzcib, Integer.valueOf(this.zzcic));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeLong(parcel, 2, this.zzchn);
        SafeParcelWriter.writeBundle(parcel, 3, this.extras, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzcho);
        SafeParcelWriter.writeStringList(parcel, 5, this.zzchp, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzchq);
        SafeParcelWriter.writeInt(parcel, 7, this.zzado);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zzbni);
        SafeParcelWriter.writeString(parcel, 9, this.zzchr, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzchs, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zznb, i, false);
        SafeParcelWriter.writeString(parcel, 12, this.zzcht, false);
        SafeParcelWriter.writeBundle(parcel, 13, this.zzchu, false);
        SafeParcelWriter.writeBundle(parcel, 14, this.zzchv, false);
        SafeParcelWriter.writeStringList(parcel, 15, this.zzchw, false);
        SafeParcelWriter.writeString(parcel, 16, this.zzchx, false);
        SafeParcelWriter.writeString(parcel, 17, this.zzchy, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzchz);
        SafeParcelWriter.writeParcelable(parcel, 19, this.zzcia, i, false);
        SafeParcelWriter.writeInt(parcel, 20, this.zzadp);
        SafeParcelWriter.writeString(parcel, 21, this.zzadq, false);
        SafeParcelWriter.writeStringList(parcel, 22, this.zzcib, false);
        SafeParcelWriter.writeInt(parcel, 23, this.zzcic);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
