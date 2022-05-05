package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/AuthAccountResult.class */
public class AuthAccountResult extends AbstractSafeParcelable implements e {
    public static final Parcelable.Creator<AuthAccountResult> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f4250a;

    /* renamed from: b  reason: collision with root package name */
    int f4251b;
    Intent c;

    public AuthAccountResult() {
        this((byte) 0);
    }

    private AuthAccountResult(byte b2) {
        this(2, 0, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AuthAccountResult(int i, int i2, Intent intent) {
        this.f4250a = i;
        this.f4251b = i2;
        this.c = intent;
    }

    @Override // com.google.android.gms.common.api.e
    public final Status b() {
        return this.f4251b == 0 ? Status.f3945a : Status.e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}
