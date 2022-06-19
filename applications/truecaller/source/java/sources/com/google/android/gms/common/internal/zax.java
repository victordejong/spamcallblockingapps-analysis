package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zax.class */
public final class zax extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zax> CREATOR = new zay();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6035a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f6036b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f6037c;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: d */
    public final Scope[] f6038d;

    @SafeParcelable.Constructor
    public zax(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) Scope[] scopeArr) {
        this.f6035a = i;
        this.f6036b = i2;
        this.f6037c = i3;
        this.f6038d = scopeArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6035a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        int i3 = this.f6036b;
        parcel.writeInt(262146);
        parcel.writeInt(i3);
        int i4 = this.f6037c;
        parcel.writeInt(262147);
        parcel.writeInt(i4);
        SafeParcelWriter.m38843t(parcel, 4, this.f6038d, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
