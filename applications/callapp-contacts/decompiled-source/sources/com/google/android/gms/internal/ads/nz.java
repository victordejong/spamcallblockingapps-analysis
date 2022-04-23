package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nz.class */
public final class nz implements NativeMediationAdRequest {

    /* renamed from: a  reason: collision with root package name */
    private final Date f28247a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28248b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f28249c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f28250d;
    private final Location e;
    private final int f;
    private final zzaei g;
    private final boolean i;
    private final int k;
    private final String l;
    private final List<String> h = new ArrayList();
    private final Map<String, Boolean> j = new HashMap();

    public nz(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzaei zzaeiVar, List<String> list, boolean z2, int i3, String str) {
        this.f28247a = date;
        this.f28248b = i;
        this.f28249c = set;
        this.e = location;
        this.f28250d = z;
        this.f = i2;
        this.g = zzaeiVar;
        this.i = z2;
        this.k = i3;
        this.l = str;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.j.put(split[1], Boolean.TRUE);
                        } else if ("false".equals(split[2])) {
                            this.j.put(split[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.h.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return emy.a().b();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.f28247a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.f28248b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.f28249c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        return zzaei.zzc(this.g);
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions() {
        return zzaei.zzb(this.g);
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return emy.a().c();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAppInstallAdRequested() {
        List<String> list = this.h;
        if (list != null) {
            return list.contains("2") || this.h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isContentAdRequested() {
        List<String> list = this.h;
        if (list != null) {
            return list.contains("1") || this.h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.i;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f28250d;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        List<String> list = this.h;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzvw() {
        List<String> list = this.h;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zzvx() {
        return this.j;
    }
}
