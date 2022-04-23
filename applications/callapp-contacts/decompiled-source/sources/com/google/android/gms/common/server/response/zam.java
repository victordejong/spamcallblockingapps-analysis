package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/server/response/zam.class */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new k();
    final int zaa;
    final String zab;
    final FastJsonResponse.Field<?, ?> zac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(int i, String str, FastJsonResponse.Field<?, ?> field) {
        this.zaa = i;
        this.zab = str;
        this.zac = field;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.zaa = 1;
        this.zab = str;
        this.zac = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, this.zab, false);
        a.a(parcel, 3, this.zac, i, false);
        a.b(parcel, a2);
    }
}
