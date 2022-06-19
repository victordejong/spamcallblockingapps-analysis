package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/FavaDiagnosticsEntity.class */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new C6207a();

    /* renamed from: d */
    final int f19648d;
    @RecentlyNonNull

    /* renamed from: e */
    public final String f19649e;

    /* renamed from: f */
    public final int f19650f;

    public FavaDiagnosticsEntity(int i, @RecentlyNonNull String str, int i2) {
        this.f19648d = i;
        this.f19649e = str;
        this.f19650f = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19648d);
        C6170a.m16930r(parcel, 2, this.f19649e, false);
        C6170a.m16937k(parcel, 3, this.f19650f);
        C6170a.m16946b(parcel, m16947a);
    }
}
