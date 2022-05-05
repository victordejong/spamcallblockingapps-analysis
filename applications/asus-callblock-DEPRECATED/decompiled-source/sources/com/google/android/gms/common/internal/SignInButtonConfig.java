package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/SignInButtonConfig.class */
public class SignInButtonConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInButtonConfig> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    final int f3992a;

    /* renamed from: b  reason: collision with root package name */
    final int f3993b;
    final int c;
    final Scope[] d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignInButtonConfig(int i, int i2, int i3, Scope[] scopeArr) {
        this.f3992a = i;
        this.f3993b = i2;
        this.c = i3;
        this.d = scopeArr;
    }

    public SignInButtonConfig(int i, int i2, Scope[] scopeArr) {
        this(1, i, i2, scopeArr);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}
