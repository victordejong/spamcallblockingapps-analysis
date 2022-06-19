package com.google.ads.mediation;

import android.location.Location;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.AdRequest;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/MediationAdRequest.class */
public class MediationAdRequest {
    private final Date zza;
    private final AdRequest.Gender zzb;
    private final Set<String> zzc;
    private final boolean zzd;
    private final Location zze;

    public MediationAdRequest(@RecentlyNonNull Date date, @RecentlyNonNull AdRequest.Gender gender, @RecentlyNonNull Set<String> set, boolean z, @RecentlyNonNull Location location) {
        this.zza = date;
        this.zzb = gender;
        this.zzc = set;
        this.zzd = z;
        this.zze = location;
    }

    @RecentlyNonNull
    public Integer getAgeInYears() {
        if (this.zza != null) {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar.setTime(this.zza);
            Integer valueOf = Integer.valueOf(calendar2.get(1) - calendar.get(1));
            return (calendar2.get(2) < calendar.get(2) || (calendar2.get(2) == calendar.get(2) && calendar2.get(5) < calendar.get(5))) ? Integer.valueOf(valueOf.intValue() - 1) : valueOf;
        }
        return null;
    }

    @RecentlyNonNull
    public Date getBirthday() {
        return this.zza;
    }

    @RecentlyNonNull
    public AdRequest.Gender getGender() {
        return this.zzb;
    }

    @RecentlyNonNull
    public Set<String> getKeywords() {
        return this.zzc;
    }

    @RecentlyNonNull
    public Location getLocation() {
        return this.zze;
    }

    public boolean isTesting() {
        return this.zzd;
    }
}
