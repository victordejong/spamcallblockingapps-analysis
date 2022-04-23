package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/zax.class */
public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new ao();
    final int zaa;
    private final int zab;
    private final int zac;
    @Deprecated
    private final Scope[] zad;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zax(int i, int i2, int i3, Scope[] scopeArr) {
        this.zaa = i;
        this.zab = i2;
        this.zac = i3;
        this.zad = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, this.zab);
        a.a(parcel, 3, this.zac);
        a.a(parcel, 4, this.zad, i);
        a.b(parcel, a2);
    }
}
