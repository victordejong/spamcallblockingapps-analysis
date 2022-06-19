package com.google.android.gms.appset;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/appset/zza.class */
public final class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f5317a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5318b;

    @SafeParcelable.Constructor
    public zza(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2) {
        this.f5317a = str;
        this.f5318b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f5317a, false);
        SafeParcelWriter.m38846q(parcel, 2, this.f5318b, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
