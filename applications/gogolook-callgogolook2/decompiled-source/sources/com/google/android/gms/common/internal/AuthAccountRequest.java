package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7049z;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/AuthAccountRequest.class */
public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new C7049z();

    /* renamed from: a */
    public final int f6577a;
    @Deprecated

    /* renamed from: b */
    public final IBinder f6578b;

    /* renamed from: c */
    public final Scope[] f6579c;

    /* renamed from: d */
    public Integer f6580d;

    /* renamed from: e */
    public Integer f6581e;

    /* renamed from: f */
    public Account f6582f;

    public AuthAccountRequest(int i, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2, Account account) {
        this.f6577a = i;
        this.f6578b = iBinder;
        this.f6579c = scopeArr;
        this.f6580d = num;
        this.f6581e = num2;
        this.f6582f = account;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6577a);
        C7031b.m21222a(parcel, 2, this.f6578b, false);
        C7031b.m21209a(parcel, 3, (Parcelable[]) this.f6579c, i, false);
        C7031b.m21217a(parcel, 4, this.f6580d, false);
        C7031b.m21217a(parcel, 5, this.f6581e, false);
        C7031b.m21220a(parcel, 6, (Parcelable) this.f6582f, i, false);
        C7031b.m21229a(parcel, a);
    }
}
