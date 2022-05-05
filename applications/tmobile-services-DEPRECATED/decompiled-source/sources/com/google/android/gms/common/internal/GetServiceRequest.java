package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GetServiceRequest.class */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzd();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7483f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final int f7484g;
    @SafeParcelable.Field

    /* renamed from: h */
    private int f7485h;
    @SafeParcelable.Field

    /* renamed from: i */
    String f7486i;
    @SafeParcelable.Field

    /* renamed from: j */
    IBinder f7487j;
    @SafeParcelable.Field

    /* renamed from: k */
    Scope[] f7488k;
    @SafeParcelable.Field

    /* renamed from: l */
    Bundle f7489l;
    @SafeParcelable.Field

    /* renamed from: m */
    Account f7490m;
    @SafeParcelable.Field

    /* renamed from: n */
    Feature[] f7491n;
    @SafeParcelable.Field

    /* renamed from: o */
    Feature[] f7492o;
    @SafeParcelable.Field

    /* renamed from: p */
    private boolean f7493p;

    public GetServiceRequest(int i) {
        this.f7483f = 4;
        this.f7485h = GoogleApiAvailabilityLight.f6980a;
        this.f7484g = i;
        this.f7493p = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GetServiceRequest(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) IBinder iBinder, @SafeParcelable.Param(id = 6) Scope[] scopeArr, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) Account account, @SafeParcelable.Param(id = 10) Feature[] featureArr, @SafeParcelable.Param(id = 11) Feature[] featureArr2, @SafeParcelable.Param(id = 12) boolean z) {
        this.f7483f = i;
        this.f7484g = i2;
        this.f7485h = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f7486i = "com.google.android.gms";
        } else {
            this.f7486i = str;
        }
        if (i < 2) {
            this.f7490m = iBinder != null ? AccountAccessor.m14598c(IAccountAccessor.Stub.m14541b(iBinder)) : null;
        } else {
            this.f7487j = iBinder;
            this.f7490m = account;
        }
        this.f7488k = scopeArr;
        this.f7489l = bundle;
        this.f7491n = featureArr;
        this.f7492o = featureArr2;
        this.f7493p = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7483f);
        SafeParcelWriter.m14453k(parcel, 2, this.f7484g);
        SafeParcelWriter.m14453k(parcel, 3, this.f7485h);
        SafeParcelWriter.m14447q(parcel, 4, this.f7486i, false);
        SafeParcelWriter.m14454j(parcel, 5, this.f7487j, false);
        SafeParcelWriter.m14444t(parcel, 6, this.f7488k, i, false);
        SafeParcelWriter.m14459e(parcel, 7, this.f7489l, false);
        SafeParcelWriter.m14448p(parcel, 8, this.f7490m, i, false);
        SafeParcelWriter.m14444t(parcel, 10, this.f7491n, i, false);
        SafeParcelWriter.m14444t(parcel, 11, this.f7492o, i, false);
        SafeParcelWriter.m14461c(parcel, 12, this.f7493p);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
