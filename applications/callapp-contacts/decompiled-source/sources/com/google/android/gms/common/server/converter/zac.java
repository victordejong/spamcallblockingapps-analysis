package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/converter/zac.class */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new c();
    final int zaa;
    final String zab;
    final int zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zac(int i, String str, int i2) {
        this.zaa = i;
        this.zab = str;
        this.zac = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zac(String str, int i) {
        this.zaa = 1;
        this.zab = str;
        this.zac = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, this.zab, false);
        a.a(parcel, 3, this.zac);
        a.b(parcel, a2);
    }
}
