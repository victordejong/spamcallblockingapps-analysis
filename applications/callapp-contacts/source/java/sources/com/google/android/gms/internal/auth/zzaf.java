package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/zzaf.class */
public final class zzaf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaf> CREATOR = new C13118d();
    private final String accountType;
    private final byte[] zzbp;
    private final int zzv;

    public zzaf(int i, String str, byte[] bArr) {
        this.zzv = 1;
        this.accountType = (String) C12045o.m19162a(str);
        this.zzbp = (byte[]) C12045o.m19162a(bArr);
    }

    public zzaf(String str, byte[] bArr) {
        this(1, str, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zzv);
        C12050a.m19104a(parcel, 2, this.accountType, false);
        C12050a.m19100a(parcel, 3, this.zzbp, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
