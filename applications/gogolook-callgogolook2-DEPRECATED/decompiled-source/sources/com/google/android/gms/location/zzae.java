package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8843p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzae.class */
public final class zzae extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzae> CREATOR = new C8843p();

    /* renamed from: a */
    public final String f6964a;

    /* renamed from: b */
    public final String f6965b;

    /* renamed from: c */
    public final String f6966c;

    public zzae(String str, String str2, String str3) {
        this.f6966c = str;
        this.f6964a = str2;
        this.f6965b = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, this.f6964a, false);
        C7031b.m21215a(parcel, 2, this.f6965b, false);
        C7031b.m21215a(parcel, 5, this.f6966c, false);
        C7031b.m21229a(parcel, a);
    }
}
