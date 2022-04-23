package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/zak.class */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new zaj();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f9820f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final ConnectionResult f9821g;
    @Nullable
    @SafeParcelable.Field

    /* renamed from: h */
    private final ResolveAccountResponse f9822h;

    public zak(int i) {
        this(new ConnectionResult(8, null), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zak(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ConnectionResult connectionResult, @Nullable @SafeParcelable.Param(id = 3) ResolveAccountResponse resolveAccountResponse) {
        this.f9820f = i;
        this.f9821g = connectionResult;
        this.f9822h = resolveAccountResponse;
    }

    private zak(ConnectionResult connectionResult, @Nullable ResolveAccountResponse resolveAccountResponse) {
        this(1, connectionResult, null);
    }

    /* renamed from: B */
    public final ConnectionResult m10842B() {
        return this.f9821g;
    }

    @Nullable
    /* renamed from: I */
    public final ResolveAccountResponse m10841I() {
        return this.f9822h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f9820f);
        SafeParcelWriter.m14448p(parcel, 2, this.f9821g, i, false);
        SafeParcelWriter.m14448p(parcel, 3, this.f9822h, i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
