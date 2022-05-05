package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zab.class */
public final class zab extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zab> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f9815f;
    @SafeParcelable.Field

    /* renamed from: g */
    private int f9816g;
    @Nullable
    @SafeParcelable.Field

    /* renamed from: h */
    private Intent f9817h;

    public zab() {
        this(0, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zab(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @Nullable @SafeParcelable.Param(id = 3) Intent intent) {
        this.f9815f = i;
        this.f9816g = i2;
        this.f9817h = intent;
    }

    private zab(int i, @Nullable Intent intent) {
        this(2, 0, null);
    }

    @Override // com.google.android.gms.common.api.Result
    /* renamed from: k */
    public final Status mo10851k() {
        return this.f9816g == 0 ? Status.f7023j : Status.f7027n;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f9815f);
        SafeParcelWriter.m14453k(parcel, 2, this.f9816g);
        SafeParcelWriter.m14448p(parcel, 3, this.f9817h, i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
