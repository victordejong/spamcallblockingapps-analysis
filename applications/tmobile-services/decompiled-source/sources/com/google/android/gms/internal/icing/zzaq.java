package com.google.android.gms.internal.icing;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaq.class */
public final class zzaq extends zzb implements zzan {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.search.internal.ISearchAuthService");
    }

    @Override // com.google.android.gms.internal.icing.zzan
    /* renamed from: E0 */
    public final void mo14048E0(zzam zzamVar, String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zzd.m13971b(zza, zzamVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzb(2, zza);
    }

    @Override // com.google.android.gms.internal.icing.zzan
    /* renamed from: O0 */
    public final void mo14047O0(zzam zzamVar, String str, String str2) throws RemoteException {
        Parcel zza = zza();
        zzd.m13971b(zza, zzamVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzb(1, zza);
    }
}
