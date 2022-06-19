package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/FavaDiagnosticsEntity.class */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    @KeepForSdk
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6074a;
    @RecentlyNonNull
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f6075b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f6076c;

    @SafeParcelable.Constructor
    public FavaDiagnosticsEntity(@SafeParcelable.Param(id = 1) int i, @RecentlyNonNull @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2) {
        this.f6074a = i;
        this.f6075b = str;
        this.f6076c = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6074a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.f6075b, false);
        int i3 = this.f6076c;
        parcel.writeInt(262147);
        parcel.writeInt(i3);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
