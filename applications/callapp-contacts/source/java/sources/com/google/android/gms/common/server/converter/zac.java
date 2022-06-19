package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/converter/zac.class */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new C12073c();
    final int zaa;
    final String zab;
    final int zac;

    public zac(int i, String str, int i2) {
        this.zaa = i;
        this.zab = str;
        this.zac = i2;
    }

    public zac(String str, int i) {
        this.zaa = 1;
        this.zab = str;
        this.zac = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19104a(parcel, 2, this.zab, false);
        C12050a.m19112a(parcel, 3, this.zac);
        C12050a.m19095b(parcel, m19116a);
    }
}
