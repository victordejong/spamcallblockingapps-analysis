package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdt.class */
public final class zzdt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdt> CREATOR = new C14254aw();
    private final int statusCode;
    private final boolean zzdt;
    private final boolean zzdu;

    public zzdt(int i, boolean z, boolean z2) {
        this.statusCode = i;
        this.zzdt = z;
        this.zzdu = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.statusCode);
        C12050a.m19101a(parcel, 3, this.zzdt);
        C12050a.m19101a(parcel, 4, this.zzdu);
        C12050a.m19095b(parcel, m19116a);
    }
}
