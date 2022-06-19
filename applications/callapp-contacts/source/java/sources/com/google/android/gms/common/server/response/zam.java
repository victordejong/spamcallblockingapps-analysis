package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/zam.class */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new C12084k();
    final int zaa;
    final String zab;
    final FastJsonResponse.Field<?, ?> zac;

    public zam(int i, String str, FastJsonResponse.Field<?, ?> field) {
        this.zaa = i;
        this.zab = str;
        this.zac = field;
    }

    public zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.zaa = 1;
        this.zab = str;
        this.zac = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19104a(parcel, 2, this.zab, false);
        C12050a.m19107a(parcel, 3, this.zac, i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
