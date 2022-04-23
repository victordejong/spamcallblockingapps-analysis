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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zal.class */
public final class zal extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zal> CREATOR = new zak();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7612f;
    @SafeParcelable.Field

    /* renamed from: g */
    final String f7613g;
    @SafeParcelable.Field

    /* renamed from: h */
    final FastJsonResponse.Field<?, ?> f7614h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zal(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) FastJsonResponse.Field<?, ?> field) {
        this.f7612f = i;
        this.f7613g = str;
        this.f7614h = field;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(String str, FastJsonResponse.Field<?, ?> field) {
        this.f7612f = 1;
        this.f7613g = str;
        this.f7614h = field;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7612f);
        SafeParcelWriter.m14447q(parcel, 2, this.f7613g, false);
        SafeParcelWriter.m14448p(parcel, 3, this.f7614h, i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
