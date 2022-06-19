package com.google.android.gms.internal.ads;

import android.location.Location;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoj.class */
public final class zzaoj implements NativeMediationAdRequest {
    private final String zzadq;
    private final int zzcho;
    private final boolean zzchz;
    private final int zzdnq;
    private final int zzdnr;
    private final zzaeh zzdoe;
    private final List<String> zzdof = new ArrayList();
    private final Map<String, Boolean> zzdog = new HashMap();
    private final Date zzmx;
    private final Set<String> zzmz;
    private final boolean zzna;
    private final Location zznb;

    public zzaoj(Date date, int i, Set<String> set, Location location, boolean z, int i2, zzaeh zzaehVar, List<String> list, boolean z2, int i3, String str) {
        this.zzmx = date;
        this.zzcho = i;
        this.zzmz = set;
        this.zznb = location;
        this.zzna = z;
        this.zzdnq = i2;
        this.zzdoe = zzaehVar;
        this.zzchz = z2;
        this.zzdnr = i3;
        this.zzadq = str;
        if (list != null) {
            for (String str2 : list) {
                if (str2.startsWith("custom:")) {
                    String[] split = str2.split(":", 3);
                    if (split.length == 3) {
                        if (ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(split[2])) {
                            this.zzdog.put(split[1], true);
                        } else if ("false".equals(split[2])) {
                            this.zzdog.put(split[1], false);
                        }
                    }
                } else {
                    this.zzdof.add(str2);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final float getAdVolume() {
        return zzzn.zzrs().zzra();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.zzmx;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.zzcho;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.zzmz;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.zznb;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final NativeAdOptions getNativeAdOptions() {
        return zzaeh.zzc(this.zzdoe);
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions() {
        return zzaeh.zzb(this.zzdoe);
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAdMuted() {
        return zzzn.zzrs().zzrb();
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isAppInstallAdRequested() {
        List<String> list = this.zzdof;
        if (list != null) {
            return list.contains("2") || this.zzdof.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isContentAdRequested() {
        List<String> list = this.zzdof;
        if (list != null) {
            return list.contains("1") || this.zzdof.contains("6");
        }
        return false;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzchz;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.zzna;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean isUnifiedNativeAdRequested() {
        List<String> list = this.zzdof;
        return list != null && list.contains("6");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.zzdnq;
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final boolean zzvl() {
        List<String> list = this.zzdof;
        return list != null && list.contains("3");
    }

    @Override // com.google.android.gms.ads.mediation.NativeMediationAdRequest
    public final Map<String, Boolean> zzvm() {
        return this.zzdog;
    }
}
