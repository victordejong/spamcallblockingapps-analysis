package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/zzv.class */
public final class zzv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzv> CREATOR = new C13131q();
    private final String accountType;
    private final int zzv;

    public zzv(int i, String str) {
        this.zzv = 1;
        this.accountType = (String) C12045o.m19162a(str);
    }

    public zzv(String str) {
        this(1, str);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zzv);
        C12050a.m19104a(parcel, 2, this.accountType, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
