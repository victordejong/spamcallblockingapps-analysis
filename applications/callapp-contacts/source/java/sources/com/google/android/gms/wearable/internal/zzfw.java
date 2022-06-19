package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzfw.class */
public final class zzfw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfw> CREATOR = new C14291cf();
    private final int versionCode;
    private final AbstractC14268bj zzaz;

    public zzfw(int i, IBinder iBinder) {
        C14270bl c14270bl;
        this.versionCode = i;
        if (iBinder == null) {
            this.zzaz = null;
            return;
        }
        if (iBinder == null) {
            c14270bl = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
            c14270bl = queryLocalInterface instanceof AbstractC14268bj ? (AbstractC14268bj) queryLocalInterface : new C14270bl(iBinder);
        }
        this.zzaz = c14270bl;
    }

    public zzfw(AbstractC14268bj abstractC14268bj) {
        this.versionCode = 1;
        this.zzaz = abstractC14268bj;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.versionCode);
        AbstractC14268bj abstractC14268bj = this.zzaz;
        C12050a.m19109a(parcel, 2, abstractC14268bj == null ? null : abstractC14268bj.asBinder());
        C12050a.m19095b(parcel, m19116a);
    }
}
