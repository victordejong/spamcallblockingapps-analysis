package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zag.class */
public final class zag extends AbstractSafeParcelable implements AbstractC11925m {
    public static final Parcelable.Creator<zag> CREATOR = new C14161g();
    private final List<String> zaa;
    private final String zab;

    public zag(List<String> list, String str) {
        this.zaa = list;
        this.zab = str;
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.zab != null ? Status.RESULT_SUCCESS : Status.RESULT_CANCELED;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19103a(parcel, 1, this.zaa);
        C12050a.m19104a(parcel, 2, this.zab, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
