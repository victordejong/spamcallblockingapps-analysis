package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zag.class */
public final class zag extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zag> CREATOR = new zai();
    @SafeParcelable.Field

    /* renamed from: a */
    public final List<String> f30232a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f30233b;

    @SafeParcelable.Constructor
    public zag(@SafeParcelable.Param(id = 1) List<String> list, @SafeParcelable.Param(id = 2) String str) {
        this.f30232a = list;
        this.f30233b = str;
    }

    @Override // com.google.android.gms.common.api.Result
    /* renamed from: d */
    public final Status mo8632d() {
        return this.f30233b != null ? Status.f23076e : Status.f23079h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17209b(parcel, 1, this.f30232a, false);
        SafeParcelWriter.m17221a(parcel, 2, this.f30233b, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
