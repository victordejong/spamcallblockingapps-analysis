package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nk.class */
public final class nk implements MediationAdRequest {

    /* renamed from: a  reason: collision with root package name */
    private final Date f28215a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28216b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f28217c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f28218d;
    private final Location e;
    private final int f;
    private final boolean g;
    private final int h;
    private final String i;

    public nk(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.f28215a = date;
        this.f28216b = i;
        this.f28217c = set;
        this.e = location;
        this.f28218d = z;
        this.f = i2;
        this.g = z2;
        this.h = i3;
        this.i = str;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.f28215a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.f28216b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.f28217c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.g;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f28218d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f;
    }
}
