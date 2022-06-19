package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
@ShowFirstParty
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/server/response/zam.class */
public final class zam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zam> CREATOR = new zak();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6106a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f6107b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final FastJsonResponse.Field<?, ?> f6108c;

    @SafeParcelable.Constructor
    public zam(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) FastJsonResponse.Field<?, ?> field) {
        this.f6106a = i;
        this.f6107b = str;
        this.f6108c = field;
    }

    public zam(String str, FastJsonResponse.Field<?, ?> field) {
        this.f6106a = 1;
        this.f6107b = str;
        this.f6108c = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6106a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, this.f6107b, false);
        SafeParcelWriter.m38847p(parcel, 3, this.f6108c, i, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
