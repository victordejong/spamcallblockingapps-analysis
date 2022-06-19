package com.google.android.gms.internal.auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zzt.class */
public final class zzt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzt> CREATOR = new C7278h();

    /* renamed from: d */
    private final Credential f34318d;

    public zzt(Credential credential) {
        this.f34318d = credential;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 1, this.f34318d, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
