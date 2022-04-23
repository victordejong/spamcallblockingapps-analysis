package com.google.android.gms.common.server;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/FavaDiagnosticsEntity.class */
public class FavaDiagnosticsEntity extends AbstractSafeParcelable {
    public static final a CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f4056a;

    /* renamed from: b  reason: collision with root package name */
    public final String f4057b;
    public final int c;

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.f4056a = i;
        this.f4057b = str;
        this.c = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel);
    }
}
