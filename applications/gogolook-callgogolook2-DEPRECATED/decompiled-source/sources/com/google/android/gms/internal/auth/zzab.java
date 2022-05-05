package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p264e.C7514b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzab.class */
public final class zzab extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzab> CREATOR = new C7514b();

    /* renamed from: a */
    public final int f6796a = 1;

    /* renamed from: b */
    public final String f6797b;

    /* renamed from: c */
    public final int f6798c;

    public zzab(int i, String str, int i2) {
        C7021t.m21290a(str);
        this.f6797b = str;
        this.f6798c = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6796a);
        C7031b.m21215a(parcel, 2, this.f6797b, false);
        C7031b.m21225a(parcel, 3, this.f6798c);
        C7031b.m21229a(parcel, a);
    }
}
