package com.google.android.gms.internal.auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p263d.C7509f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zzs.class */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new C7509f();

    /* renamed from: a */
    public final Credential f6809a;

    public zzs(Credential credential) {
        this.f6809a = credential;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 1, (Parcelable) this.f6809a, i, false);
        C7031b.m21229a(parcel, a);
    }
}
