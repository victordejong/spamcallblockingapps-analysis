package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p290p.p291b.C9118h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zah.class */
public final class zah extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zah> CREATOR = new C9118h();

    /* renamed from: a */
    public final int f7214a;

    /* renamed from: b */
    public final ResolveAccountRequest f7215b;

    public zah(int i, ResolveAccountRequest resolveAccountRequest) {
        this.f7214a = i;
        this.f7215b = resolveAccountRequest;
    }

    public zah(ResolveAccountRequest resolveAccountRequest) {
        this(1, resolveAccountRequest);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f7214a);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f7215b, i, false);
        C7031b.m21229a(parcel, a);
    }
}
