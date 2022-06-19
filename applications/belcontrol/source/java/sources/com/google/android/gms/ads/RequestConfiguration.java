package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzazk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration.class */
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
    public static final List<String> zzads = Arrays.asList("MA", "T", "PG", "G");
    private final int zzado;
    private final int zzadp;
    private final String zzadq;
    private final List<String> zzadr;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$Builder.class */
    public static class Builder {
        private int zzado = -1;
        private int zzadp = -1;
        private String zzadq = null;
        private final List<String> zzadr = new ArrayList();

        public RequestConfiguration build() {
            return new RequestConfiguration(this.zzado, this.zzadp, this.zzadq, this.zzadr);
        }

        public Builder setMaxAdContentRating(String str) {
            String str2;
            if (str == null || "".equals(str)) {
                str2 = null;
            } else {
                str2 = str;
                if (!"G".equals(str)) {
                    str2 = str;
                    if (!"PG".equals(str)) {
                        str2 = str;
                        if (!"T".equals(str)) {
                            if (!"MA".equals(str)) {
                                String valueOf = String.valueOf(str);
                                zzazk.zzex(valueOf.length() != 0 ? "Invalid value passed to setMaxAdContentRating: ".concat(valueOf) : new String("Invalid value passed to setMaxAdContentRating: "));
                                return this;
                            }
                            str2 = str;
                        }
                    }
                }
            }
            this.zzadq = str2;
            return this;
        }

        public Builder setTagForChildDirectedTreatment(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.zzado = i;
            } else {
                StringBuilder sb = new StringBuilder(68);
                sb.append("Invalid value passed to setTagForChildDirectedTreatment: ");
                sb.append(i);
                zzazk.zzex(sb.toString());
            }
            return this;
        }

        public Builder setTagForUnderAgeOfConsent(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.zzadp = i;
            } else {
                StringBuilder sb = new StringBuilder(63);
                sb.append("Invalid value passed to setTagForUnderAgeOfConsent: ");
                sb.append(i);
                zzazk.zzex(sb.toString());
            }
            return this;
        }

        public Builder setTestDeviceIds(@Nullable List<String> list) {
            this.zzadr.clear();
            if (list != null) {
                this.zzadr.addAll(list);
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$MaxAdContentRating.class */
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$TagForChildDirectedTreatment.class */
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$TagForUnderAgeOfConsent.class */
    public @interface TagForUnderAgeOfConsent {
    }

    private RequestConfiguration(int i, int i2, String str, List<String> list) {
        this.zzado = i;
        this.zzadp = i2;
        this.zzadq = str;
        this.zzadr = list;
    }

    public String getMaxAdContentRating() {
        String str = this.zzadq;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public int getTagForChildDirectedTreatment() {
        return this.zzado;
    }

    public int getTagForUnderAgeOfConsent() {
        return this.zzadp;
    }

    public List<String> getTestDeviceIds() {
        return new ArrayList(this.zzadr);
    }

    public Builder toBuilder() {
        return new Builder().setTagForChildDirectedTreatment(this.zzado).setTagForUnderAgeOfConsent(this.zzadp).setMaxAdContentRating(this.zzadq).setTestDeviceIds(this.zzadr);
    }
}
