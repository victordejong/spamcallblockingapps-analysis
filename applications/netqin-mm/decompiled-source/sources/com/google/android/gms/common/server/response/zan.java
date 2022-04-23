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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zan.class */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new zai();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23536a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f23537b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final FastJsonResponse.Field<?, ?> f23538c;

    @SafeParcelable.Constructor
    public zan(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) FastJsonResponse.Field<?, ?> field) {
        this.f23536a = i;
        this.f23537b = str;
        this.f23538c = field;
    }

    public zan(String str, FastJsonResponse.Field<?, ?> field) {
        this.f23536a = 1;
        this.f23537b = str;
        this.f23538c = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23536a);
        SafeParcelWriter.m17221a(parcel, 2, this.f23537b, false);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) this.f23538c, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
