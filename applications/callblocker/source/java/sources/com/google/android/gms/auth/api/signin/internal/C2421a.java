package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.auth.api.signin.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/a.class */
public class C2421a extends AbstractC2663a {
    public static final Parcelable.Creator<C2421a> CREATOR = new C2424d();

    /* renamed from: a */
    private final int f6948a;

    /* renamed from: b */
    private int f6949b;

    /* renamed from: c */
    private Bundle f6950c;

    public C2421a(int i, int i2, Bundle bundle) {
        this.f6948a = i;
        this.f6949b = i2;
        this.f6950c = bundle;
    }

    /* renamed from: a */
    public int m14535a() {
        return this.f6949b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f6948a);
        C2664b.m13941a(parcel, 2, m14535a());
        C2664b.m13939a(parcel, 3, this.f6950c, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
