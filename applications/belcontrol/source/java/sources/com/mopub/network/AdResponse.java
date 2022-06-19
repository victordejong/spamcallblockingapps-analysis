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
    private static final long serialVersionUID = 1;

    /* renamed from: A */
    public final String f5321A;

    /* renamed from: B */
    public final String f5322B;

    /* renamed from: C */
    public final String f5323C;

    /* renamed from: D */
    public final String f5324D;

    /* renamed from: E */
    public final JSONObject f5325E;

    /* renamed from: F */
    public final String f5326F;

    /* renamed from: G */
    public final MoPub.BrowserAgent f5327G;

    /* renamed from: H */
    public final Map<String, String> f5328H;

    /* renamed from: I */
    public final long f5329I;

    /* renamed from: J */
    public final boolean f5330J;

    /* renamed from: K */
    public final Set<ViewabilityVendor> f5331K;

    /* renamed from: a */
    public final String f5332a;

    /* renamed from: b */
    public final String f5333b;

    /* renamed from: c */
    public final String f5334c;

    /* renamed from: d */
    public final String f5335d;

    /* renamed from: f */
    public final String f5336f;

    /* renamed from: g */
    public final String f5337g;

    /* renamed from: h */
    public final String f5338h;

    /* renamed from: j */
    public final String f5339j;

    /* renamed from: k */
    public final String f5340k;

    /* renamed from: l */
    public final Integer f5341l;

    /* renamed from: m */
    public final boolean f5342m;

    /* renamed from: n */
    public final ImpressionData f5343n;

    /* renamed from: o */
    public final List<String> f5344o;

    /* renamed from: p */
    public final List<String> f5345p;

    /* renamed from: q */
    public final String f5346q;

    /* renamed from: r */
    public final List<String> f5347r;

    /* renamed from: s */
    public final List<String> f5348s;

    /* renamed from: t */
    public final List<String> f5349t;

    /* renamed from: u */
    public final List<String> f5350u;

    /* renamed from: v */
    public final String f5351v;

    /* renamed from: w */
    public final Integer f5352w;

    /* renamed from: x */
    public final Integer f5353x;

    /* renamed from: y */
    public final Integer f5354y;

    /* renamed from: z */
    public final Integer f5355z;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdResponse$Builder.class */
    public static class Builder {

        /* renamed from: A */
        public String f5356A;

        /* renamed from: B */
        public String f5357B;

        /* renamed from: C */
        public JSONObject f5358C;

        /* renamed from: D */
        public String f5359D;

        /* renamed from: E */
        public MoPub.BrowserAgent f5360E;

        /* renamed from: a */
        public String f5364a;

        /* renamed from: b */
        public String f5365b;

        /* renamed from: c */
        public String f5366c;

        /* renamed from: d */
        public String f5367d;

        /* renamed from: e */
        public String f5368e;

        /* renamed from: f */
        public String f5369f;

        /* renamed from: g */
        public String f5370g;

        /* renamed from: h */
        public String f5371h;

        /* renamed from: i */
        public String f5372i;

        /* renamed from: j */
        public Integer f5373j;

        /* renamed from: k */
        public boolean f5374k;

        /* renamed from: l */
        public ImpressionData f5375l;

        /* renamed from: o */
        public String f5378o;

        /* renamed from: t */
        public String f5383t;

        /* renamed from: u */
        public Integer f5384u;

        /* renamed from: v */
        public Integer f5385v;

        /* renamed from: w */
        public Integer f5386w;

        /* renamed from: x */
        public Integer f5387x;

        /* renamed from: y */
        public String f5388y;

        /* renamed from: z */
        public String f5389z;

        /* renamed from: m */
        public List<String> f5376m = new ArrayList();

        /* renamed from: n */
        public List<String> f5377n = new ArrayList();

        /* renamed from: p */
        public List<String> f5379p = new ArrayList();

        /* renamed from: q */
        public List<String> f5380q = new ArrayList();

        /* renamed from: r */
        public List<String> f5381r = new ArrayList();

        /* renamed from: s */
        public List<String> f5382s = new ArrayList();

        /* renamed from: F */
        public Map<String, String> f5361F = new TreeMap();

        /* renamed from: G */
        public boolean f5362G = false;

        /* renamed from: H */
        public Set<ViewabilityVendor> f5363H = null;

        public AdResponse build() {
            return new AdResponse(this);
        }

        public Builder setAdGroupId(String str) {
            this.f5365b = str;
            return this;
        }

        public Builder setAdTimeoutDelayMilliseconds(Integer num) {
            this.f5386w = num;
            return this;
        }

        public Builder setAdType(String str) {
            this.f5364a = str;
            return this;
        }

        public Builder setAdUnitId(String str) {
            this.f5366c = str;
            return this;
        }

        public Builder setAfterLoadFailUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f5382s = list;
            return this;
        }

        public Builder setAfterLoadSuccessUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f5381r = list;
            return this;
        }

        public Builder setAfterLoadUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f5380q = list;
            return this;
        }

        public Builder setAllowCustomClose(boolean z) {
            this.f5362G = z;
            return this;
        }

        public Builder setBannerImpressionMinVisibleDips(String str) {
            this.f5388y = str;
            return this;
        }

        public Builder setBannerImpressionMinVisibleMs(String str) {
            this.f5389z = str;
            return this;
        }

        public Builder setBaseAdClassName(String str) {
            this.f5359D = str;
            return this;
        }

        public Builder setBeforeLoadUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f5379p = list;
            return this;
        }

        public Builder setBrowserAgent(MoPub.BrowserAgent browserAgent) {
            this.f5360E = browserAgent;
            return this;
        }

        public Builder setClickTrackingUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f5376m = list;
            return this;
        }

        public Builder setDimensions(Integer num, Integer num2) {
            this.f5384u = num;
            this.f5385v = num2;
            return this;
        }

        public Builder setDspCreativeId(String str) {
            this.f5356A = str;
            return this;
        }

        public Builder setFailoverUrl(String str) {
            this.f5378o = str;
            return this;
        }

        public Builder setFullAdType(String str) {
            this.f5367d = str;
            return this;
        }

        public Builder setImpressionData(ImpressionData impressionData) {
            this.f5375l = impressionData;
            return this;
        }

        public Builder setImpressionTrackingUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f5377n = list;
            return this;
        }

        public Builder setJsonBody(JSONObject jSONObject) {
            this.f5358C = jSONObject;
            return this;
        }

        public Builder setNetworkType(String str) {
            this.f5368e = str;
            return this;
        }

        public Builder setRefreshTimeMilliseconds(Integer num) {
            this.f5387x = num;
            return this;
        }

        public Builder setRequestId(String str) {
            this.f5383t = str;
            return this;
        }

        public Builder setResponseBody(String str) {
            this.f5357B = str;
            return this;
        }

        public Builder setRewardedCurrencies(String str) {
            this.f5371h = str;
            return this;
        }

        public Builder setRewardedDuration(Integer num) {
            this.f5373j = num;
            return this;
        }

        public Builder setRewardedVideoCompletionUrl(String str) {
            this.f5372i = str;
            return this;
        }

        public Builder setRewardedVideoCurrencyAmount(String str) {
            this.f5370g = str;
            return this;
        }

        public Builder setRewardedVideoCurrencyName(String str) {
            this.f5369f = str;
            return this;
        }

        public Builder setServerExtras(Map<String, String> map) {
            if (map == null) {
                this.f5361F = new TreeMap();
            } else {
                this.f5361F = new TreeMap(map);
            }
            return this;
        }

        public Builder setShouldRewardOnClick(boolean z) {
            this.f5374k = z;
            return this;
        }

        public Builder setViewabilityVendors(Set<ViewabilityVendor> set) {
            this.f5363H = set;
            return this;
        }
    }

    public AdResponse(Builder builder) {
        this.f5332a = builder.f5364a;
        this.f5333b = builder.f5365b;
        this.f5334c = builder.f5366c;
        this.f5335d = builder.f5367d;
        this.f5336f = builder.f5368e;
        this.f5337g = builder.f5369f;
        this.f5338h = builder.f5370g;
        this.f5339j = builder.f5371h;
        this.f5340k = builder.f5372i;
        this.f5341l = builder.f5373j;
        this.f5342m = builder.f5374k;
        this.f5343n = builder.f5375l;
        this.f5344o = builder.f5376m;
        this.f5345p = builder.f5377n;
        this.f5346q = builder.f5378o;
        this.f5347r = builder.f5379p;
        this.f5348s = builder.f5380q;
        this.f5349t = builder.f5381r;
        this.f5350u = builder.f5382s;
        this.f5351v = builder.f5383t;
        this.f5352w = builder.f5384u;
        this.f5353x = builder.f5385v;
        this.f5354y = builder.f5386w;
        this.f5355z = builder.f5387x;
        this.f5321A = builder.f5388y;
        this.f5322B = builder.f5389z;
        this.f5323C = builder.f5356A;
        this.f5324D = builder.f5357B;
        this.f5325E = builder.f5358C;
        this.f5326F = builder.f5359D;
        this.f5327G = builder.f5360E;
        this.f5328H = builder.f5361F;
        this.f5329I = DateAndTime.now().getTime();
        this.f5330J = builder.f5362G;
        this.f5331K = builder.f5363H;
    }

    public boolean allowCustomClose() {
        return this.f5330J;
    }

    public String getAdGroupId() {
        return this.f5333b;
    }

    public Integer getAdTimeoutMillis(int i) {
        Integer num = this.f5354y;
        return (num == null || num.intValue() < 1000) ? Integer.valueOf(i) : this.f5354y;
    }

    public String getAdType() {
        return this.f5332a;
    }

    public String getAdUnitId() {
        return this.f5334c;
    }

    public List<String> getAfterLoadFailUrls() {
        return this.f5350u;
    }

    public List<String> getAfterLoadSuccessUrls() {
        return this.f5349t;
    }

    public List<String> getAfterLoadUrls() {
        return this.f5348s;
    }

    public String getBaseAdClassName() {
        return this.f5326F;
    }

    public List<String> getBeforeLoadUrls() {
        return this.f5347r;
    }

    public MoPub.BrowserAgent getBrowserAgent() {
        return this.f5327G;
    }

    public List<String> getClickTrackingUrls() {
        return this.f5344o;
    }

    @Deprecated
    public String getCustomEventClassName() {
        return getBaseAdClassName();
    }

    public String getDspCreativeId() {
        return this.f5323C;
    }

    @Deprecated
    public String getFailoverUrl() {
        return this.f5346q;
    }

    public String getFullAdType() {
        return this.f5335d;
    }

    public Integer getHeight() {
        return this.f5353x;
    }

    public ImpressionData getImpressionData() {
        return this.f5343n;
    }

    public String getImpressionMinVisibleDips() {
        return this.f5321A;
    }

    public String getImpressionMinVisibleMs() {
        return this.f5322B;
    }

    public List<String> getImpressionTrackingUrls() {
        return this.f5345p;
    }

    public JSONObject getJsonBody() {
        return this.f5325E;
    }

    public String getNetworkType() {
        return this.f5336f;
    }

    public Integer getRefreshTimeMillis() {
        return this.f5355z;
    }

    public String getRequestId() {
        return this.f5351v;
    }

    public String getRewardedCurrencies() {
        return this.f5339j;
    }

    public Integer getRewardedDuration() {
        return this.f5341l;
    }

    public String getRewardedVideoCompletionUrl() {
        return this.f5340k;
    }

    public String getRewardedVideoCurrencyAmount() {
        return this.f5338h;
    }

    public String getRewardedVideoCurrencyName() {
        return this.f5337g;
    }

    public Map<String, String> getServerExtras() {
        return new TreeMap(this.f5328H);
    }

    public String getStringBody() {
        return this.f5324D;
    }

    public long getTimestamp() {
        return this.f5329I;
    }

    public Set<ViewabilityVendor> getViewabilityVendors() {
        return this.f5331K;
    }

    public Integer getWidth() {
        return this.f5352w;
    }

    public boolean hasJson() {
        return this.f5325E != null;
    }

    public boolean shouldRewardOnClick() {
        return this.f5342m;
    }

    public Builder toBuilder() {
        return new Builder().setAdType(this.f5332a).setAdGroupId(this.f5333b).setNetworkType(this.f5336f).setRewardedVideoCurrencyName(this.f5337g).setRewardedVideoCurrencyAmount(this.f5338h).setRewardedCurrencies(this.f5339j).setRewardedVideoCompletionUrl(this.f5340k).setRewardedDuration(this.f5341l).setShouldRewardOnClick(this.f5342m).setAllowCustomClose(this.f5330J).setImpressionData(this.f5343n).setClickTrackingUrls(this.f5344o).setImpressionTrackingUrls(this.f5345p).setFailoverUrl(this.f5346q).setBeforeLoadUrls(this.f5347r).setAfterLoadUrls(this.f5348s).setAfterLoadSuccessUrls(this.f5349t).setAfterLoadFailUrls(this.f5350u).setDimensions(this.f5352w, this.f5353x).setAdTimeoutDelayMilliseconds(this.f5354y).setRefreshTimeMilliseconds(this.f5355z).setBannerImpressionMinVisibleDips(this.f5321A).setBannerImpressionMinVisibleMs(this.f5322B).setDspCreativeId(this.f5323C).setResponseBody(this.f5324D).setJsonBody(this.f5325E).setBaseAdClassName(this.f5326F).setBrowserAgent(this.f5327G).setAllowCustomClose(this.f5330J).setServerExtras(this.f5328H).setViewabilityVendors(this.f5331K);
    }
}
