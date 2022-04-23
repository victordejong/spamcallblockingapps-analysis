package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzfw.class */
public final class zzfw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfw> CREATOR = new cf();
    private final int versionCode;
    private final bj zzaz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfw(int i, IBinder iBinder) {
        this.versionCode = i;
        bj bjVar = null;
        if (iBinder != null) {
            if (iBinder != null) {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
                bjVar = queryLocalInterface instanceof bj ? (bj) queryLocalInterface : new bl(iBinder);
            }
            this.zzaz = bjVar;
            return;
        }
        this.zzaz = null;
    }

    public zzfw(bj bjVar) {
        this.versionCode = 1;
        this.zzaz = bjVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.versionCode);
        bj bjVar = this.zzaz;
        a.a(parcel, 2, bjVar == null ? null : bjVar.asBinder());
        a.b(parcel, a2);
    }
}
