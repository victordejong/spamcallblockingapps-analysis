package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/SignInRequest.class */
public class SignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInRequest> CREATOR = new g();

    /* renamed from: a  reason: collision with root package name */
    final int f4256a;

    /* renamed from: b  reason: collision with root package name */
    final ResolveAccountRequest f4257b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignInRequest(int i, ResolveAccountRequest resolveAccountRequest) {
        this.f4256a = i;
        this.f4257b = resolveAccountRequest;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        g.a(this, parcel, i);
    }
}
