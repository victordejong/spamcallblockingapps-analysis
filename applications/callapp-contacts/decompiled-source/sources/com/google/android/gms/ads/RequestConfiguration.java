package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.za;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration.class */
public class RequestConfiguration {
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    public static final List<String> zzadz = Arrays.asList("MA", "T", "PG", "G");
    private final int zzadv;
    private final int zzadw;
    private final String zzadx;
    private final List<String> zzady;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$Builder.class */
    public static class Builder {
        private int zzadv = -1;
        private int zzadw = -1;
        private String zzadx = null;
        private final List<String> zzady = new ArrayList();

        public RequestConfiguration build() {
            return new RequestConfiguration(this.zzadv, this.zzadw, this.zzadx, this.zzady);
        }

        public Builder setMaxAdContentRating(String str) {
            if (str == null || "".equals(str)) {
                this.zzadx = null;
            } else if ("G".equals(str) || "PG".equals(str) || "T".equals(str) || "MA".equals(str)) {
                this.zzadx = str;
            } else {
                String valueOf = String.valueOf(str);
                za.zzez(valueOf.length() != 0 ? "Invalid value passed to setMaxAdContentRating: ".concat(valueOf) : new String("Invalid value passed to setMaxAdContentRating: "));
            }
            return this;
        }

        public Builder setTagForChildDirectedTreatment(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.zzadv = i;
            } else {
                StringBuilder sb = new StringBuilder(68);
                sb.append("Invalid value passed to setTagForChildDirectedTreatment: ");
                sb.append(i);
                za.zzez(sb.toString());
            }
            return this;
        }

        public Builder setTagForUnderAgeOfConsent(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.zzadw = i;
            } else {
                StringBuilder sb = new StringBuilder(63);
                sb.append("Invalid value passed to setTagForUnderAgeOfConsent: ");
                sb.append(i);
                za.zzez(sb.toString());
            }
            return this;
        }

        public Builder setTestDeviceIds(List<String> list) {
            this.zzady.clear();
            if (list != null) {
                this.zzady.addAll(list);
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$MaxAdContentRating.class */
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$TagForChildDirectedTreatment.class */
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$TagForUnderAgeOfConsent.class */
    public @interface TagForUnderAgeOfConsent {
    }

    private RequestConfiguration(int i, int i2, String str, List<String> list) {
        this.zzadv = i;
        this.zzadw = i2;
        this.zzadx = str;
        this.zzady = list;
    }

    public String getMaxAdContentRating() {
        String str = this.zzadx;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public int getTagForChildDirectedTreatment() {
        return this.zzadv;
    }

    public int getTagForUnderAgeOfConsent() {
        return this.zzadw;
    }

    public List<String> getTestDeviceIds() {
        return new ArrayList(this.zzady);
    }

    public Builder toBuilder() {
        return new Builder().setTagForChildDirectedTreatment(this.zzadv).setTagForUnderAgeOfConsent(this.zzadw).setMaxAdContentRating(this.zzadx).setTestDeviceIds(this.zzady);
    }
}
