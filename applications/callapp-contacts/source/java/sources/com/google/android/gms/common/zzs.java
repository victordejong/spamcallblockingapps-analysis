package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractBinderC12022bu;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/zzs.class */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new C12122x();
    private final String zza;
    private final AbstractBinderC12066p zzb;
    private final boolean zzc;
    private final boolean zzd;

    public zzs(String str, IBinder iBinder, boolean z, boolean z2) {
        BinderC12067q binderC12067q;
        this.zza = str;
        if (iBinder == null) {
            binderC12067q = null;
        } else {
            try {
                AbstractC12126b mo19077a = AbstractBinderC12022bu.m19192a(iBinder).mo19077a();
                byte[] bArr = mo19077a == null ? null : (byte[]) BinderC12129d.m18980a(mo19077a);
                if (bArr != null) {
                    binderC12067q = new BinderC12067q(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                    binderC12067q = null;
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
                binderC12067q = null;
            }
        }
        this.zzb = binderC12067q;
        this.zzc = z;
        this.zzd = z2;
    }

    public zzs(String str, AbstractBinderC12066p abstractBinderC12066p, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = abstractBinderC12066p;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, this.zza, false);
        AbstractBinderC12066p abstractBinderC12066p = this.zzb;
        AbstractBinderC12066p abstractBinderC12066p2 = abstractBinderC12066p;
        if (abstractBinderC12066p == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            abstractBinderC12066p2 = null;
        }
        C12050a.m19109a(parcel, 2, abstractBinderC12066p2);
        C12050a.m19101a(parcel, 3, this.zzc);
        C12050a.m19101a(parcel, 4, this.zzd);
        C12050a.m19095b(parcel, m19116a);
    }
}
