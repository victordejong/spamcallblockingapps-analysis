package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzvh.class */
public final class zzvh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvh> CREATOR = new eiv();
    public final int errorCode;
    public final String zzchs;
    public final String zzcht;
    public zzvh zzchu;
    public IBinder zzchv;

    public zzvh(int i, String str, String str2, zzvh zzvhVar, IBinder iBinder) {
        this.errorCode = i;
        this.zzchs = str;
        this.zzcht = str2;
        this.zzchu = zzvhVar;
        this.zzchv = iBinder;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.errorCode);
        C12050a.m19104a(parcel, 2, this.zzchs, false);
        C12050a.m19104a(parcel, 3, this.zzcht, false);
        C12050a.m19107a(parcel, 4, this.zzchu, i, false);
        C12050a.m19109a(parcel, 5, this.zzchv);
        C12050a.m19095b(parcel, m19116a);
    }

    public final AdError zzqh() {
        zzvh zzvhVar = this.zzchu;
        return new AdError(this.errorCode, this.zzchs, this.zzcht, zzvhVar == null ? null : new AdError(zzvhVar.errorCode, zzvhVar.zzchs, zzvhVar.zzcht));
    }

    public final LoadAdError zzqi() {
        zzvh zzvhVar = this.zzchu;
        eml emlVar = null;
        AdError adError = zzvhVar == null ? null : new AdError(zzvhVar.errorCode, zzvhVar.zzchs, zzvhVar.zzcht);
        int i = this.errorCode;
        String str = this.zzchs;
        String str2 = this.zzcht;
        IBinder iBinder = this.zzchv;
        if (iBinder != null) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            emlVar = queryLocalInterface instanceof emj ? (emj) queryLocalInterface : new eml(iBinder);
        }
        return new LoadAdError(i, str, str2, adError, ResponseInfo.zza(emlVar));
    }
}
