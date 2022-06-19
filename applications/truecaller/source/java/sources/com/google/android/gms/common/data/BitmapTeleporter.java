package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;
@ShowFirstParty
@KeepForSdk
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/data/BitmapTeleporter.class */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    @KeepForSdk
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5914a;
    @SafeParcelable.Field

    /* renamed from: b */
    public ParcelFileDescriptor f5915b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f5916c;

    @SafeParcelable.Constructor
    public BitmapTeleporter(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param(id = 3) int i2) {
        this.f5914a = i;
        this.f5915b = parcelFileDescriptor;
        this.f5916c = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        Objects.requireNonNull(this.f5915b);
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f5914a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38847p(parcel, 2, this.f5915b, i | 1, false);
        int i3 = this.f5916c;
        parcel.writeInt(262147);
        parcel.writeInt(i3);
        SafeParcelWriter.m38840w(parcel, m38841v);
        this.f5915b = null;
    }
}
