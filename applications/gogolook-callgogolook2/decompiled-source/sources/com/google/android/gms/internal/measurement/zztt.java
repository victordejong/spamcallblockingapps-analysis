package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p276q.C8654k2;
import p081h.p203i.p325c.p358p.AbstractC9836c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zztt.class */
public final class zztt extends AbstractSafeParcelable implements AbstractC9836c.AbstractC9837a {
    public static final Parcelable.Creator<zztt> CREATOR = new C8654k2();

    /* renamed from: a */
    public final String f6908a;

    public zztt(String str) {
        this.f6908a = str;
    }

    /* renamed from: c */
    public final String m31825c() {
        return this.f6908a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, m31825c(), false);
        C7031b.m21229a(parcel, a);
    }
}
