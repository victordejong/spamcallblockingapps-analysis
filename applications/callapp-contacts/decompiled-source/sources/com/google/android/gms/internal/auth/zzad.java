package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/zzad.class */
public final class zzad extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzad> CREATOR = new c();
    private final String accountType;
    private final int zzv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(int i, String str) {
        this.zzv = 1;
        this.accountType = (String) o.a(str);
    }

    public zzad(String str) {
        this(1, str);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzv);
        a.a(parcel, 2, this.accountType, false);
        a.b(parcel, a2);
    }
}
