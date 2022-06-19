package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5028b;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/AdSlot.class */
public class AdSlot {
    public static final int TYPE_BANNER = 1;
    public static final int TYPE_CACHED_SPLASH = 4;
    public static final int TYPE_DRAW_FEED = 9;
    public static final int TYPE_FEED = 5;
    public static final int TYPE_FULL_SCREEN_VIDEO = 8;
    public static final int TYPE_INTERACTION_AD = 2;
    public static final int TYPE_REWARD_VIDEO = 7;
    public static final int TYPE_SPLASH = 3;

    /* renamed from: a */
    private String f15512a;

    /* renamed from: b */
    private int f15513b;

    /* renamed from: c */
    private int f15514c;

    /* renamed from: d */
    private float f15515d;

    /* renamed from: e */
    private float f15516e;

    /* renamed from: f */
    private int f15517f;

    /* renamed from: g */
    private boolean f15518g;

    /* renamed from: h */
    private String f15519h;

    /* renamed from: i */
    private int f15520i;

    /* renamed from: j */
    private String f15521j;

    /* renamed from: k */
    private String f15522k;

    /* renamed from: l */
    private int f15523l;

    /* renamed from: m */
    private int f15524m;

    /* renamed from: n */
    private boolean f15525n;

    /* renamed from: o */
    private boolean f15526o;

    /* renamed from: p */
    private String f15527p;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/AdSlot$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private String f15528a;

        /* renamed from: h */
        private String f15535h;

        /* renamed from: k */
        private int f15538k;

        /* renamed from: l */
        private float f15539l;

        /* renamed from: m */
        private float f15540m;

        /* renamed from: n */
        private boolean f15541n;

        /* renamed from: o */
        private String f15542o;

        /* renamed from: b */
        private int f15529b = 640;

        /* renamed from: c */
        private int f15530c = 320;

        /* renamed from: d */
        private boolean f15531d = true;

        /* renamed from: e */
        private int f15532e = 1;

        /* renamed from: f */
        private String f15533f = "";

        /* renamed from: g */
        private int f15534g = 0;

        /* renamed from: i */
        private String f15536i = "defaultUser";

        /* renamed from: j */
        private int f15537j = 2;

        /* renamed from: p */
        private boolean f15543p = true;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.f15512a = this.f15528a;
            adSlot.f15517f = this.f15532e;
            adSlot.f15518g = this.f15531d;
            adSlot.f15513b = this.f15529b;
            adSlot.f15514c = this.f15530c;
            adSlot.f15515d = this.f15539l;
            adSlot.f15516e = this.f15540m;
            adSlot.f15519h = this.f15533f;
            adSlot.f15520i = this.f15534g;
            adSlot.f15521j = this.f15535h;
            adSlot.f15522k = this.f15536i;
            adSlot.f15523l = this.f15537j;
            adSlot.f15524m = this.f15538k;
            adSlot.f15525n = this.f15543p;
            adSlot.f15526o = this.f15541n;
            adSlot.f15527p = this.f15542o;
            return adSlot;
        }

        public Builder isExpressAd(boolean z) {
            this.f15541n = z;
            return this;
        }

        public Builder setAdCount(int i) {
            this.f15532e = i;
            return this;
        }

        public Builder setCodeId(String str) {
            this.f15528a = str;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f, float f2) {
            this.f15539l = f;
            this.f15540m = f2;
            return this;
        }

        public Builder setImageAcceptedSize(int i, int i2) {
            this.f15529b = i;
            this.f15530c = i2;
            return this;
        }

        public Builder setIsAutoPlay(boolean z) {
            this.f15543p = z;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.f15535h = str;
            return this;
        }

        public Builder setNativeAdType(int i) {
            this.f15538k = i;
            return this;
        }

        public Builder setOrientation(int i) {
            this.f15537j = i;
            return this;
        }

        public Builder setRewardAmount(int i) {
            return this;
        }

        public Builder setRewardName(String str) {
            return this;
        }

        public Builder setSupportDeepLink(boolean z) {
            return this;
        }

        public Builder setUserID(String str) {
            this.f15536i = str;
            return this;
        }

        public Builder withBid(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            C5478q.m32109c("bidding", "AdSlot -> bidAdm=" + C5028b.m33243a(str));
            this.f15542o = str;
            return this;
        }
    }

    private AdSlot() {
        this.f15523l = 2;
        this.f15525n = true;
        this.f15526o = false;
    }

    public static int getPosition(int i) {
        if (i != 1) {
            if (i == 2) {
                return 4;
            }
            return (i == 3 || i == 4 || i == 7 || i == 8) ? 5 : 3;
        }
        return 2;
    }

    public static AdSlot getSlot(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Builder builder = new Builder();
        try {
            int optInt = jSONObject.optInt("mImgAcceptedWidth", 640);
            int optInt2 = jSONObject.optInt("mImgAcceptedHeight", 320);
            double optDouble = jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
            double optDouble2 = jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
            builder.setCodeId(jSONObject.optString("mCodeId", null));
            builder.setAdCount(jSONObject.optInt("mAdCount", 1));
            builder.setIsAutoPlay(jSONObject.optBoolean("mIsAutoPlay"));
            builder.setImageAcceptedSize(optInt, optInt2);
            builder.setExpressViewAcceptedSize(Double.valueOf(optDouble).floatValue(), Double.valueOf(optDouble2).floatValue());
            builder.setSupportDeepLink(jSONObject.optBoolean("mSupportDeepLink", false));
            builder.setRewardName(jSONObject.optString("mRewardName", null));
            builder.setRewardAmount(jSONObject.optInt("mRewardAmount"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra", null));
            builder.setUserID(jSONObject.optString("mUserID", null));
            builder.setOrientation(jSONObject.optInt("mOrientation"));
            builder.setNativeAdType(jSONObject.optInt("mNativeAdType"));
            builder.isExpressAd(jSONObject.optBoolean("mIsExpressAd"));
            builder.withBid(jSONObject.optString("mBidAdm"));
        } catch (Exception e) {
        }
        return builder.build();
    }

    public int getAdCount() {
        return this.f15517f;
    }

    public String getBidAdm() {
        return this.f15527p;
    }

    public String getCodeId() {
        return this.f15512a;
    }

    public float getExpressViewAcceptedHeight() {
        return this.f15516e;
    }

    public float getExpressViewAcceptedWidth() {
        return this.f15515d;
    }

    public int getImgAcceptedHeight() {
        return this.f15514c;
    }

    public int getImgAcceptedWidth() {
        return this.f15513b;
    }

    public String getMediaExtra() {
        return this.f15521j;
    }

    public int getNativeAdType() {
        return this.f15524m;
    }

    public int getOrientation() {
        return this.f15523l;
    }

    public int getRewardAmount() {
        return this.f15520i;
    }

    public String getRewardName() {
        return this.f15519h;
    }

    public String getUserID() {
        return this.f15522k;
    }

    public boolean isAutoPlay() {
        return this.f15525n;
    }

    public boolean isExpressAd() {
        return this.f15526o;
    }

    public boolean isSupportDeepLink() {
        return this.f15518g;
    }

    public void setAdCount(int i) {
        this.f15517f = i;
    }

    public void setNativeAdType(int i) {
        this.f15524m = i;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.f15512a);
            jSONObject.put("mAdCount", this.f15517f);
            jSONObject.put("mIsAutoPlay", this.f15525n);
            jSONObject.put("mImgAcceptedWidth", this.f15513b);
            jSONObject.put("mImgAcceptedHeight", this.f15514c);
            jSONObject.put("mExpressViewAcceptedWidth", this.f15515d);
            jSONObject.put("mExpressViewAcceptedHeight", this.f15516e);
            jSONObject.put("mSupportDeepLink", this.f15518g);
            jSONObject.put("mRewardName", this.f15519h);
            jSONObject.put("mRewardAmount", this.f15520i);
            jSONObject.put("mMediaExtra", this.f15521j);
            jSONObject.put("mUserID", this.f15522k);
            jSONObject.put("mOrientation", this.f15523l);
            jSONObject.put("mNativeAdType", this.f15524m);
            jSONObject.put("mIsExpressAd", this.f15526o);
            jSONObject.put("mBidAdm", this.f15527p);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    public String toString() {
        return "AdSlot{mCodeId='" + this.f15512a + "', mImgAcceptedWidth=" + this.f15513b + ", mImgAcceptedHeight=" + this.f15514c + ", mExpressViewAcceptedWidth=" + this.f15515d + ", mExpressViewAcceptedHeight=" + this.f15516e + ", mAdCount=" + this.f15517f + ", mSupportDeepLink=" + this.f15518g + ", mRewardName='" + this.f15519h + "', mRewardAmount=" + this.f15520i + ", mMediaExtra='" + this.f15521j + "', mUserID='" + this.f15522k + "', mOrientation=" + this.f15523l + ", mNativeAdType=" + this.f15524m + ", mIsAutoPlay=" + this.f15525n + '}';
    }
}
