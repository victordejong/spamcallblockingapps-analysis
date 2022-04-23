package com.mopub.network;

import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.util.DateAndTime;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/AdResponse.class */
public class AdResponse implements Serializable {
    private final String A;
    private final JSONObject B;
    private final String C;
    private final MoPub.BrowserAgent D;
    private final Map<String, String> E;
    private final long F;
    private final boolean G;
    private final Set<ViewabilityVendor> H;

    /* renamed from: a  reason: collision with root package name */
    private final String f34712a;

    /* renamed from: b  reason: collision with root package name */
    private final String f34713b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34714c;

    /* renamed from: d  reason: collision with root package name */
    private final String f34715d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final Integer j;
    private final ImpressionData k;
    private final List<String> l;
    private final List<String> m;
    private final String n;
    private final List<String> o;
    private final List<String> p;
    private final List<String> q;
    private final List<String> r;
    private final String s;
    private final Integer t;
    private final Integer u;
    private final Integer v;
    private final Integer w;
    private final String x;
    private final String y;
    private final String z;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/AdResponse$Builder.class */
    public static class Builder {
        private String A;
        private JSONObject B;
        private String C;
        private MoPub.BrowserAgent D;

        /* renamed from: a  reason: collision with root package name */
        private String f34716a;

        /* renamed from: b  reason: collision with root package name */
        private String f34717b;

        /* renamed from: c  reason: collision with root package name */
        private String f34718c;

        /* renamed from: d  reason: collision with root package name */
        private String f34719d;
        private String e;
        private String f;
        private String g;
        private String h;
        private String i;
        private Integer j;
        private ImpressionData k;
        private String n;
        private String s;
        private Integer t;
        private Integer u;
        private Integer v;
        private Integer w;
        private String x;
        private String y;
        private String z;
        private List<String> l = new ArrayList();
        private List<String> m = new ArrayList();
        private List<String> o = new ArrayList();
        private List<String> p = new ArrayList();
        private List<String> q = new ArrayList();
        private List<String> r = new ArrayList();
        private Map<String, String> E = new TreeMap();
        private boolean F = false;
        private Set<ViewabilityVendor> G = null;

        public AdResponse build() {
            return new AdResponse(this);
        }

        public Builder setAdGroupId(String str) {
            this.f34717b = str;
            return this;
        }

        public Builder setAdTimeoutDelayMilliseconds(Integer num) {
            this.v = num;
            return this;
        }

        public Builder setAdType(String str) {
            this.f34716a = str;
            return this;
        }

        public Builder setAdUnitId(String str) {
            this.f34718c = str;
            return this;
        }

        public Builder setAfterLoadFailUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.r = list;
            return this;
        }

        public Builder setAfterLoadSuccessUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.q = list;
            return this;
        }

        public Builder setAfterLoadUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.p = list;
            return this;
        }

        public Builder setAllowCustomClose(boolean z) {
            this.F = z;
            return this;
        }

        public Builder setBannerImpressionMinVisibleDips(String str) {
            this.x = str;
            return this;
        }

        public Builder setBannerImpressionMinVisibleMs(String str) {
            this.y = str;
            return this;
        }

        public Builder setBaseAdClassName(String str) {
            this.C = str;
            return this;
        }

        public Builder setBeforeLoadUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.o = list;
            return this;
        }

        public Builder setBrowserAgent(MoPub.BrowserAgent browserAgent) {
            this.D = browserAgent;
            return this;
        }

        public Builder setClickTrackingUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.l = list;
            return this;
        }

        public Builder setDimensions(Integer num, Integer num2) {
            this.t = num;
            this.u = num2;
            return this;
        }

        public Builder setDspCreativeId(String str) {
            this.z = str;
            return this;
        }

        public Builder setFailoverUrl(String str) {
            this.n = str;
            return this;
        }

        public Builder setFullAdType(String str) {
            this.f34719d = str;
            return this;
        }

        public Builder setImpressionData(ImpressionData impressionData) {
            this.k = impressionData;
            return this;
        }

        public Builder setImpressionTrackingUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.m = list;
            return this;
        }

        public Builder setJsonBody(JSONObject jSONObject) {
            this.B = jSONObject;
            return this;
        }

        public Builder setNetworkType(String str) {
            this.e = str;
            return this;
        }

        public Builder setRefreshTimeMilliseconds(Integer num) {
            this.w = num;
            return this;
        }

        public Builder setRequestId(String str) {
            this.s = str;
            return this;
        }

        public Builder setResponseBody(String str) {
            this.A = str;
            return this;
        }

        public Builder setRewardedAdCompletionUrl(String str) {
            this.i = str;
            return this;
        }

        public Builder setRewardedAdCurrencyAmount(String str) {
            this.g = str;
            return this;
        }

        public Builder setRewardedAdCurrencyName(String str) {
            this.f = str;
            return this;
        }

        public Builder setRewardedCurrencies(String str) {
            this.h = str;
            return this;
        }

        public Builder setRewardedDuration(Integer num) {
            this.j = num;
            return this;
        }

        public Builder setServerExtras(Map<String, String> map) {
            if (map == null) {
                this.E = new TreeMap();
            } else {
                this.E = new TreeMap(map);
            }
            return this;
        }

        public Builder setViewabilityVendors(Set<ViewabilityVendor> set) {
            this.G = set;
            return this;
        }
    }

    private AdResponse(Builder builder) {
        this.f34712a = builder.f34716a;
        this.f34713b = builder.f34717b;
        this.f34714c = builder.f34718c;
        this.f34715d = builder.f34719d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
        this.j = builder.j;
        this.k = builder.k;
        this.l = builder.l;
        this.m = builder.m;
        this.n = builder.n;
        this.o = builder.o;
        this.p = builder.p;
        this.q = builder.q;
        this.r = builder.r;
        this.s = builder.s;
        this.t = builder.t;
        this.u = builder.u;
        this.v = builder.v;
        this.w = builder.w;
        this.x = builder.x;
        this.y = builder.y;
        this.z = builder.z;
        this.A = builder.A;
        this.B = builder.B;
        this.C = builder.C;
        this.D = builder.D;
        this.E = builder.E;
        this.F = DateAndTime.now().getTime();
        this.G = builder.F;
        this.H = builder.G;
    }

    public boolean allowCustomClose() {
        return this.G;
    }

    public String getAdGroupId() {
        return this.f34713b;
    }

    public Integer getAdTimeoutMillis(int i) {
        Integer num = this.v;
        return (num == null || num.intValue() < 1000) ? Integer.valueOf(i) : this.v;
    }

    public String getAdType() {
        return this.f34712a;
    }

    public String getAdUnitId() {
        return this.f34714c;
    }

    public List<String> getAfterLoadFailUrls() {
        return this.r;
    }

    public List<String> getAfterLoadSuccessUrls() {
        return this.q;
    }

    public List<String> getAfterLoadUrls() {
        return this.p;
    }

    public String getBaseAdClassName() {
        return this.C;
    }

    public List<String> getBeforeLoadUrls() {
        return this.o;
    }

    public MoPub.BrowserAgent getBrowserAgent() {
        return this.D;
    }

    public List<String> getClickTrackingUrls() {
        return this.l;
    }

    @Deprecated
    public String getCustomEventClassName() {
        return getBaseAdClassName();
    }

    public String getDspCreativeId() {
        return this.z;
    }

    @Deprecated
    public String getFailoverUrl() {
        return this.n;
    }

    public String getFullAdType() {
        return this.f34715d;
    }

    public Integer getHeight() {
        return this.u;
    }

    public ImpressionData getImpressionData() {
        return this.k;
    }

    public String getImpressionMinVisibleDips() {
        return this.x;
    }

    public String getImpressionMinVisibleMs() {
        return this.y;
    }

    public List<String> getImpressionTrackingUrls() {
        return this.m;
    }

    public JSONObject getJsonBody() {
        return this.B;
    }

    public String getNetworkType() {
        return this.e;
    }

    public Integer getRefreshTimeMillis() {
        return this.w;
    }

    public String getRequestId() {
        return this.s;
    }

    public String getRewardedAdCompletionUrl() {
        return this.i;
    }

    public String getRewardedAdCurrencyAmount() {
        return this.g;
    }

    public String getRewardedAdCurrencyName() {
        return this.f;
    }

    public String getRewardedCurrencies() {
        return this.h;
    }

    public Integer getRewardedDuration() {
        return this.j;
    }

    public Map<String, String> getServerExtras() {
        return new TreeMap(this.E);
    }

    public String getStringBody() {
        return this.A;
    }

    public long getTimestamp() {
        return this.F;
    }

    public Set<ViewabilityVendor> getViewabilityVendors() {
        return this.H;
    }

    public Integer getWidth() {
        return this.t;
    }

    public boolean hasJson() {
        return this.B != null;
    }

    public Builder toBuilder() {
        return new Builder().setAdType(this.f34712a).setAdGroupId(this.f34713b).setNetworkType(this.e).setRewardedAdCurrencyName(this.f).setRewardedAdCurrencyAmount(this.g).setRewardedCurrencies(this.h).setRewardedAdCompletionUrl(this.i).setRewardedDuration(this.j).setAllowCustomClose(this.G).setImpressionData(this.k).setClickTrackingUrls(this.l).setImpressionTrackingUrls(this.m).setFailoverUrl(this.n).setBeforeLoadUrls(this.o).setAfterLoadUrls(this.p).setAfterLoadSuccessUrls(this.q).setAfterLoadFailUrls(this.r).setDimensions(this.t, this.u).setAdTimeoutDelayMilliseconds(this.v).setRefreshTimeMilliseconds(this.w).setBannerImpressionMinVisibleDips(this.x).setBannerImpressionMinVisibleMs(this.y).setDspCreativeId(this.z).setResponseBody(this.A).setJsonBody(this.B).setBaseAdClassName(this.C).setBrowserAgent(this.D).setAllowCustomClose(this.G).setServerExtras(this.E).setViewabilityVendors(this.H);
    }
}
