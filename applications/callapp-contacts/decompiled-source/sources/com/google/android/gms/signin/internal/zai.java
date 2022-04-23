package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.zat;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zai.class */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new h();
    final int zaa;
    final zat zab;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zai(int i, zat zatVar) {
        this.zaa = i;
        this.zab = zatVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zaa);
        a.a(parcel, 2, this.zab, i, false);
        a.b(parcel, a2);
    }
}
