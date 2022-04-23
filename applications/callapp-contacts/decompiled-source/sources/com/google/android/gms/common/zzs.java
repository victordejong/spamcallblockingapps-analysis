package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.bu;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/zzs.class */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new x();
    private final String zza;
    private final p zzb;
    private final boolean zzc;
    private final boolean zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(String str, IBinder iBinder, boolean z, boolean z2) {
        q qVar;
        this.zza = str;
        if (iBinder == null) {
            qVar = null;
        } else {
            try {
                b a2 = bu.a(iBinder).a();
                byte[] bArr = a2 == null ? null : (byte[]) d.a(a2);
                if (bArr != null) {
                    qVar = new q(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                    qVar = null;
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
                qVar = null;
            }
        }
        this.zzb = qVar;
        this.zzc = z;
        this.zzd = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(String str, p pVar, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = pVar;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza, false);
        p pVar = this.zzb;
        p pVar2 = pVar;
        if (pVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            pVar2 = null;
        }
        a.a(parcel, 2, pVar2);
        a.a(parcel, 3, this.zzc);
        a.a(parcel, 4, this.zzd);
        a.b(parcel, a2);
    }
}
