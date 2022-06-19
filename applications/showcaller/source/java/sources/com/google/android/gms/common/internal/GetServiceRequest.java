package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AbstractC6134i;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GetServiceRequest.class */
public class GetServiceRequest extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new C6140j1();

    /* renamed from: d */
    final int f19456d;

    /* renamed from: e */
    final int f19457e;

    /* renamed from: f */
    int f19458f;

    /* renamed from: g */
    String f19459g;

    /* renamed from: h */
    IBinder f19460h;

    /* renamed from: i */
    Scope[] f19461i;

    /* renamed from: j */
    Bundle f19462j;

    /* renamed from: k */
    Account f19463k;

    /* renamed from: l */
    Feature[] f19464l;

    /* renamed from: m */
    Feature[] f19465m;

    /* renamed from: n */
    boolean f19466n;

    /* renamed from: o */
    int f19467o;

    /* renamed from: p */
    boolean f19468p;

    /* renamed from: q */
    private final String f19469q;

    public GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Feature[] featureArr, Feature[] featureArr2, boolean z, int i4, boolean z2, String str2) {
        this.f19456d = i;
        this.f19457e = i2;
        this.f19458f = i3;
        if ("com.google.android.gms".equals(str)) {
            this.f19459g = "com.google.android.gms";
        } else {
            this.f19459g = str;
        }
        if (i < 2) {
            this.f19463k = iBinder != null ? BinderC6104a.m17146J0(AbstractC6134i.AbstractBinderC6135a.m17054D0(iBinder)) : null;
        } else {
            this.f19460h = iBinder;
            this.f19463k = account;
        }
        this.f19461i = scopeArr;
        this.f19462j = bundle;
        this.f19464l = featureArr;
        this.f19465m = featureArr2;
        this.f19466n = z;
        this.f19467o = i4;
        this.f19468p = z2;
        this.f19469q = str2;
    }

    public GetServiceRequest(int i, String str) {
        this.f19456d = 6;
        this.f19458f = C6086c.f19385a;
        this.f19457e = i;
        this.f19466n = true;
        this.f19469q = str;
    }

    @RecentlyNullable
    /* renamed from: k0 */
    public final String m17155k0() {
        return this.f19469q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        C6140j1.m17052a(this, parcel, i);
    }
}
