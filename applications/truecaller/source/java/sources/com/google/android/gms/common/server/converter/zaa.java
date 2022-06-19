package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/converter/zaa.class */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new zab();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6080a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final StringToIntConverter f6081b;

    @SafeParcelable.Constructor
    public zaa(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) StringToIntConverter stringToIntConverter) {
        this.f6080a = i;
        this.f6081b = stringToIntConverter;
    }

    public zaa(StringToIntConverter stringToIntConverter) {
        this.f6080a = 1;
        this.f6081b = stringToIntConverter;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6080a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38847p(parcel, 2, this.f6081b, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
