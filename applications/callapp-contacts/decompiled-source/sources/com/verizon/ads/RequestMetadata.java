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

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f35320a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Object> f35321b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Object> f35322c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Object> f35323d;
    private List<String> e;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/RequestMetadata$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private Map<String, Object> f35324a;

        /* renamed from: c  reason: collision with root package name */
        private Map<String, Object> f35326c;
        private Map<String, Object> e;
        private Map<String, Object> g;
        private List<String> h;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, Object> f35325b = new HashMap();

        /* renamed from: d  reason: collision with root package name */
        private final Map<String, Object> f35327d = new HashMap();
        private final Map<String, Object> f = new HashMap();

        public Builder() {
        }

        public Builder(RequestMetadata requestMetadata) {
            if (requestMetadata != null) {
                this.f35324a = a(requestMetadata.f35320a);
                this.f35326c = a(requestMetadata.f35321b);
                this.e = a(requestMetadata.f35322c);
                this.g = a(requestMetadata.f35323d);
                List list = requestMetadata.e;
                this.h = list == null ? null : new ArrayList(list);
            }
        }

        private static <T> Map<String, T> a(Map<String, T> map) {
            if (map == null) {
                return null;
            }
            return new HashMap(map);
        }

        public final RequestMetadata build() {
            if (!this.f35325b.isEmpty()) {
                if (this.f35324a == null) {
                    this.f35324a = new HashMap();
                }
                this.f35324a.putAll(this.f35325b);
            }
            if (!this.f.isEmpty()) {
                if (this.e == null) {
                    this.e = new HashMap();
                }
                this.e.putAll(this.f);
            }
            if (!this.f35327d.isEmpty()) {
                if (this.f35326c == null) {
                    this.f35326c = new HashMap();
                }
                this.f35326c.putAll(this.f35327d);
            }
            return new RequestMetadata(this.f35324a, this.f35326c, this.e, this.g, this.h);
        }

        public final Map<String, Object> getAppData() {
            return this.f35326c;
        }

        public final Map<String, Object> getExtras() {
            return this.g;
        }

        public final Map<String, Object> getPlacementData() {
            return this.e;
        }

        public final List<String> getSupportedOrientations() {
            return this.h;
        }

        public final Map<String, Object> getUserData() {
            return this.f35324a;
        }

        public final Builder putExtra(String str, Object obj) {
            if (this.g == null) {
                this.g = new HashMap();
            }
            this.g.put(str, obj);
            return this;
        }

        public final Builder setAppData(Map<String, Object> map) {
            this.f35326c = map;
            return this;
        }

        public final Builder setExtras(Map<String, Object> map) {
            this.g = map;
            return this;
        }

        public final Builder setImpressionGroup(String str) {
            this.f.put("impressionGroup", str);
            return this;
        }

        public final Builder setMediator(String str) {
            this.f35327d.put(VerizonSSPWaterfallProvider.APP_DATA_MEDIATOR_KEY, str);
            return this;
        }

        public final Builder setPlacementData(Map<String, Object> map) {
            this.e = map;
            return this;
        }

        public final Builder setSupportedOrientations(List<String> list) {
            this.h = list;
            return this;
        }

        public final Builder setUserAge(Integer num) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_AGE_KEY, num);
            return this;
        }

        public final Builder setUserChildren(Integer num) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_CHILDREN_KEY, num);
            return this;
        }

        public final Builder setUserCountry(String str) {
            this.f35325b.put("country", str);
            return this;
        }

        public final Builder setUserData(Map<String, Object> map) {
            this.f35324a = map;
            return this;
        }

        public final Builder setUserDma(String str) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_DMA_KEY, str);
            return this;
        }

        public final Builder setUserDob(Date date) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_DOB_KEY, date);
            return this;
        }

        public final Builder setUserEducation(Education education) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_EDUCATION_KEY, education.value);
            return this;
        }

        public final Builder setUserEthnicity(Ethnicity ethnicity) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_ETHNICITY_KEY, ethnicity.value);
            return this;
        }

        public final Builder setUserGender(Gender gender) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_GENDER_KEY, gender.value);
            return this;
        }

        public final Builder setUserIncome(Integer num) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_INCOME_KEY, num);
            return this;
        }

        public final Builder setUserKeywords(List<String> list) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, list);
            return this;
        }

        public final Builder setUserMaritalStatus(MaritalStatus maritalStatus) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_MARITAL_STATUS_KEY, maritalStatus.value);
            return this;
        }

        public final Builder setUserPolitics(Politics politics) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_POLITICS_KEY, politics.value);
            return this;
        }

        public final Builder setUserPostalCode(String str) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_POSTAL_CODE_KEY, str);
            return this;
        }

        public final Builder setUserState(String str) {
            this.f35325b.put(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, str);
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
        this.f35320a = a(map);
        this.f35321b = a(map2);
        this.f35322c = a(map3);
        this.f35323d = a(map4);
        if (list != null) {
            this.e = Collections.unmodifiableList(list);
        }
    }

    private static <T> Map<String, T> a(Map<String, T> map) {
        if (map == null) {
            return null;
        }
        return Collections.unmodifiableMap(map);
    }

    public final Map<String, Object> getAppData() {
        return this.f35321b;
    }

    public final Map<String, Object> getExtras() {
        return this.f35323d;
    }

    public final Map<String, Object> getPlacementData() {
        return this.f35322c;
    }

    public final List<String> getSupportedOrientations() {
        return this.e;
    }

    public final Map<String, Object> getUserData() {
        return this.f35320a;
    }

    public final String toString() {
        return String.format("RequestMetadata{supportedOrientations: %s, userData: %s, appData: %s, placementData: %s, extras: %s}", this.e, this.f35320a, this.f35321b, this.f35322c, this.f35323d);
    }
}
