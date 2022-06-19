package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.firebase.dynamiclinks.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/a.class */
public class C4910a extends AbstractC2663a {
    public static final Parcelable.Creator<C4910a> CREATOR = new C4911b();

    /* renamed from: a */
    private String f21028a;

    /* renamed from: b */
    private String f21029b;

    /* renamed from: c */
    private int f21030c;

    /* renamed from: d */
    private long f21031d;

    /* renamed from: e */
    private Bundle f21032e;

    /* renamed from: f */
    private Uri f21033f;

    public C4910a(String str, String str2, int i, long j, Bundle bundle, Uri uri) {
        this.f21031d = 0L;
        this.f21032e = null;
        this.f21028a = str;
        this.f21029b = str2;
        this.f21030c = i;
        this.f21031d = j;
        this.f21032e = bundle;
        this.f21033f = uri;
    }

    /* renamed from: a */
    public final String m2039a() {
        return this.f21029b;
    }

    /* renamed from: a */
    public final void m2038a(long j) {
        this.f21031d = j;
    }

    /* renamed from: b */
    public final long m2037b() {
        return this.f21031d;
    }

    /* renamed from: c */
    public final Bundle m2036c() {
        return this.f21032e == null ? new Bundle() : this.f21032e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, this.f21028a, false);
        C2664b.m13932a(parcel, 2, this.f21029b, false);
        C2664b.m13941a(parcel, 3, this.f21030c);
        C2664b.m13940a(parcel, 4, this.f21031d);
        C2664b.m13939a(parcel, 5, m2036c(), false);
        C2664b.m13937a(parcel, 6, (Parcelable) this.f21033f, i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
