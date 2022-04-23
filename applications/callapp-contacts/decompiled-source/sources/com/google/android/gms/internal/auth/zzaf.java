package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/zzaf.class */
public final class zzaf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaf> CREATOR = new d();
    private final String accountType;
    private final byte[] zzbp;
    private final int zzv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaf(int i, String str, byte[] bArr) {
        this.zzv = 1;
        this.accountType = (String) o.a(str);
        this.zzbp = (byte[]) o.a(bArr);
    }

    public zzaf(String str, byte[] bArr) {
        this(1, str, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzv);
        a.a(parcel, 2, this.accountType, false);
        a.a(parcel, 3, this.zzbp, false);
        a.b(parcel, a2);
    }
}
