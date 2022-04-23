package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzd.class */
public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new ba();
    private final bj zzaz;
    private final IntentFilter[] zzba;
    private final String zzbb;
    private final String zzbc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(IBinder iBinder, IntentFilter[] intentFilterArr, String str, String str2) {
        bj bjVar = null;
        if (iBinder != null) {
            if (iBinder != null) {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
                bjVar = queryLocalInterface instanceof bj ? (bj) queryLocalInterface : new bl(iBinder);
            }
            this.zzaz = bjVar;
        } else {
            this.zzaz = null;
        }
        this.zzba = intentFilterArr;
        this.zzbb = str;
        this.zzbc = str2;
    }

    public zzd(de deVar) {
        this.zzaz = deVar;
        this.zzba = deVar.f30120a;
        this.zzbb = deVar.f30121b;
        this.zzbc = null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        bj bjVar = this.zzaz;
        a.a(parcel, 2, bjVar == null ? null : bjVar.asBinder());
        a.a(parcel, 3, this.zzba, i);
        a.a(parcel, 4, this.zzbb, false);
        a.a(parcel, 5, this.zzbc, false);
        a.b(parcel, a2);
    }
}
