package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdConfiguration.class */
public class MediationAdConfiguration {
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    private final Context context;
    private final String zzadx;
    private final int zzdos;
    private final String zzdpg;
    private final String zzewu;
    private final Bundle zzewv;
    private final Bundle zzeww;
    private final int zzewx;
    private final boolean zznf;
    private final Location zzng;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdConfiguration$TagForChildDirectedTreatment.class */
    public @interface TagForChildDirectedTreatment {
    }

    public MediationAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i, int i2, String str2, String str3) {
        this.zzewu = str;
        this.zzewv = bundle;
        this.zzeww = bundle2;
        this.context = context;
        this.zznf = z;
        this.zzng = location;
        this.zzdos = i;
        this.zzewx = i2;
        this.zzadx = str2;
        this.zzdpg = str3;
    }

    public String getBidResponse() {
        return this.zzewu;
    }

    public Context getContext() {
        return this.context;
    }

    public Location getLocation() {
        return this.zzng;
    }

    public String getMaxAdContentRating() {
        return this.zzadx;
    }

    public Bundle getMediationExtras() {
        return this.zzeww;
    }

    public Bundle getServerParameters() {
        return this.zzewv;
    }

    public String getWatermark() {
        return this.zzdpg;
    }

    public boolean isTestRequest() {
        return this.zznf;
    }

    public int taggedForChildDirectedTreatment() {
        return this.zzdos;
    }

    public int taggedForUnderAgeTreatment() {
        return this.zzewx;
    }
}
