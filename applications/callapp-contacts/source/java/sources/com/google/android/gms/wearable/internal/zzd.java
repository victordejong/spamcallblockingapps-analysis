package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzd.class */
public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new C14259ba();
    private final AbstractC14268bj zzaz;
    private final IntentFilter[] zzba;
    private final String zzbb;
    private final String zzbc;

    public zzd(IBinder iBinder, IntentFilter[] intentFilterArr, String str, String str2) {
        C14270bl c14270bl;
        if (iBinder != null) {
            if (iBinder == null) {
                c14270bl = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
                c14270bl = queryLocalInterface instanceof AbstractC14268bj ? (AbstractC14268bj) queryLocalInterface : new C14270bl(iBinder);
            }
            this.zzaz = c14270bl;
        } else {
            this.zzaz = null;
        }
        this.zzba = intentFilterArr;
        this.zzbb = str;
        this.zzbc = str2;
    }

    public zzd(BinderC14317de binderC14317de) {
        this.zzaz = binderC14317de;
        this.zzba = binderC14317de.f52271a;
        this.zzbb = binderC14317de.f52272b;
        this.zzbc = null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        AbstractC14268bj abstractC14268bj = this.zzaz;
        C12050a.m19109a(parcel, 2, abstractC14268bj == null ? null : abstractC14268bj.asBinder());
        C12050a.m19098a(parcel, 3, this.zzba, i);
        C12050a.m19104a(parcel, 4, this.zzbb, false);
        C12050a.m19104a(parcel, 5, this.zzbc, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
