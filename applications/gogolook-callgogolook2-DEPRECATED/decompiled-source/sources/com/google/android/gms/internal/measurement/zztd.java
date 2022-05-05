package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p259j.p276q.C8771x1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zztd.class */
public final class zztd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztd> CREATOR = new C8771x1();

    /* renamed from: a */
    public String f6899a;

    /* renamed from: b */
    public String f6900b;

    /* renamed from: c */
    public int f6901c;

    /* renamed from: d */
    public long f6902d;

    /* renamed from: e */
    public Bundle f6903e;

    /* renamed from: f */
    public Uri f6904f;

    public zztd(String str, String str2, int i, long j, Bundle bundle, Uri uri) {
        this.f6902d = 0L;
        this.f6903e = null;
        this.f6899a = str;
        this.f6900b = str2;
        this.f6901c = i;
        this.f6902d = j;
        this.f6903e = bundle;
        this.f6904f = uri;
    }

    /* renamed from: H */
    public final String m31832H() {
        return this.f6900b;
    }

    /* renamed from: I */
    public final Bundle m31831I() {
        Bundle bundle = this.f6903e;
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        return bundle2;
    }

    /* renamed from: c */
    public final long m31830c() {
        return this.f6902d;
    }

    /* renamed from: g */
    public final void m31829g(long j) {
        this.f6902d = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, this.f6899a, false);
        C7031b.m21215a(parcel, 2, this.f6900b, false);
        C7031b.m21225a(parcel, 3, this.f6901c);
        C7031b.m21224a(parcel, 4, this.f6902d);
        C7031b.m21223a(parcel, 5, m31831I(), false);
        C7031b.m21220a(parcel, 6, (Parcelable) this.f6904f, i, false);
        C7031b.m21229a(parcel, a);
    }
}
