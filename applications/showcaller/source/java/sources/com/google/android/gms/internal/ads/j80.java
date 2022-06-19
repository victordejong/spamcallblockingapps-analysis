package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.AbstractC5772e;
import java.util.Date;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j80.class */
public final class j80 implements AbstractC5772e {

    /* renamed from: a */
    private final Date f24802a;

    /* renamed from: b */
    private final int f24803b;

    /* renamed from: c */
    private final Set<String> f24804c;

    /* renamed from: d */
    private final boolean f24805d;

    /* renamed from: e */
    private final Location f24806e;

    /* renamed from: f */
    private final int f24807f;

    /* renamed from: g */
    private final boolean f24808g;

    /* renamed from: h */
    private final String f24809h;

    public j80(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.f24802a = date;
        this.f24803b = i;
        this.f24804c = set;
        this.f24806e = location;
        this.f24805d = z;
        this.f24807f = i2;
        this.f24808g = z2;
        this.f24809h = str;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    /* renamed from: c */
    public final int mo10075c() {
        return this.f24807f;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    @Deprecated
    /* renamed from: e */
    public final boolean mo10073e() {
        return this.f24808g;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    @Deprecated
    /* renamed from: f */
    public final Date mo10072f() {
        return this.f24802a;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    /* renamed from: g */
    public final boolean mo10071g() {
        return this.f24805d;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    /* renamed from: h */
    public final Set<String> mo10070h() {
        return this.f24804c;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    /* renamed from: j */
    public final Location mo10068j() {
        return this.f24806e;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC5772e
    @Deprecated
    /* renamed from: k */
    public final int mo10067k() {
        return this.f24803b;
    }
}
