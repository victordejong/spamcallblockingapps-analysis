package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p274o.C8501d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzad.class */
public final class zzad extends AbstractSafeParcelable implements AbstractC6835k {
    public static final Parcelable.Creator<zzad> CREATOR = new C8501d();

    /* renamed from: a */
    public final Status f6859a;

    static {
        new zzad(Status.f6510e);
    }

    public zzad(Status status) {
        this.f6859a = status;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k
    /* renamed from: b */
    public final Status mo21814b() {
        return this.f6859a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 1, (Parcelable) mo21814b(), i, false);
        C7031b.m21229a(parcel, a);
    }
}
