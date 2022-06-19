package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest;
import java.util.Date;
import java.util.Set;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationAdRequest.class */
public class MediationAdRequest {
    private final Date zzmx;
    private final AdRequest.Gender zzmy;
    private final Set<String> zzmz;
    private final boolean zzna;
    private final Location zznb;

    public MediationAdRequest(Date date, AdRequest.Gender gender, Set<String> set, boolean z, Location location) {
        this.zzmx = date;
        this.zzmy = gender;
        this.zzmz = set;
        this.zzna = z;
        this.zznb = location;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0050, code lost:
        if (r0.get(5) < r0.get(5)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Integer getAgeInYears() {
        /*
            r4 = this;
            r0 = r4
            java.util.Date r0 = r0.zzmx
            if (r0 == 0) goto L61
            java.util.Calendar r0 = java.util.Calendar.getInstance()
            r5 = r0
            java.util.Calendar r0 = java.util.Calendar.getInstance()
            r6 = r0
            r0 = r5
            r1 = r4
            java.util.Date r1 = r1.zzmx
            r0.setTime(r1)
            r0 = r6
            r1 = 1
            int r0 = r0.get(r1)
            r1 = r5
            r2 = 1
            int r1 = r1.get(r2)
            int r0 = r0 - r1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7 = r0
            r0 = r6
            r1 = 2
            int r0 = r0.get(r1)
            r1 = r5
            r2 = 2
            int r1 = r1.get(r2)
            if (r0 < r1) goto L53
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = 2
            int r0 = r0.get(r1)
            r1 = r5
            r2 = 2
            int r1 = r1.get(r2)
            if (r0 != r1) goto L5e
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = 5
            int r0 = r0.get(r1)
            r1 = r5
            r2 = 5
            int r1 = r1.get(r2)
            if (r0 >= r1) goto L5e
        L53:
            r0 = r7
            int r0 = r0.intValue()
            r1 = 1
            int r0 = r0 - r1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r8 = r0
        L5e:
            r0 = r8
            return r0
        L61:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.mediation.MediationAdRequest.getAgeInYears():java.lang.Integer");
    }

    public Date getBirthday() {
        return this.zzmx;
    }

    public AdRequest.Gender getGender() {
        return this.zzmy;
    }

    public Set<String> getKeywords() {
        return this.zzmz;
    }

    public Location getLocation() {
        return this.zznb;
    }

    public boolean isTesting() {
        return this.zzna;
    }
}
