package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzy;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.Nullable;
@SafeParcelable.Class(creator = "GoogleCertificatesQueryCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzs.class */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();
    @SafeParcelable.Field(getter = "getCallingPackage", m4805id = 1)
    private final String zza;
    @Nullable
    @SafeParcelable.Field(getter = "getCallingCertificateBinder", m4805id = 2, type = "android.os.IBinder")
    private final zzi zzb;
    @SafeParcelable.Field(getter = "getAllowTestKeys", m4805id = 3)
    private final boolean zzc;
    @SafeParcelable.Field(defaultValue = "false", getter = "getIgnoreTestKeysOverride", m4805id = 4)
    private final boolean zzd;

    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param(m4804id = 1) String str, @SafeParcelable.Param(m4804id = 2) @Nullable IBinder iBinder, @SafeParcelable.Param(m4804id = 3) boolean z, @SafeParcelable.Param(m4804id = 4) boolean z2) {
        zzj zzjVar;
        this.zza = str;
        if (iBinder == null) {
            zzjVar = null;
        } else {
            try {
                IObjectWrapper zzd = zzy.zzg(iBinder).zzd();
                byte[] bArr = zzd == null ? null : (byte[]) ObjectWrapper.unwrap(zzd);
                zzjVar = null;
                if (bArr != null) {
                    zzjVar = new zzj(bArr);
                }
            } catch (RemoteException e) {
                zzjVar = null;
            }
        }
        this.zzb = zzjVar;
        this.zzc = z;
        this.zzd = z2;
    }

    public zzs(String str, @Nullable zzi zziVar, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = zziVar;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        zzi zziVar = this.zzb;
        zzi zziVar2 = zziVar;
        if (zziVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            zziVar2 = null;
        }
        SafeParcelWriter.writeIBinder(parcel, 2, zziVar2, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
