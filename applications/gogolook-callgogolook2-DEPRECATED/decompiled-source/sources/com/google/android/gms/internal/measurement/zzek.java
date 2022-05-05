package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p276q.C8604g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzek.class */
public final class zzek extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzek> CREATOR = new C8604g();

    /* renamed from: a */
    public final long f6892a;

    /* renamed from: b */
    public final long f6893b;

    /* renamed from: c */
    public final boolean f6894c;

    /* renamed from: d */
    public final String f6895d;

    /* renamed from: e */
    public final String f6896e;

    /* renamed from: f */
    public final String f6897f;

    /* renamed from: g */
    public final Bundle f6898g;

    public zzek(long j, long j2, boolean z, String str, String str2, String str3, Bundle bundle) {
        this.f6892a = j;
        this.f6893b = j2;
        this.f6894c = z;
        this.f6895d = str;
        this.f6896e = str2;
        this.f6897f = str3;
        this.f6898g = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21224a(parcel, 1, this.f6892a);
        C7031b.m21224a(parcel, 2, this.f6893b);
        C7031b.m21212a(parcel, 3, this.f6894c);
        C7031b.m21215a(parcel, 4, this.f6895d, false);
        C7031b.m21215a(parcel, 5, this.f6896e, false);
        C7031b.m21215a(parcel, 6, this.f6897f, false);
        C7031b.m21223a(parcel, 7, this.f6898g, false);
        C7031b.m21229a(parcel, a);
    }
}
