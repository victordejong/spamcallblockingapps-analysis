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
/* loaded from: classes3-dex2jar.jar:com/mopub/network/AdResponse.class */
public class AdResponse implements Serializable {

    /* renamed from: A */
    public final String f9164A;

    /* renamed from: B */
    public final JSONObject f9165B;

    /* renamed from: C */
    public final String f9166C;

    /* renamed from: D */
    public final MoPub.BrowserAgent f9167D;

    /* renamed from: E */
    public final Map<String, String> f9168E;

    /* renamed from: J */
    public final long f9169J = DateAndTime.now().getTime();

    /* renamed from: K */
    public final boolean f9170K;

    /* renamed from: L */
    public final Set<ViewabilityVendor> f9171L;

    /* renamed from: a */
    public final String f9172a;

    /* renamed from: b */
    public final String f9173b;

    /* renamed from: c */
    public final String f9174c;

    /* renamed from: d */
    public final String f9175d;

    /* renamed from: e */
    public final String f9176e;

    /* renamed from: f */
    public final String f9177f;

    /* renamed from: g */
    public final String f9178g;

    /* renamed from: h */
    public final String f9179h;

    /* renamed from: i */
    public final String f9180i;

    /* renamed from: j */
    public final Integer f9181j;

    /* renamed from: k */
    public final ImpressionData f9182k;

    /* renamed from: l */
    public final List<String> f9183l;

    /* renamed from: m */
    public final List<String> f9184m;

    /* renamed from: n */
    public final String f9185n;

    /* renamed from: o */
    public final List<String> f9186o;

    /* renamed from: p */
    public final List<String> f9187p;

    /* renamed from: q */
    public final List<String> f9188q;

    /* renamed from: r */
    public final List<String> f9189r;

    /* renamed from: s */
    public final String f9190s;

    /* renamed from: t */
    public final Integer f9191t;

    /* renamed from: u */
    public final Integer f9192u;

    /* renamed from: v */
    public final Integer f9193v;

    /* renamed from: w */
    public final Integer f9194w;

    /* renamed from: x */
    public final String f9195x;

    /* renamed from: y */
    public final String f9196y;

    /* renamed from: z */
    public final String f9197z;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdResponse$Builder.class */
    public static class Builder {

        /* renamed from: A */
        public String f9198A;

        /* renamed from: B */
        public JSONObject f9199B;

        /* renamed from: C */
        public String f9200C;

        /* renamed from: D */
        public MoPub.BrowserAgent f9201D;

        /* renamed from: a */
        public String f9205a;

        /* renamed from: b */
        public String f9206b;

        /* renamed from: c */
        public String f9207c;

        /* renamed from: d */
        public String f9208d;

        /* renamed from: e */
        public String f9209e;

        /* renamed from: f */
        public String f9210f;

        /* renamed from: g */
        public String f9211g;

        /* renamed from: h */
        public String f9212h;

        /* renamed from: i */
        public String f9213i;

        /* renamed from: j */
        public Integer f9214j;

        /* renamed from: k */
        public ImpressionData f9215k;

        /* renamed from: n */
        public String f9218n;

        /* renamed from: s */
        public String f9223s;

        /* renamed from: t */
        public Integer f9224t;

        /* renamed from: u */
        public Integer f9225u;

        /* renamed from: v */
        public Integer f9226v;

        /* renamed from: w */
        public Integer f9227w;

        /* renamed from: x */
        public String f9228x;

        /* renamed from: y */
        public String f9229y;

        /* renamed from: z */
        public String f9230z;

        /* renamed from: l */
        public List<String> f9216l = new ArrayList();

        /* renamed from: m */
        public List<String> f9217m = new ArrayList();

        /* renamed from: o */
        public List<String> f9219o = new ArrayList();

        /* renamed from: p */
        public List<String> f9220p = new ArrayList();

        /* renamed from: q */
        public List<String> f9221q = new ArrayList();

        /* renamed from: r */
        public List<String> f9222r = new ArrayList();

        /* renamed from: E */
        public Map<String, String> f9202E = new TreeMap();

        /* renamed from: F */
        public boolean f9203F = false;

        /* renamed from: G */
        public Set<ViewabilityVendor> f9204G = null;

        public AdResponse build() {
            return new AdResponse(this, null);
        }

        public Builder setAdGroupId(String str) {
            this.f9206b = str;
            return this;
        }

        public Builder setAdTimeoutDelayMilliseconds(Integer num) {
            this.f9226v = num;
            return this;
        }

        public Builder setAdType(String str) {
            this.f9205a = str;
            return this;
        }

        public Builder setAdUnitId(String str) {
            this.f9207c = str;
            return this;
        }

        public Builder setAfterLoadFailUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9222r = list;
            return this;
        }

        public Builder setAfterLoadSuccessUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9221q = list;
            return this;
        }

        public Builder setAfterLoadUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9220p = list;
            return this;
        }

        public Builder setAllowCustomClose(boolean z) {
            this.f9203F = z;
            return this;
        }

        public Builder setBannerImpressionMinVisibleDips(String str) {
            this.f9228x = str;
            return this;
        }

        public Builder setBannerImpressionMinVisibleMs(String str) {
            this.f9229y = str;
            return this;
        }

        public Builder setBaseAdClassName(String str) {
            this.f9200C = str;
            return this;
        }

        public Builder setBeforeLoadUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9219o = list;
            return this;
        }

        public Builder setBrowserAgent(MoPub.BrowserAgent browserAgent) {
            this.f9201D = browserAgent;
            return this;
        }

        public Builder setClickTrackingUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9216l = list;
            return this;
        }

        public Builder setDimensions(Integer num, Integer num2) {
            this.f9224t = num;
            this.f9225u = num2;
            return this;
        }

        public Builder setDspCreativeId(String str) {
            this.f9230z = str;
            return this;
        }

        public Builder setFailoverUrl(String str) {
            this.f9218n = str;
            return this;
        }

        public Builder setFullAdType(String str) {
            this.f9208d = str;
            return this;
        }

        public Builder setImpressionData(ImpressionData impressionData) {
            this.f9215k = impressionData;
            return this;
        }

        public Builder setImpressionTrackingUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9217m = list;
            return this;
        }

        public Builder setJsonBody(JSONObject jSONObject) {
            this.f9199B = jSONObject;
            return this;
        }

        public Builder setNetworkType(String str) {
            this.f9209e = str;
            return this;
        }

        public Builder setRefreshTimeMilliseconds(Integer num) {
            this.f9227w = num;
            return this;
        }

        public Builder setRequestId(String str) {
            this.f9223s = str;
            return this;
        }

        public Builder setResponseBody(String str) {
            this.f9198A = str;
            return this;
        }

        public Builder setRewardedAdCompletionUrl(String str) {
            this.f9213i = str;
            return this;
        }

        public Builder setRewardedAdCurrencyAmount(String str) {
            this.f9211g = str;
            return this;
        }

        public Builder setRewardedAdCurrencyName(String str) {
            this.f9210f = str;
            return this;
        }

        public Builder setRewardedCurrencies(String str) {
            this.f9212h = str;
            return this;
        }

        public Builder setRewardedDuration(Integer num) {
            this.f9214j = num;
            return this;
        }

        public Builder setServerExtras(Map<String, String> map) {
            if (map == null) {
                this.f9202E = new TreeMap();
            } else {
                this.f9202E = new TreeMap(map);
            }
            return this;
        }

        public Builder setViewabilityVendors(Set<ViewabilityVendor> set) {
            this.f9204G = set;
            return this;
        }
    }

    public AdResponse(Builder builder, C2718a c2718a) {
        this.f9172a = builder.f9205a;
        this.f9173b = builder.f9206b;
        this.f9174c = builder.f9207c;
        this.f9175d = builder.f9208d;
        this.f9176e = builder.f9209e;
        this.f9177f = builder.f9210f;
        this.f9178g = builder.f9211g;
        this.f9179h = builder.f9212h;
        this.f9180i = builder.f9213i;
        this.f9181j = builder.f9214j;
        this.f9182k = builder.f9215k;
        this.f9183l = builder.f9216l;
        this.f9184m = builder.f9217m;
        this.f9185n = builder.f9218n;
        this.f9186o = builder.f9219o;
        this.f9187p = builder.f9220p;
        this.f9188q = builder.f9221q;
        this.f9189r = builder.f9222r;
        this.f9190s = builder.f9223s;
        this.f9191t = builder.f9224t;
        this.f9192u = builder.f9225u;
        this.f9193v = builder.f9226v;
        this.f9194w = builder.f9227w;
        this.f9195x = builder.f9228x;
        this.f9196y = builder.f9229y;
        this.f9197z = builder.f9230z;
        this.f9164A = builder.f9198A;
        this.f9165B = builder.f9199B;
        this.f9166C = builder.f9200C;
        this.f9167D = builder.f9201D;
        this.f9168E = builder.f9202E;
        this.f9170K = builder.f9203F;
        this.f9171L = builder.f9204G;
    }

    public boolean allowCustomClose() {
        return this.f9170K;
    }

    public String getAdGroupId() {
        return this.f9173b;
    }

    public Integer getAdTimeoutMillis(int i) {
        Integer num = this.f9193v;
        return (num == null || num.intValue() < 1000) ? Integer.valueOf(i) : this.f9193v;
    }

    public String getAdType() {
        return this.f9172a;
    }

    public String getAdUnitId() {
        return this.f9174c;
    }

    public List<String> getAfterLoadFailUrls() {
        return this.f9189r;
    }

    public List<String> getAfterLoadSuccessUrls() {
        return this.f9188q;
    }

    public List<String> getAfterLoadUrls() {
        return this.f9187p;
    }

    public String getBaseAdClassName() {
        return this.f9166C;
    }

    public List<String> getBeforeLoadUrls() {
        return this.f9186o;
    }

    public MoPub.BrowserAgent getBrowserAgent() {
        return this.f9167D;
    }

    public List<String> getClickTrackingUrls() {
        return this.f9183l;
    }

    @Deprecated
    public String getCustomEventClassName() {
        return getBaseAdClassName();
    }

    public String getDspCreativeId() {
        return this.f9197z;
    }

    @Deprecated
    public String getFailoverUrl() {
        return this.f9185n;
    }

    public String getFullAdType() {
        return this.f9175d;
    }

    public Integer getHeight() {
        return this.f9192u;
    }

    public ImpressionData getImpressionData() {
        return this.f9182k;
    }

    public String getImpressionMinVisibleDips() {
        return this.f9195x;
    }

    public String getImpressionMinVisibleMs() {
        return this.f9196y;
    }

    public List<String> getImpressionTrackingUrls() {
        return this.f9184m;
    }

    public JSONObject getJsonBody() {
        return this.f9165B;
    }

    public String getNetworkType() {
        return this.f9176e;
    }

    public Integer getRefreshTimeMillis() {
        return this.f9194w;
    }

    public String getRequestId() {
        return this.f9190s;
    }

    public String getRewardedAdCompletionUrl() {
        return this.f9180i;
    }

    public String getRewardedAdCurrencyAmount() {
        return this.f9178g;
    }

    public String getRewardedAdCurrencyName() {
        return this.f9177f;
    }

    public String getRewardedCurrencies() {
        return this.f9179h;
    }

    public Integer getRewardedDuration() {
        return this.f9181j;
    }

    public Map<String, String> getServerExtras() {
        return new TreeMap(this.f9168E);
    }

    public String getStringBody() {
        return this.f9164A;
    }

    public long getTimestamp() {
        return this.f9169J;
    }

    public Set<ViewabilityVendor> getViewabilityVendors() {
        return this.f9171L;
    }

    public Integer getWidth() {
        return this.f9191t;
    }

    public boolean hasJson() {
        return this.f9165B != null;
    }

    public Builder toBuilder() {
        return new Builder().setAdType(this.f9172a).setAdGroupId(this.f9173b).setNetworkType(this.f9176e).setRewardedAdCurrencyName(this.f9177f).setRewardedAdCurrencyAmount(this.f9178g).setRewardedCurrencies(this.f9179h).setRewardedAdCompletionUrl(this.f9180i).setRewardedDuration(this.f9181j).setAllowCustomClose(this.f9170K).setImpressionData(this.f9182k).setClickTrackingUrls(this.f9183l).setImpressionTrackingUrls(this.f9184m).setFailoverUrl(this.f9185n).setBeforeLoadUrls(this.f9186o).setAfterLoadUrls(this.f9187p).setAfterLoadSuccessUrls(this.f9188q).setAfterLoadFailUrls(this.f9189r).setDimensions(this.f9191t, this.f9192u).setAdTimeoutDelayMilliseconds(this.f9193v).setRefreshTimeMilliseconds(this.f9194w).setBannerImpressionMinVisibleDips(this.f9195x).setBannerImpressionMinVisibleMs(this.f9196y).setDspCreativeId(this.f9197z).setResponseBody(this.f9164A).setJsonBody(this.f9165B).setBaseAdClassName(this.f9166C).setBrowserAgent(this.f9167D).setAllowCustomClose(this.f9170K).setServerExtras(this.f9168E).setViewabilityVendors(this.f9171L);
    }
}
