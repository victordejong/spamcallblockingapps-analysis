package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zab.class */
public final class zab extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zab> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f30229a;
    @SafeParcelable.Field

    /* renamed from: b */
    public int f30230b;
    @SafeParcelable.Field

    /* renamed from: c */
    public Intent f30231c;

    public zab() {
        this(0, null);
    }

    @SafeParcelable.Constructor
    public zab(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) Intent intent) {
        this.f30229a = i;
        this.f30230b = i2;
        this.f30231c = intent;
    }

    public zab(int i, Intent intent) {
        this(2, 0, null);
    }

    @Override // com.google.android.gms.common.api.Result
    /* renamed from: d */
    public final Status mo8632d() {
        return this.f30230b == 0 ? Status.f23076e : Status.f23079h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f30229a);
        SafeParcelWriter.m17231a(parcel, 2, this.f30230b);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) this.f30231c, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
