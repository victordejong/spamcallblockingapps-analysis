package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvg.class */
public final class zzvg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvg> CREATOR = new zzvf();
    public final int errorCode;
    public final String zzchg;
    public final String zzchh;
    public zzvg zzchi;
    public IBinder zzchj;

    public zzvg(int i, String str, String str2, zzvg zzvgVar, IBinder iBinder) {
        this.errorCode = i;
        this.zzchg = str;
        this.zzchh = str2;
        this.zzchi = zzvgVar;
        this.zzchj = iBinder;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.errorCode);
        SafeParcelWriter.writeString(parcel, 2, this.zzchg, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzchh, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzchi, i, false);
        SafeParcelWriter.writeIBinder(parcel, 5, this.zzchj, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final AdError zzqb() {
        zzvg zzvgVar = this.zzchi;
        return new AdError(this.errorCode, this.zzchg, this.zzchh, zzvgVar == null ? null : new AdError(zzvgVar.errorCode, zzvgVar.zzchg, zzvgVar.zzchh));
    }

    public final LoadAdError zzqc() {
        zzvg zzvgVar = this.zzchi;
        zzyz zzyzVar = null;
        AdError adError = zzvgVar == null ? null : new AdError(zzvgVar.errorCode, zzvgVar.zzchg, zzvgVar.zzchh);
        int i = this.errorCode;
        String str = this.zzchg;
        String str2 = this.zzchh;
        IBinder iBinder = this.zzchj;
        if (iBinder != null) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzyzVar = queryLocalInterface instanceof zzyx ? (zzyx) queryLocalInterface : new zzyz(iBinder);
        }
        return new LoadAdError(i, str, str2, adError, ResponseInfo.zza(zzyzVar));
    }
}
