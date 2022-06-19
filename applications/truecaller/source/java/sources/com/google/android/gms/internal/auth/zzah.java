package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzah.class */
public final class zzah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzah> CREATOR = new zzai();
    @SafeParcelable.Field
    private final String accountType;
    @SafeParcelable.Field
    private final PendingIntent zzbx;
    @SafeParcelable.VersionField
    private final int zzv;

    @SafeParcelable.Constructor
    public zzah(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) PendingIntent pendingIntent) {
        this.zzv = 1;
        Objects.requireNonNull(str, "null reference");
        this.accountType = str;
        Objects.requireNonNull(pendingIntent, "null reference");
        this.zzbx = pendingIntent;
    }

    public zzah(String str, PendingIntent pendingIntent) {
        this(1, str, pendingIntent);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zzv;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.accountType, false);
        SafeParcelWriter.m38847p(parcel, 3, this.zzbx, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
