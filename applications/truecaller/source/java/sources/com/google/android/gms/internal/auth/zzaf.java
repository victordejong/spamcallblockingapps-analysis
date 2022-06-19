package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzaf.class */
public final class zzaf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaf> CREATOR = new zzag();
    @SafeParcelable.Field
    private final String accountType;
    @SafeParcelable.Field
    private final byte[] zzbp;
    @SafeParcelable.VersionField
    private final int zzv;

    @SafeParcelable.Constructor
    public zzaf(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) byte[] bArr) {
        this.zzv = 1;
        Objects.requireNonNull(str, "null reference");
        this.accountType = str;
        Objects.requireNonNull(bArr, "null reference");
        this.zzbp = bArr;
    }

    public zzaf(String str, byte[] bArr) {
        this(1, str, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zzv;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.accountType, false);
        SafeParcelWriter.m38859d(parcel, 3, this.zzbp, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
