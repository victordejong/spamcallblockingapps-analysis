package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p264e.C7515c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzad.class */
public final class zzad extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzad> CREATOR = new C7515c();

    /* renamed from: a */
    public final int f6799a = 1;

    /* renamed from: b */
    public final String f6800b;

    public zzad(int i, String str) {
        C7021t.m21290a(str);
        this.f6800b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6799a);
        C7031b.m21215a(parcel, 2, this.f6800b, false);
        C7031b.m21229a(parcel, a);
    }
}
