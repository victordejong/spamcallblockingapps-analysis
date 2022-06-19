package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdr.class */
public final class zzdr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdr> CREATOR = new C14253av();
    private final int statusCode;
    private final boolean zzds;

    public zzdr(int i, boolean z) {
        this.statusCode = i;
        this.zzds = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 2, this.statusCode);
        C12050a.m19101a(parcel, 3, this.zzds);
        C12050a.m19095b(parcel, m19116a);
    }
}
