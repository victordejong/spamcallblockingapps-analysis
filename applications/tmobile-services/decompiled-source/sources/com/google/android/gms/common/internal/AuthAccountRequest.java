package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/AuthAccountRequest.class */
public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new zaa();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7439f;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: g */
    private final IBinder f7440g;
    @SafeParcelable.Field

    /* renamed from: h */
    private final Scope[] f7441h;
    @SafeParcelable.Field

    /* renamed from: i */
    private Integer f7442i;
    @SafeParcelable.Field

    /* renamed from: j */
    private Integer f7443j;
    @SafeParcelable.Field

    /* renamed from: k */
    private Account f7444k;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AuthAccountRequest(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) Scope[] scopeArr, @SafeParcelable.Param(id = 4) Integer num, @SafeParcelable.Param(id = 5) Integer num2, @SafeParcelable.Param(id = 6) Account account) {
        this.f7439f = i;
        this.f7440g = iBinder;
        this.f7441h = scopeArr;
        this.f7442i = num;
        this.f7443j = num2;
        this.f7444k = account;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7439f);
        SafeParcelWriter.m14454j(parcel, 2, this.f7440g, false);
        SafeParcelWriter.m14444t(parcel, 3, this.f7441h, i, false);
        SafeParcelWriter.m14452l(parcel, 4, this.f7442i, false);
        SafeParcelWriter.m14452l(parcel, 5, this.f7443j, false);
        SafeParcelWriter.m14448p(parcel, 6, this.f7444k, i, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
