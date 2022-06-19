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
/* renamed from: com.google.android.gms.internal.ads.nz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nz.class */
public final class C12787nz implements NativeMediationAdRequest {

    /* renamed from: a */
    private final Date f49611a;

    /* renamed from: b */
    private final int f49612b;

    /* renamed from: c */
    private final Set<String> f49613c;

    /* renamed from: d */
    private final boolean f49614d;

    /* renamed from: e */
    private final Location f49615e;

    /* renamed from: f */
    private final int f49616f;

    /* renamed from: g */
    private final zzaei f49617g;

    /* renamed from: i */
    private final boolean f49619i;

    /* renamed from: k */
    private final int f49621k;

    /* renamed from: l */
    private final String f49622l;

    /* renamed from: h */
    private final List<String> f49618h = new ArrayList();

    /* renamed from: j */
    private final Map<String, Boolean> f49620j = new HashMap();

    public C12787nz(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzaei zzaeiVar, List<String> list, boolean z2, int i3, String str) {
        this.f49611a = date;
        this.f49612b = i;
        this.f49613c = set;
        this.f49615e = location;
        this.f49614d = z;
        this.f49616f = i2;
        this.f49617g = zzaeiVar;
        this.f49619i = z2;
        this.f49621k = i3;
        this.f49622l = str;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if ("true".equals(split[2])) {
                            this.f49620j.put(split[1], Boolean.TRUE);
                        } else if ("false".equals(split[2])) {
                            this.f49620j.put(split[1], Boolean.FALSE);
                        }
                    }
                } else {
                    this.f49618h.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return emy.m14729a().m14723b();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.f49611a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.f49612b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.f49613c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.f49615e;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        return zzaei.zzc(this.f49617g);
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions() {
        return zzaei.zzb(this.f49617g);
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return emy.m14729a().m14719c();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAppInstallAdRequested() {
        List<String> list = this.f49618h;
        if (list != null) {
            return list.contains("2") || this.f49618h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isContentAdRequested() {
        List<String> list = this.f49618h;
        if (list != null) {
            return list.contains("1") || this.f49618h.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.f49619i;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f49614d;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        List<String> list = this.f49618h;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f49616f;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzvw() {
        List<String> list = this.f49618h;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zzvx() {
        return this.f49620j;
    }
}
