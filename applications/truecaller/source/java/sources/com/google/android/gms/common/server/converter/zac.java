package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/converter/zac.class */
public final class zac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zac> CREATOR = new zae();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6082a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f6083b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f6084c;

    @SafeParcelable.Constructor
    public zac(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2) {
        this.f6082a = i;
        this.f6083b = str;
        this.f6084c = i2;
    }

    public zac(String str, int i) {
        this.f6082a = 1;
        this.f6083b = str;
        this.f6084c = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6082a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.f6083b, false);
        int i3 = this.f6084c;
        parcel.writeInt(262147);
        parcel.writeInt(i3);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
