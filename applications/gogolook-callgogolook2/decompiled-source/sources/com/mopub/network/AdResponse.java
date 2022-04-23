package com.mopub.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.util.DateAndTime;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/AdResponse.class */
public class AdResponse implements Serializable {
    @Nullable

    /* renamed from: A */
    public final String f9361A;
    @Nullable

    /* renamed from: B */
    public final MoPub.BrowserAgent f9362B;
    @NonNull

    /* renamed from: C */
    public final Map<String, String> f9363C;

    /* renamed from: D */
    public final long f9364D;
    @Nullable

    /* renamed from: a */
    public final String f9365a;
    @Nullable

    /* renamed from: b */
    public final String f9366b;
    @Nullable

    /* renamed from: c */
    public final String f9367c;
    @Nullable

    /* renamed from: d */
    public final String f9368d;
    @Nullable

    /* renamed from: e */
    public final String f9369e;
    @Nullable

    /* renamed from: f */
    public final String f9370f;
    @Nullable

    /* renamed from: g */
    public final String f9371g;
    @Nullable

    /* renamed from: h */
    public final String f9372h;
    @Nullable

    /* renamed from: i */
    public final Integer f9373i;

    /* renamed from: j */
    public final boolean f9374j;
    @Nullable

    /* renamed from: k */
    public final ImpressionData f9375k;
    @Nullable

    /* renamed from: l */
    public final String f9376l;
    @NonNull

    /* renamed from: m */
    public final List<String> f9377m;
    @Nullable

    /* renamed from: n */
    public final String f9378n;
    @Nullable

    /* renamed from: o */
    public final String f9379o;
    @NonNull

    /* renamed from: p */
    public final List<String> f9380p;
    @NonNull

    /* renamed from: q */
    public final List<String> f9381q;
    @NonNull

    /* renamed from: r */
    public final List<String> f9382r;
    @Nullable

    /* renamed from: s */
    public final String f9383s;
    @Nullable

    /* renamed from: t */
    public final Integer f9384t;
    @Nullable

    /* renamed from: u */
    public final Integer f9385u;
    @Nullable

    /* renamed from: v */
    public final Integer f9386v;
    @Nullable

    /* renamed from: w */
    public final Integer f9387w;
    @Nullable

    /* renamed from: x */
    public final String f9388x;
    @Nullable

    /* renamed from: y */
    public final String f9389y;
    @Nullable

    /* renamed from: z */
    public final JSONObject f9390z;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdResponse$Builder.class */
    public static class Builder {

        /* renamed from: A */
        public String f9391A;

        /* renamed from: B */
        public MoPub.BrowserAgent f9392B;

        /* renamed from: a */
        public String f9394a;

        /* renamed from: b */
        public String f9395b;

        /* renamed from: c */
        public String f9396c;

        /* renamed from: d */
        public String f9397d;

        /* renamed from: e */
        public String f9398e;

        /* renamed from: f */
        public String f9399f;

        /* renamed from: g */
        public String f9400g;

        /* renamed from: h */
        public String f9401h;

        /* renamed from: i */
        public Integer f9402i;

        /* renamed from: j */
        public boolean f9403j;

        /* renamed from: k */
        public ImpressionData f9404k;

        /* renamed from: l */
        public String f9405l;

        /* renamed from: n */
        public String f9407n;

        /* renamed from: o */
        public String f9408o;

        /* renamed from: s */
        public String f9412s;

        /* renamed from: t */
        public Integer f9413t;

        /* renamed from: u */
        public Integer f9414u;

        /* renamed from: v */
        public Integer f9415v;

        /* renamed from: w */
        public Integer f9416w;

        /* renamed from: x */
        public String f9417x;

        /* renamed from: y */
        public String f9418y;

        /* renamed from: z */
        public JSONObject f9419z;

        /* renamed from: m */
        public List<String> f9406m = new ArrayList();

        /* renamed from: p */
        public List<String> f9409p = new ArrayList();

        /* renamed from: q */
        public List<String> f9410q = new ArrayList();

        /* renamed from: r */
        public List<String> f9411r = new ArrayList();

        /* renamed from: C */
        public Map<String, String> f9393C = new TreeMap();

        public AdResponse build() {
            return new AdResponse(this);
        }

        public Builder setAdTimeoutDelayMilliseconds(@Nullable Integer num) {
            this.f9415v = num;
            return this;
        }

        public Builder setAdType(@Nullable String str) {
            this.f9394a = str;
            return this;
        }

        public Builder setAdUnitId(@Nullable String str) {
            this.f9395b = str;
            return this;
        }

        public Builder setAfterLoadFailUrls(@NonNull List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9411r = list;
            return this;
        }

        public Builder setAfterLoadSuccessUrls(@NonNull List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9410q = list;
            return this;
        }

        public Builder setAfterLoadUrls(@NonNull List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9409p = list;
            return this;
        }

        public Builder setBeforeLoadUrl(@Nullable String str) {
            this.f9408o = str;
            return this;
        }

        public Builder setBrowserAgent(@Nullable MoPub.BrowserAgent browserAgent) {
            this.f9392B = browserAgent;
            return this;
        }

        public Builder setClickTrackingUrl(@Nullable String str) {
            this.f9405l = str;
            return this;
        }

        public Builder setCustomEventClassName(@Nullable String str) {
            this.f9391A = str;
            return this;
        }

        public Builder setDimensions(@Nullable Integer num, @Nullable Integer num2) {
            this.f9413t = num;
            this.f9414u = num2;
            return this;
        }

        public Builder setDspCreativeId(@Nullable String str) {
            this.f9417x = str;
            return this;
        }

        public Builder setFailoverUrl(@Nullable String str) {
            this.f9407n = str;
            return this;
        }

        public Builder setFullAdType(@Nullable String str) {
            this.f9396c = str;
            return this;
        }

        public Builder setImpressionData(@Nullable ImpressionData impressionData) {
            this.f9404k = impressionData;
            return this;
        }

        public Builder setImpressionTrackingUrls(@NonNull List<String> list) {
            Preconditions.checkNotNull(list);
            this.f9406m = list;
            return this;
        }

        public Builder setJsonBody(@Nullable JSONObject jSONObject) {
            this.f9419z = jSONObject;
            return this;
        }

        public Builder setNetworkType(@Nullable String str) {
            this.f9397d = str;
            return this;
        }

        public Builder setRefreshTimeMilliseconds(@Nullable Integer num) {
            this.f9416w = num;
            return this;
        }

        public Builder setRequestId(@Nullable String str) {
            this.f9412s = str;
            return this;
        }

        public Builder setResponseBody(@Nullable String str) {
            this.f9418y = str;
            return this;
        }

        public Builder setRewardedCurrencies(@Nullable String str) {
            this.f9400g = str;
            return this;
        }

        public Builder setRewardedDuration(@Nullable Integer num) {
            this.f9402i = num;
            return this;
        }

        public Builder setRewardedVideoCompletionUrl(@Nullable String str) {
            this.f9401h = str;
            return this;
        }

        public Builder setRewardedVideoCurrencyAmount(@Nullable String str) {
            this.f9399f = str;
            return this;
        }

        public Builder setRewardedVideoCurrencyName(@Nullable String str) {
            this.f9398e = str;
            return this;
        }

        public Builder setServerExtras(@Nullable Map<String, String> map) {
            if (map == null) {
                this.f9393C = new TreeMap();
            } else {
                this.f9393C = new TreeMap(map);
            }
            return this;
        }

        public Builder setShouldRewardOnClick(boolean z) {
            this.f9403j = z;
            return this;
        }
    }

    public AdResponse(@NonNull Builder builder) {
        this.f9365a = builder.f9394a;
        this.f9366b = builder.f9395b;
        this.f9367c = builder.f9396c;
        this.f9368d = builder.f9397d;
        this.f9369e = builder.f9398e;
        this.f9370f = builder.f9399f;
        this.f9371g = builder.f9400g;
        this.f9372h = builder.f9401h;
        this.f9373i = builder.f9402i;
        this.f9374j = builder.f9403j;
        this.f9375k = builder.f9404k;
        this.f9376l = builder.f9405l;
        this.f9377m = builder.f9406m;
        this.f9378n = builder.f9407n;
        this.f9379o = builder.f9408o;
        this.f9380p = builder.f9409p;
        this.f9381q = builder.f9410q;
        this.f9382r = builder.f9411r;
        this.f9383s = builder.f9412s;
        this.f9384t = builder.f9413t;
        this.f9385u = builder.f9414u;
        this.f9386v = builder.f9415v;
        this.f9387w = builder.f9416w;
        this.f9388x = builder.f9417x;
        this.f9389y = builder.f9418y;
        this.f9390z = builder.f9419z;
        this.f9361A = builder.f9391A;
        this.f9362B = builder.f9392B;
        this.f9363C = builder.f9393C;
        this.f9364D = DateAndTime.now().getTime();
    }

    @NonNull
    public Integer getAdTimeoutMillis(int i) {
        Integer num = this.f9386v;
        return (num == null || num.intValue() < 1000) ? Integer.valueOf(i) : this.f9386v;
    }

    @Nullable
    public String getAdType() {
        return this.f9365a;
    }

    @Nullable
    public String getAdUnitId() {
        return this.f9366b;
    }

    @NonNull
    public List<String> getAfterLoadFailUrls() {
        return this.f9382r;
    }

    @NonNull
    public List<String> getAfterLoadSuccessUrls() {
        return this.f9381q;
    }

    @NonNull
    public List<String> getAfterLoadUrls() {
        return this.f9380p;
    }

    @Nullable
    public String getBeforeLoadUrl() {
        return this.f9379o;
    }

    @Nullable
    public MoPub.BrowserAgent getBrowserAgent() {
        return this.f9362B;
    }

    @Nullable
    public String getClickTrackingUrl() {
        return this.f9376l;
    }

    @Nullable
    public String getCustomEventClassName() {
        return this.f9361A;
    }

    @Nullable
    public String getDspCreativeId() {
        return this.f9388x;
    }

    @Nullable
    @Deprecated
    public String getFailoverUrl() {
        return this.f9378n;
    }

    @Nullable
    public String getFullAdType() {
        return this.f9367c;
    }

    @Nullable
    public Integer getHeight() {
        return this.f9385u;
    }

    @Nullable
    public ImpressionData getImpressionData() {
        return this.f9375k;
    }

    @NonNull
    public List<String> getImpressionTrackingUrls() {
        return this.f9377m;
    }

    @Nullable
    public JSONObject getJsonBody() {
        return this.f9390z;
    }

    @Nullable
    public String getNetworkType() {
        return this.f9368d;
    }

    @Nullable
    public Integer getRefreshTimeMillis() {
        return this.f9387w;
    }

    @Nullable
    public String getRequestId() {
        return this.f9383s;
    }

    @Nullable
    public String getRewardedCurrencies() {
        return this.f9371g;
    }

    @Nullable
    public Integer getRewardedDuration() {
        return this.f9373i;
    }

    @Nullable
    public String getRewardedVideoCompletionUrl() {
        return this.f9372h;
    }

    @Nullable
    public String getRewardedVideoCurrencyAmount() {
        return this.f9370f;
    }

    @Nullable
    public String getRewardedVideoCurrencyName() {
        return this.f9369e;
    }

    @NonNull
    public Map<String, String> getServerExtras() {
        return new TreeMap(this.f9363C);
    }

    @Nullable
    public String getStringBody() {
        return this.f9389y;
    }

    public long getTimestamp() {
        return this.f9364D;
    }

    @Nullable
    public Integer getWidth() {
        return this.f9384t;
    }

    public boolean hasJson() {
        return this.f9390z != null;
    }

    public boolean shouldRewardOnClick() {
        return this.f9374j;
    }

    public Builder toBuilder() {
        return new Builder().setAdType(this.f9365a).setNetworkType(this.f9368d).setRewardedVideoCurrencyName(this.f9369e).setRewardedVideoCurrencyAmount(this.f9370f).setRewardedCurrencies(this.f9371g).setRewardedVideoCompletionUrl(this.f9372h).setRewardedDuration(this.f9373i).setShouldRewardOnClick(this.f9374j).setImpressionData(this.f9375k).setClickTrackingUrl(this.f9376l).setImpressionTrackingUrls(this.f9377m).setFailoverUrl(this.f9378n).setBeforeLoadUrl(this.f9379o).setAfterLoadUrls(this.f9380p).setAfterLoadSuccessUrls(this.f9381q).setAfterLoadFailUrls(this.f9382r).setDimensions(this.f9384t, this.f9385u).setAdTimeoutDelayMilliseconds(this.f9386v).setRefreshTimeMilliseconds(this.f9387w).setDspCreativeId(this.f9388x).setResponseBody(this.f9389y).setJsonBody(this.f9390z).setCustomEventClassName(this.f9361A).setBrowserAgent(this.f9362B).setServerExtras(this.f9363C);
    }
}
