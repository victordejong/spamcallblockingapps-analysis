package com.google.android.gms.common;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/zzn.class */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new zzo();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f6157a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f6158b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f6159c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final Context f6160d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final boolean f6161e;

    @SafeParcelable.Constructor
    public zzn(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) IBinder iBinder, @SafeParcelable.Param(id = 5) boolean z3) {
        this.f6157a = str;
        this.f6158b = z;
        this.f6159c = z2;
        this.f6160d = (Context) ObjectWrapper.m38746B1(IObjectWrapper.Stub.m38750m1(iBinder));
        this.f6161e = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f6157a, false);
        boolean z = this.f6158b;
        parcel.writeInt(262146);
        parcel.writeInt(z ? 1 : 0);
        boolean z2 = this.f6159c;
        parcel.writeInt(262147);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38854i(parcel, 4, new ObjectWrapper(this.f6160d), false);
        boolean z3 = this.f6161e;
        parcel.writeInt(262149);
        parcel.writeInt(z3 ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
