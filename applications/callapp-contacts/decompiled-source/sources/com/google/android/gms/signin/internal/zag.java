package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zag.class */
public final class zag extends AbstractSafeParcelable implements m {
    public static final Parcelable.Creator<zag> CREATOR = new g();
    private final List<String> zaa;
    private final String zab;

    public zag(List<String> list, String str) {
        this.zaa = list;
        this.zab = str;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.zab != null ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, this.zab, false);
        a.b(parcel, a2);
    }
}
