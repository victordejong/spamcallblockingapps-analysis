package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.ads.nk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nk.class */
public final class C12772nk implements MediationAdRequest {

    /* renamed from: a */
    private final Date f49568a;

    /* renamed from: b */
    private final int f49569b;

    /* renamed from: c */
    private final Set<String> f49570c;

    /* renamed from: d */
    private final boolean f49571d;

    /* renamed from: e */
    private final Location f49572e;

    /* renamed from: f */
    private final int f49573f;

    /* renamed from: g */
    private final boolean f49574g;

    /* renamed from: h */
    private final int f49575h;

    /* renamed from: i */
    private final String f49576i;

    public C12772nk(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.f49568a = date;
        this.f49569b = i;
        this.f49570c = set;
        this.f49572e = location;
        this.f49571d = z;
        this.f49573f = i2;
        this.f49574g = z2;
        this.f49575h = i3;
        this.f49576i = str;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.f49568a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.f49569b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.f49570c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.f49572e;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.f49574g;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f49571d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f49573f;
    }
}
