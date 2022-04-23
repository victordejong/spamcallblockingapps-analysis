package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduj.class */
public final class zzduj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduj> CREATOR = new zzdum();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f27839a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f27840b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f27841c;

    @SafeParcelable.Constructor
    public zzduj(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2) {
        this.f27839a = i;
        this.f27840b = str;
        this.f27841c = str2;
    }

    public zzduj(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f27839a);
        SafeParcelWriter.m17221a(parcel, 2, this.f27840b, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f27841c, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
