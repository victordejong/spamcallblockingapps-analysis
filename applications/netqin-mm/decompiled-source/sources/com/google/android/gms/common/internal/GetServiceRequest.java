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

    /* renamed from: a */
    public final int f23429a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f23430b;
    @SafeParcelable.Field

    /* renamed from: c */
    public int f23431c;
    @SafeParcelable.Field

    /* renamed from: d */
    public String f23432d;
    @SafeParcelable.Field

    /* renamed from: e */
    public IBinder f23433e;
    @SafeParcelable.Field

    /* renamed from: f */
    public Scope[] f23434f;
    @SafeParcelable.Field

    /* renamed from: g */
    public Bundle f23435g;
    @SafeParcelable.Field

    /* renamed from: h */
    public Account f23436h;
    @SafeParcelable.Field

    /* renamed from: i */
    public Feature[] f23437i;
    @SafeParcelable.Field

    /* renamed from: j */
    public Feature[] f23438j;
    @SafeParcelable.Field

    /* renamed from: k */
    public boolean f23439k;
    @SafeParcelable.Field

    /* renamed from: l */
    public int f23440l;

    public GetServiceRequest(int i) {
        this.f23429a = 4;
        this.f23431c = GoogleApiAvailabilityLight.f23021a;
        this.f23430b = i;
        this.f23439k = true;
    }

    @SafeParcelable.Constructor
    public GetServiceRequest(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) IBinder iBinder, @SafeParcelable.Param(id = 6) Scope[] scopeArr, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) Account account, @SafeParcelable.Param(id = 10) Feature[] featureArr, @SafeParcelable.Param(id = 11) Feature[] featureArr2, @SafeParcelable.Param(id = 12) boolean z, @SafeParcelable.Param(id = 13) int i4) {
        this.f23429a = i;
        this.f23430b = i2;
        this.f23431c = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f23432d = "com.google.android.gms";
        } else {
            this.f23432d = str;
        }
        if (i < 2) {
            this.f23436h = iBinder != null ? AccountAccessor.m17399a(IAccountAccessor.Stub.m17298a(iBinder)) : null;
        } else {
            this.f23433e = iBinder;
            this.f23436h = account;
        }
        this.f23434f = scopeArr;
        this.f23435g = bundle;
        this.f23437i = featureArr;
        this.f23438j = featureArr2;
        this.f23439k = z;
        this.f23440l = i4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23429a);
        SafeParcelWriter.m17231a(parcel, 2, this.f23430b);
        SafeParcelWriter.m17231a(parcel, 3, this.f23431c);
        SafeParcelWriter.m17221a(parcel, 4, this.f23432d, false);
        SafeParcelWriter.m17228a(parcel, 5, this.f23433e, false);
        SafeParcelWriter.m17215a(parcel, 6, (Parcelable[]) this.f23434f, i, false);
        SafeParcelWriter.m17229a(parcel, 7, this.f23435g, false);
        SafeParcelWriter.m17226a(parcel, 8, (Parcelable) this.f23436h, i, false);
        SafeParcelWriter.m17215a(parcel, 10, (Parcelable[]) this.f23437i, i, false);
        SafeParcelWriter.m17215a(parcel, 11, (Parcelable[]) this.f23438j, i, false);
        SafeParcelWriter.m17218a(parcel, 12, this.f23439k);
        SafeParcelWriter.m17231a(parcel, 13, this.f23440l);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
