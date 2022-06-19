package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/zax.class */
public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new C11989ao();
    final int zaa;
    private final int zab;
    private final int zac;
    @Deprecated
    private final Scope[] zad;

    public zax(int i, int i2, int i3, Scope[] scopeArr) {
        this.zaa = i;
        this.zab = i2;
        this.zac = i3;
        this.zad = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19112a(parcel, 2, this.zab);
        C12050a.m19112a(parcel, 3, this.zac);
        C12050a.m19098a(parcel, 4, this.zad, i);
        C12050a.m19095b(parcel, m19116a);
    }
}
