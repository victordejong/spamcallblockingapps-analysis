package com.verizon.ads;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/RequestMetadata.class */
public final class RequestMetadata {

    /* renamed from: a */
    private Map<String, Object> f61219a;

    /* renamed from: b */
    private Map<String, Object> f61220b;

    /* renamed from: c */
    private Map<String, Object> f61221c;

    /* renamed from: d */
    private Map<String, Object> f61222d;

    /* renamed from: e */
    private List<String> f61223e;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/RequestMetadata$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private Map<String, Object> f61224a;

        /* renamed from: c */
        private Map<String, Object> f61226c;

        /* renamed from: e */
        private Map<String, Object> f61228e;

        /* renamed from: g */
        private Map<String, Object> f61230g;

        /* renamed from: h */
        private List<String> f61231h;

        /* renamed from: b */
        private final Map<String, Object> f61225b = new HashMap();

        /* renamed from: d */
        private final Map<String, Object> f61227d = new HashMap();

        /* renamed from: f */
        private final Map<String, Object> f61229f = new HashMap();

        public Builder() {
        }

        public Builder(RequestMetadata requestMetadata) {
            if (requestMetadata != null) {
                this.f61224a = m5550a(requestMetadata.f61219a);
                this.f61226c = m5550a(requestMetadata.f61220b);
                this.f61228e = m5550a(requestMetadata.f61221c);
                this.f61230g = m5550a(requestMetadata.f61222d);
                List list = requestMetadata.f61223e;
                this.f61231h = list == null ? null : new ArrayList(list);
            }
        }

        /* renamed from: a */
        private static <T> Map<String, T> m5550a(Map<String, T> map) {
            if (map == null) {
                return null;
            }
            return new HashMap(map);
        }

        public final RequestMetadata build() {
            if (!this.f61225b.isEmpty()) {
                if (this.f61224a == null) {
                    this.f61224a = new HashMap();
                }
                this.f61224a.putAll(this.f61225b);
            }
            if (!this.f61229f.isEmpty()) {
                if (this.f61228e == null) {
                    this.f61228e = new HashMap();
                }
                this.f61228e.putAll(this.f61229f);
            }
            if (!this.f61227d.isEmpty()) {
                if (this.f61226c == null) {
                    this.f61226c = new HashMap();
                }
                this.f61226c.putAll(this.f61227d);
            }
            return new RequestMetadata(this.f61224a, this.f61226c, this.f61228e, this.f61230g, this.f61231h);
        }

        public final Map<String, Object> getAppData() {
            return this.f61226c;
        }

        public final Map<String, Object> getExtras() {
            return this.f61230g;
        }

        public final Map<String, Object> getPlacementData() {
            return this.f61228e;
        }

        public final List<String> getSupportedOrientations() {
            return this.f61231h;
        }

        public final Map<String, Object> getUserData() {
            return this.f61224a;
        }

        public final Builder putExtra(String str, Object obj) {
            if (this.f61230g == null) {
                this.f61230g = new HashMap();
            }
            this.f61230g.put(str, obj);
            return this;
        }

        public final Builder setAppData(Map<String, Object> map) {
            this.f61226c = map;
            return this;
        }

        public final Builder setExtras(Map<String, Object> map) {
            this.f61230g = map;
            return this;
        }

        public final Builder setImpressionGroup(String str) {
            this.f61229f.put("impressionGroup", str);
            return this;
        }

        public final Builder setMediator(String str) {
            this.f61227d.put(VerizonSSPWaterfallProvider.APP_DATA_MEDIATOR_KEY, str);
            return this;
        }

        public final Builder setPlacementData(Map<String, Object> map) {
            this.f61228e = map;
            return this;
        }

        public final Builder setSupportedOrientations(List<String> list) {
            this.f61231h = list;
            return this;
        }

        public final Builder setUserAge(Integer num) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_AGE_KEY, num);
            return this;
        }

        public final Builder setUserChildren(Integer num) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_CHILDREN_KEY, num);
            return this;
        }

        public final Builder setUserCountry(String str) {
            this.f61225b.put("country", str);
            return this;
        }

        public final Builder setUserData(Map<String, Object> map) {
            this.f61224a = map;
            return this;
        }

        public final Builder setUserDma(String str) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_DMA_KEY, str);
            return this;
        }

        public final Builder setUserDob(Date date) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_DOB_KEY, date);
            return this;
        }

        public final Builder setUserEducation(Education education) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_EDUCATION_KEY, education.value);
            return this;
        }

        public final Builder setUserEthnicity(Ethnicity ethnicity) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_ETHNICITY_KEY, ethnicity.value);
            return this;
        }

        public final Builder setUserGender(Gender gender) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_GENDER_KEY, gender.value);
            return this;
        }

        public final Builder setUserIncome(Integer num) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_INCOME_KEY, num);
            return this;
        }

        public final Builder setUserKeywords(List<String> list) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, list);
            return this;
        }

        public final Builder setUserMaritalStatus(MaritalStatus maritalStatus) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_MARITAL_STATUS_KEY, maritalStatus.value);
            return this;
        }

        public final Builder setUserPolitics(Politics politics) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_POLITICS_KEY, politics.value);
            return this;
        }

        public final Builder setUserPostalCode(String str) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_POSTAL_CODE_KEY, str);
            return this;
        }

        public final Builder setUserState(String str) {
            this.f61225b.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, str);
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/RequestMetadata$Education.class */
    public enum Education {
        HIGH_SCHOOL("highschool"),
        SOME_COLLEGE("somecollege"),
        ASSOCIATE("associate"),
        BACHELOR("bachelor"),
        MASTERS("masters"),
        PHD("phd"),
        PROFESSIONAL("professional");
        
        public final String value;

        Education(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/RequestMetadata$Ethnicity.class */
    public enum Ethnicity {
        HISPANIC("hispanic"),
        BLACK("africanamerican"),
        ASIAN("asian"),
        INDIAN("indian"),
        MIDDLE_EASTERN("middleeastern"),
        NATIVE_AMERICAN("nativeamerican"),
        PACIFIC_ISLANDER("pacificislander"),
        WHITE("white"),
        OTHER("other");
        
        public final String value;

        Ethnicity(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/RequestMetadata$Gender.class */
    public enum Gender {
        MALE("M"),
        FEMALE("F"),
        UNKNOWN("O");
        
        public final String value;

        Gender(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/RequestMetadata$MaritalStatus.class */
    public enum MaritalStatus {
        SINGLE("S"),
        MARRIED("M"),
        DIVORCED("D"),
        RELATIONSHIP("O");
        
        public final String value;

        MaritalStatus(String str) {
            this.value = str;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/RequestMetadata$Politics.class */
    public enum Politics {
        REPUBLICAN("republican"),
        DEMOCRAT("democrat"),
        CONSERVATIVE("conservative"),
        MODERATE("moderate"),
        LIBERAL("liberal"),
        INDEPENDENT("independent"),
        OTHER("other");
        
        public final String value;

        Politics(String str) {
            this.value = str;
        }
    }

    private RequestMetadata() {
    }

    private RequestMetadata(Map<String, Object> map, Map<String, Object> map2, Map<String, Object> map3, Map<String, Object> map4, List<String> list) {
        this.f61219a = m5555a(map);
        this.f61220b = m5555a(map2);
        this.f61221c = m5555a(map3);
        this.f61222d = m5555a(map4);
        if (list != null) {
            this.f61223e = Collections.unmodifiableList(list);
        }
    }

    /* renamed from: a */
    private static <T> Map<String, T> m5555a(Map<String, T> map) {
        if (map == null) {
            return null;
        }
        return Collections.unmodifiableMap(map);
    }

    public final Map<String, Object> getAppData() {
        return this.f61220b;
    }

    public final Map<String, Object> getExtras() {
        return this.f61222d;
    }

    public final Map<String, Object> getPlacementData() {
        return this.f61221c;
    }

    public final List<String> getSupportedOrientations() {
        return this.f61223e;
    }

    public final Map<String, Object> getUserData() {
        return this.f61219a;
    }

    public final String toString() {
        return String.format("RequestMetadata{supportedOrientations: %s, userData: %s, appData: %s, placementData: %s, extras: %s}", this.f61223e, this.f61219a, this.f61220b, this.f61221c, this.f61222d);
    }
}
