package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.C6741c;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/GoogleSignInOptionsExtensionParcelable.class */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new C6741c();

    /* renamed from: a */
    public final int f6469a;

    /* renamed from: b */
    public int f6470b;

    /* renamed from: c */
    public Bundle f6471c;

    public GoogleSignInOptionsExtensionParcelable(int i, int i2, Bundle bundle) {
        this.f6469a = i;
        this.f6470b = i2;
        this.f6471c = bundle;
    }

    /* renamed from: c */
    public int m32010c() {
        return this.f6470b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6469a);
        C7031b.m21225a(parcel, 2, m32010c());
        C7031b.m21223a(parcel, 3, this.f6471c, false);
        C7031b.m21229a(parcel, a);
    }
}
