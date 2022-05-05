package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p290p.p291b.C9112b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zaa.class */
public final class zaa extends AbstractSafeParcelable implements AbstractC6835k {
    public static final Parcelable.Creator<zaa> CREATOR = new C9112b();

    /* renamed from: a */
    public final int f7211a;

    /* renamed from: b */
    public int f7212b;

    /* renamed from: c */
    public Intent f7213c;

    public zaa() {
        this(0, null);
    }

    public zaa(int i, int i2, Intent intent) {
        this.f7211a = i;
        this.f7212b = i2;
        this.f7213c = intent;
    }

    public zaa(int i, Intent intent) {
        this(2, 0, null);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k
    /* renamed from: b */
    public final Status mo21814b() {
        return this.f7212b == 0 ? Status.f6510e : Status.f6513h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f7211a);
        C7031b.m21225a(parcel, 2, this.f7212b);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f7213c, i, false);
        C7031b.m21229a(parcel, a);
    }
}
