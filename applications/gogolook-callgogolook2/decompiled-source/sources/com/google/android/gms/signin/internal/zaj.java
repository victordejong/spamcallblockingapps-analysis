package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p290p.p291b.C9119i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zaj.class */
public final class zaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaj> CREATOR = new C9119i();

    /* renamed from: a */
    public final int f7216a;

    /* renamed from: b */
    public final ConnectionResult f7217b;

    /* renamed from: c */
    public final ResolveAccountResponse f7218c;

    public zaj(int i) {
        this(new ConnectionResult(8, null), null);
    }

    public zaj(int i, ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this.f7216a = i;
        this.f7217b = connectionResult;
        this.f7218c = resolveAccountResponse;
    }

    public zaj(ConnectionResult connectionResult, ResolveAccountResponse resolveAccountResponse) {
        this(1, connectionResult, null);
    }

    /* renamed from: H */
    public final ResolveAccountResponse m31649H() {
        return this.f7218c;
    }

    /* renamed from: c */
    public final ConnectionResult m31648c() {
        return this.f7217b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f7216a);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f7217b, i, false);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f7218c, i, false);
        C7031b.m21229a(parcel, a);
    }
}
