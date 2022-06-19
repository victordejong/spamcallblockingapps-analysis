package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@KeepForSdk
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/GetServiceRequest.class */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzm();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f5961a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f5962b;
    @SafeParcelable.Field

    /* renamed from: c */
    public int f5963c;
    @SafeParcelable.Field

    /* renamed from: d */
    public String f5964d;
    @SafeParcelable.Field

    /* renamed from: e */
    public IBinder f5965e;
    @SafeParcelable.Field

    /* renamed from: f */
    public Scope[] f5966f;
    @SafeParcelable.Field

    /* renamed from: g */
    public Bundle f5967g;
    @SafeParcelable.Field

    /* renamed from: h */
    public Account f5968h;
    @SafeParcelable.Field

    /* renamed from: i */
    public Feature[] f5969i;
    @SafeParcelable.Field

    /* renamed from: j */
    public Feature[] f5970j;
    @SafeParcelable.Field

    /* renamed from: k */
    public boolean f5971k;
    @SafeParcelable.Field

    /* renamed from: l */
    public int f5972l;
    @SafeParcelable.Field

    /* renamed from: m */
    public boolean f5973m;
    @SafeParcelable.Field

    /* renamed from: n */
    public String f5974n;

    @SafeParcelable.Constructor
    public GetServiceRequest(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) IBinder iBinder, @SafeParcelable.Param(id = 6) Scope[] scopeArr, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) Account account, @SafeParcelable.Param(id = 10) Feature[] featureArr, @SafeParcelable.Param(id = 11) Feature[] featureArr2, @SafeParcelable.Param(id = 12) boolean z, @SafeParcelable.Param(id = 13) int i4, @SafeParcelable.Param(id = 14) boolean z2, @SafeParcelable.Param(id = 15) String str2) {
        this.f5961a = i;
        this.f5962b = i2;
        this.f5963c = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f5964d = "com.google.android.gms";
        } else {
            this.f5964d = str;
        }
        if (i < 2) {
            Account account2 = null;
            if (iBinder != null) {
                IAccountAccessor m38912m1 = IAccountAccessor.Stub.m38912m1(iBinder);
                int i5 = AccountAccessor.f5937a;
                account2 = null;
                if (m38912m1 != null) {
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        account2 = m38912m1.zzb();
                    } catch (RemoteException e) {
                        account2 = null;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        throw th;
                    }
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            this.f5968h = account2;
        } else {
            this.f5965e = iBinder;
            this.f5968h = account;
        }
        this.f5966f = scopeArr;
        this.f5967g = bundle;
        this.f5969i = featureArr;
        this.f5970j = featureArr2;
        this.f5971k = z;
        this.f5972l = i4;
        this.f5973m = z2;
        this.f5974n = str2;
    }

    public GetServiceRequest(int i, String str) {
        this.f5961a = 6;
        this.f5963c = GoogleApiAvailabilityLight.f5674a;
        this.f5962b = i;
        this.f5971k = true;
        this.f5974n = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzm.m38819a(this, parcel, i);
    }
}
