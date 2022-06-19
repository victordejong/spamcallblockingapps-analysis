package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/zzab.class */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new C13116b();
    private final String accountType;
    private final int zzbw;
    private final int zzv;

    public zzab(int i, String str, int i2) {
        this.zzv = 1;
        this.accountType = (String) C12045o.m19162a(str);
        this.zzbw = i2;
    }

    public zzab(String str, int i) {
        this(1, str, i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zzv);
        C12050a.m19104a(parcel, 2, this.accountType, false);
        C12050a.m19112a(parcel, 3, this.zzbw);
        C12050a.m19095b(parcel, m19116a);
    }
}
