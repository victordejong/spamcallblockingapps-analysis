package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@ShowFirstParty
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzi.class */
public final class zzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzi> CREATOR = new zzl();
    @SafeParcelable.Field

    /* renamed from: f */
    private final String f8126f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final String f8127g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final String f8128h;

    @SafeParcelable.Constructor
    public zzi(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) String str3) {
        this.f8126f = str;
        this.f8127g = str2;
        this.f8128h = str3;
    }

    public final String toString() {
        return String.format("DocumentId[packageName=%s, corpusName=%s, uri=%s]", this.f8126f, this.f8127g, this.f8128h);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14447q(parcel, 1, this.f8126f, false);
        SafeParcelWriter.m14447q(parcel, 2, this.f8127g, false);
        SafeParcelWriter.m14447q(parcel, 3, this.f8128h, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
