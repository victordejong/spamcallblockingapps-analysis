package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.AbstractC2360e;
import java.util.Date;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.ads.li */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/li.class */
public final class C3301li implements AbstractC2360e {

    /* renamed from: a */
    private final Date f16899a;

    /* renamed from: b */
    private final int f16900b;

    /* renamed from: c */
    private final Set<String> f16901c;

    /* renamed from: d */
    private final boolean f16902d;

    /* renamed from: e */
    private final Location f16903e;

    /* renamed from: f */
    private final int f16904f;

    /* renamed from: g */
    private final boolean f16905g;

    /* renamed from: h */
    private final int f16906h;

    /* renamed from: i */
    private final String f16907i;

    public C3301li(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.f16899a = date;
        this.f16900b = i;
        this.f16901c = set;
        this.f16903e = location;
        this.f16902d = z;
        this.f16904f = i2;
        this.f16905g = z2;
        this.f16906h = i3;
        this.f16907i = str;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    @Deprecated
    /* renamed from: a */
    public final Date mo7569a() {
        return this.f16899a;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    @Deprecated
    /* renamed from: b */
    public final int mo7568b() {
        return this.f16900b;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    /* renamed from: c */
    public final Set<String> mo7567c() {
        return this.f16901c;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    /* renamed from: d */
    public final Location mo7566d() {
        return this.f16903e;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    /* renamed from: e */
    public final int mo7565e() {
        return this.f16904f;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    /* renamed from: f */
    public final boolean mo7564f() {
        return this.f16902d;
    }

    @Override // com.google.android.gms.ads.mediation.AbstractC2360e
    @Deprecated
    /* renamed from: g */
    public final boolean mo7563g() {
        return this.f16905g;
    }
}
