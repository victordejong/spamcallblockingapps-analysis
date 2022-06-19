package com.google.android.gms.ads.mediation;

import android.location.Location;
import androidx.annotation.RecentlyNonNull;
import java.util.Date;
import java.util.Set;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdRequest.class */
public interface MediationAdRequest {
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;

    @RecentlyNonNull
    @Deprecated
    Date getBirthday();

    @Deprecated
    int getGender();

    @RecentlyNonNull
    Set<String> getKeywords();

    @RecentlyNonNull
    Location getLocation();

    @Deprecated
    boolean isDesignedForFamilies();

    boolean isTesting();

    int taggedForChildDirectedTreatment();
}
