package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdConfiguration.class */
public class MediationAdConfiguration {
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    private final Context context;
    private final String zzadq;
    private final int zzdnq;
    private final String zzdoq;
    private final String zzeuo;
    private final Bundle zzeup;
    private final Bundle zzeuq;
    private final int zzeur;
    private final boolean zzna;
    private final Location zznb;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdConfiguration$TagForChildDirectedTreatment.class */
    public @interface TagForChildDirectedTreatment {
    }

    public MediationAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i, int i2, String str2, String str3) {
        this.zzeuo = str;
        this.zzeup = bundle;
        this.zzeuq = bundle2;
        this.context = context;
        this.zzna = z;
        this.zznb = location;
        this.zzdnq = i;
        this.zzeur = i2;
        this.zzadq = str2;
        this.zzdoq = str3;
    }

    public String getBidResponse() {
        return this.zzeuo;
    }

    public Context getContext() {
        return this.context;
    }

    public Location getLocation() {
        return this.zznb;
    }

    public String getMaxAdContentRating() {
        return this.zzadq;
    }

    public Bundle getMediationExtras() {
        return this.zzeuq;
    }

    public Bundle getServerParameters() {
        return this.zzeup;
    }

    public String getWatermark() {
        return this.zzdoq;
    }

    public boolean isTestRequest() {
        return this.zzna;
    }

    public int taggedForChildDirectedTreatment() {
        return this.zzdnq;
    }

    public int taggedForUnderAgeTreatment() {
        return this.zzeur;
    }
}
