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

    /* renamed from: A */
    private final String f60221A;

    /* renamed from: B */
    private final JSONObject f60222B;

    /* renamed from: C */
    private final String f60223C;

    /* renamed from: D */
    private final MoPub.BrowserAgent f60224D;

    /* renamed from: E */
    private final Map<String, String> f60225E;

    /* renamed from: F */
    private final long f60226F;

    /* renamed from: G */
    private final boolean f60227G;

    /* renamed from: H */
    private final Set<ViewabilityVendor> f60228H;

    /* renamed from: a */
    private final String f60229a;

    /* renamed from: b */
    private final String f60230b;

    /* renamed from: c */
    private final String f60231c;

    /* renamed from: d */
    private final String f60232d;

    /* renamed from: e */
    private final String f60233e;

    /* renamed from: f */
    private final String f60234f;

    /* renamed from: g */
    private final String f60235g;

    /* renamed from: h */
    private final String f60236h;

    /* renamed from: i */
    private final String f60237i;

    /* renamed from: j */
    private final Integer f60238j;

    /* renamed from: k */
    private final ImpressionData f60239k;

    /* renamed from: l */
    private final List<String> f60240l;

    /* renamed from: m */
    private final List<String> f60241m;

    /* renamed from: n */
    private final String f60242n;

    /* renamed from: o */
    private final List<String> f60243o;

    /* renamed from: p */
    private final List<String> f60244p;

    /* renamed from: q */
    private final List<String> f60245q;

    /* renamed from: r */
    private final List<String> f60246r;

    /* renamed from: s */
    private final String f60247s;

    /* renamed from: t */
    private final Integer f60248t;

    /* renamed from: u */
    private final Integer f60249u;

    /* renamed from: v */
    private final Integer f60250v;

    /* renamed from: w */
    private final Integer f60251w;

    /* renamed from: x */
    private final String f60252x;

    /* renamed from: y */
    private final String f60253y;

    /* renamed from: z */
    private final String f60254z;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/AdResponse$Builder.class */
    public static class Builder {

        /* renamed from: A */
        private String f60255A;

        /* renamed from: B */
        private JSONObject f60256B;

        /* renamed from: C */
        private String f60257C;

        /* renamed from: D */
        private MoPub.BrowserAgent f60258D;

        /* renamed from: a */
        private String f60262a;

        /* renamed from: b */
        private String f60263b;

        /* renamed from: c */
        private String f60264c;

        /* renamed from: d */
        private String f60265d;

        /* renamed from: e */
        private String f60266e;

        /* renamed from: f */
        private String f60267f;

        /* renamed from: g */
        private String f60268g;

        /* renamed from: h */
        private String f60269h;

        /* renamed from: i */
        private String f60270i;

        /* renamed from: j */
        private Integer f60271j;

        /* renamed from: k */
        private ImpressionData f60272k;

        /* renamed from: n */
        private String f60275n;

        /* renamed from: s */
        private String f60280s;

        /* renamed from: t */
        private Integer f60281t;

        /* renamed from: u */
        private Integer f60282u;

        /* renamed from: v */
        private Integer f60283v;

        /* renamed from: w */
        private Integer f60284w;

        /* renamed from: x */
        private String f60285x;

        /* renamed from: y */
        private String f60286y;

        /* renamed from: z */
        private String f60287z;

        /* renamed from: l */
        private List<String> f60273l = new ArrayList();

        /* renamed from: m */
        private List<String> f60274m = new ArrayList();

        /* renamed from: o */
        private List<String> f60276o = new ArrayList();

        /* renamed from: p */
        private List<String> f60277p = new ArrayList();

        /* renamed from: q */
        private List<String> f60278q = new ArrayList();

        /* renamed from: r */
        private List<String> f60279r = new ArrayList();

        /* renamed from: E */
        private Map<String, String> f60259E = new TreeMap();

        /* renamed from: F */
        private boolean f60260F = false;

        /* renamed from: G */
        private Set<ViewabilityVendor> f60261G = null;

        public AdResponse build() {
            return new AdResponse(this);
        }

        public Builder setAdGroupId(String str) {
            this.f60263b = str;
            return this;
        }

        public Builder setAdTimeoutDelayMilliseconds(Integer num) {
            this.f60283v = num;
            return this;
        }

        public Builder setAdType(String str) {
            this.f60262a = str;
            return this;
        }

        public Builder setAdUnitId(String str) {
            this.f60264c = str;
            return this;
        }

        public Builder setAfterLoadFailUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f60279r = list;
            return this;
        }

        public Builder setAfterLoadSuccessUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f60278q = list;
            return this;
        }

        public Builder setAfterLoadUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f60277p = list;
            return this;
        }

        public Builder setAllowCustomClose(boolean z) {
            this.f60260F = z;
            return this;
        }

        public Builder setBannerImpressionMinVisibleDips(String str) {
            this.f60285x = str;
            return this;
        }

        public Builder setBannerImpressionMinVisibleMs(String str) {
            this.f60286y = str;
            return this;
        }

        public Builder setBaseAdClassName(String str) {
            this.f60257C = str;
            return this;
        }

        public Builder setBeforeLoadUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f60276o = list;
            return this;
        }

        public Builder setBrowserAgent(MoPub.BrowserAgent browserAgent) {
            this.f60258D = browserAgent;
            return this;
        }

        public Builder setClickTrackingUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f60273l = list;
            return this;
        }

        public Builder setDimensions(Integer num, Integer num2) {
            this.f60281t = num;
            this.f60282u = num2;
            return this;
        }

        public Builder setDspCreativeId(String str) {
            this.f60287z = str;
            return this;
        }

        public Builder setFailoverUrl(String str) {
            this.f60275n = str;
            return this;
        }

        public Builder setFullAdType(String str) {
            this.f60265d = str;
            return this;
        }

        public Builder setImpressionData(ImpressionData impressionData) {
            this.f60272k = impressionData;
            return this;
        }

        public Builder setImpressionTrackingUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f60274m = list;
            return this;
        }

        public Builder setJsonBody(JSONObject jSONObject) {
            this.f60256B = jSONObject;
            return this;
        }

        public Builder setNetworkType(String str) {
            this.f60266e = str;
            return this;
        }

        public Builder setRefreshTimeMilliseconds(Integer num) {
            this.f60284w = num;
            return this;
        }

        public Builder setRequestId(String str) {
            this.f60280s = str;
            return this;
        }

        public Builder setResponseBody(String str) {
            this.f60255A = str;
            return this;
        }

        public Builder setRewardedAdCompletionUrl(String str) {
            this.f60270i = str;
            return this;
        }

        public Builder setRewardedAdCurrencyAmount(String str) {
            this.f60268g = str;
            return this;
        }

        public Builder setRewardedAdCurrencyName(String str) {
            this.f60267f = str;
            return this;
        }

        public Builder setRewardedCurrencies(String str) {
            this.f60269h = str;
            return this;
        }

        public Builder setRewardedDuration(Integer num) {
            this.f60271j = num;
            return this;
        }

        public Builder setServerExtras(Map<String, String> map) {
            if (map == null) {
                this.f60259E = new TreeMap();
            } else {
                this.f60259E = new TreeMap(map);
            }
            return this;
        }

        public Builder setViewabilityVendors(Set<ViewabilityVendor> set) {
            this.f60261G = set;
            return this;
        }
    }

    private AdResponse(Builder builder) {
        this.f60229a = builder.f60262a;
        this.f60230b = builder.f60263b;
        this.f60231c = builder.f60264c;
        this.f60232d = builder.f60265d;
        this.f60233e = builder.f60266e;
        this.f60234f = builder.f60267f;
        this.f60235g = builder.f60268g;
        this.f60236h = builder.f60269h;
        this.f60237i = builder.f60270i;
        this.f60238j = builder.f60271j;
        this.f60239k = builder.f60272k;
        this.f60240l = builder.f60273l;
        this.f60241m = builder.f60274m;
        this.f60242n = builder.f60275n;
        this.f60243o = builder.f60276o;
        this.f60244p = builder.f60277p;
        this.f60245q = builder.f60278q;
        this.f60246r = builder.f60279r;
        this.f60247s = builder.f60280s;
        this.f60248t = builder.f60281t;
        this.f60249u = builder.f60282u;
        this.f60250v = builder.f60283v;
        this.f60251w = builder.f60284w;
        this.f60252x = builder.f60285x;
        this.f60253y = builder.f60286y;
        this.f60254z = builder.f60287z;
        this.f60221A = builder.f60255A;
        this.f60222B = builder.f60256B;
        this.f60223C = builder.f60257C;
        this.f60224D = builder.f60258D;
        this.f60225E = builder.f60259E;
        this.f60226F = DateAndTime.now().getTime();
        this.f60227G = builder.f60260F;
        this.f60228H = builder.f60261G;
    }

    public boolean allowCustomClose() {
        return this.f60227G;
    }

    public String getAdGroupId() {
        return this.f60230b;
    }

    public Integer getAdTimeoutMillis(int i) {
        Integer num = this.f60250v;
        return (num == null || num.intValue() < 1000) ? Integer.valueOf(i) : this.f60250v;
    }

    public String getAdType() {
        return this.f60229a;
    }

    public String getAdUnitId() {
        return this.f60231c;
    }

    public List<String> getAfterLoadFailUrls() {
        return this.f60246r;
    }

    public List<String> getAfterLoadSuccessUrls() {
        return this.f60245q;
    }

    public List<String> getAfterLoadUrls() {
        return this.f60244p;
    }

    public String getBaseAdClassName() {
        return this.f60223C;
    }

    public List<String> getBeforeLoadUrls() {
        return this.f60243o;
    }

    public MoPub.BrowserAgent getBrowserAgent() {
        return this.f60224D;
    }

    public List<String> getClickTrackingUrls() {
        return this.f60240l;
    }

    @Deprecated
    public String getCustomEventClassName() {
        return getBaseAdClassName();
    }

    public String getDspCreativeId() {
        return this.f60254z;
    }

    @Deprecated
    public String getFailoverUrl() {
        return this.f60242n;
    }

    public String getFullAdType() {
        return this.f60232d;
    }

    public Integer getHeight() {
        return this.f60249u;
    }

    public ImpressionData getImpressionData() {
        return this.f60239k;
    }

    public String getImpressionMinVisibleDips() {
        return this.f60252x;
    }

    public String getImpressionMinVisibleMs() {
        return this.f60253y;
    }

    public List<String> getImpressionTrackingUrls() {
        return this.f60241m;
    }

    public JSONObject getJsonBody() {
        return this.f60222B;
    }

    public String getNetworkType() {
        return this.f60233e;
    }

    public Integer getRefreshTimeMillis() {
        return this.f60251w;
    }

    public String getRequestId() {
        return this.f60247s;
    }

    public String getRewardedAdCompletionUrl() {
        return this.f60237i;
    }

    public String getRewardedAdCurrencyAmount() {
        return this.f60235g;
    }

    public String getRewardedAdCurrencyName() {
        return this.f60234f;
    }

    public String getRewardedCurrencies() {
        return this.f60236h;
    }

    public Integer getRewardedDuration() {
        return this.f60238j;
    }

    public Map<String, String> getServerExtras() {
        return new TreeMap(this.f60225E);
    }

    public String getStringBody() {
        return this.f60221A;
    }

    public long getTimestamp() {
        return this.f60226F;
    }

    public Set<ViewabilityVendor> getViewabilityVendors() {
        return this.f60228H;
    }

    public Integer getWidth() {
        return this.f60248t;
    }

    public boolean hasJson() {
        return this.f60222B != null;
    }

    public Builder toBuilder() {
        return new Builder().setAdType(this.f60229a).setAdGroupId(this.f60230b).setNetworkType(this.f60233e).setRewardedAdCurrencyName(this.f60234f).setRewardedAdCurrencyAmount(this.f60235g).setRewardedCurrencies(this.f60236h).setRewardedAdCompletionUrl(this.f60237i).setRewardedDuration(this.f60238j).setAllowCustomClose(this.f60227G).setImpressionData(this.f60239k).setClickTrackingUrls(this.f60240l).setImpressionTrackingUrls(this.f60241m).setFailoverUrl(this.f60242n).setBeforeLoadUrls(this.f60243o).setAfterLoadUrls(this.f60244p).setAfterLoadSuccessUrls(this.f60245q).setAfterLoadFailUrls(this.f60246r).setDimensions(this.f60248t, this.f60249u).setAdTimeoutDelayMilliseconds(this.f60250v).setRefreshTimeMilliseconds(this.f60251w).setBannerImpressionMinVisibleDips(this.f60252x).setBannerImpressionMinVisibleMs(this.f60253y).setDspCreativeId(this.f60254z).setResponseBody(this.f60221A).setJsonBody(this.f60222B).setBaseAdClassName(this.f60223C).setBrowserAgent(this.f60224D).setAllowCustomClose(this.f60227G).setServerExtras(this.f60225E).setViewabilityVendors(this.f60228H);
    }
}
