package com.google.android.gms.ads;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration.class */
public class RequestConfiguration {

    /* renamed from: e */
    public static final List<String> f22670e = Arrays.asList("MA", "T", "PG", "G");

    /* renamed from: a */
    public final int f22671a;

    /* renamed from: b */
    public final int f22672b;

    /* renamed from: c */
    public final String f22673c;

    /* renamed from: d */
    public final List<String> f22674d;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public int f22675a = -1;

        /* renamed from: b */
        public int f22676b = -1;

        /* renamed from: c */
        public String f22677c = null;

        /* renamed from: d */
        public final List<String> f22678d = new ArrayList();

        /* renamed from: a */
        public RequestConfiguration m18095a() {
            return new RequestConfiguration(this.f22675a, this.f22676b, this.f22677c, this.f22678d);
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

    public RequestConfiguration(int i, int i2, String str, List<String> list) {
        this.f22671a = i;
        this.f22672b = i2;
        this.f22673c = str;
        this.f22674d = list;
    }

    /* renamed from: a */
    public String m18099a() {
        String str = this.f22673c;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: b */
    public int m18098b() {
        return this.f22671a;
    }

    /* renamed from: c */
    public int m18097c() {
        return this.f22672b;
    }

    /* renamed from: d */
    public List<String> m18096d() {
        return new ArrayList(this.f22674d);
    }
}
