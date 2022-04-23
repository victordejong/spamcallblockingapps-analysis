package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.k.g.b;
import com.bytedance.sdk.openadsdk.utils.q;
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

    /* renamed from: a  reason: collision with root package name */
    private String f8366a;

    /* renamed from: b  reason: collision with root package name */
    private int f8367b;

    /* renamed from: c  reason: collision with root package name */
    private int f8368c;

    /* renamed from: d  reason: collision with root package name */
    private float f8369d;
    private float e;
    private int f;
    private boolean g;
    private String h;
    private int i;
    private String j;
    private String k;
    private int l;
    private int m;
    private boolean n;
    private boolean o;
    private String p;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/AdSlot$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f8370a;
        private String h;
        private int k;
        private float l;
        private float m;
        private boolean n;
        private String o;

        /* renamed from: b  reason: collision with root package name */
        private int f8371b = 640;

        /* renamed from: c  reason: collision with root package name */
        private int f8372c = 320;

        /* renamed from: d  reason: collision with root package name */
        private boolean f8373d = true;
        private int e = 1;
        private String f = "";
        private int g = 0;
        private String i = "defaultUser";
        private int j = 2;
        private boolean p = true;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.f8366a = this.f8370a;
            adSlot.f = this.e;
            adSlot.g = this.f8373d;
            adSlot.f8367b = this.f8371b;
            adSlot.f8368c = this.f8372c;
            adSlot.f8369d = this.l;
            adSlot.e = this.m;
            adSlot.h = this.f;
            adSlot.i = this.g;
            adSlot.j = this.h;
            adSlot.k = this.i;
            adSlot.l = this.j;
            adSlot.m = this.k;
            adSlot.n = this.p;
            adSlot.o = this.n;
            adSlot.p = this.o;
            return adSlot;
        }

        public Builder isExpressAd(boolean z) {
            this.n = z;
            return this;
        }

        public Builder setAdCount(int i) {
            this.e = i;
            return this;
        }

        public Builder setCodeId(String str) {
            this.f8370a = str;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f, float f2) {
            this.l = f;
            this.m = f2;
            return this;
        }

        public Builder setImageAcceptedSize(int i, int i2) {
            this.f8371b = i;
            this.f8372c = i2;
            return this;
        }

        public Builder setIsAutoPlay(boolean z) {
            this.p = z;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.h = str;
            return this;
        }

        public Builder setNativeAdType(int i) {
            this.k = i;
            return this;
        }

        public Builder setOrientation(int i) {
            this.j = i;
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
            this.i = str;
            return this;
        }

        public Builder withBid(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            q.c("bidding", "AdSlot -> bidAdm=" + b.a(str));
            this.o = str;
            return this;
        }
    }

    private AdSlot() {
        this.l = 2;
        this.n = true;
        this.o = false;
    }

    public static int getPosition(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return (i == 3 || i == 4 || i == 7 || i == 8) ? 5 : 3;
        }
        return 4;
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
        return this.f;
    }

    public String getBidAdm() {
        return this.p;
    }

    public String getCodeId() {
        return this.f8366a;
    }

    public float getExpressViewAcceptedHeight() {
        return this.e;
    }

    public float getExpressViewAcceptedWidth() {
        return this.f8369d;
    }

    public int getImgAcceptedHeight() {
        return this.f8368c;
    }

    public int getImgAcceptedWidth() {
        return this.f8367b;
    }

    public String getMediaExtra() {
        return this.j;
    }

    public int getNativeAdType() {
        return this.m;
    }

    public int getOrientation() {
        return this.l;
    }

    public int getRewardAmount() {
        return this.i;
    }

    public String getRewardName() {
        return this.h;
    }

    public String getUserID() {
        return this.k;
    }

    public boolean isAutoPlay() {
        return this.n;
    }

    public boolean isExpressAd() {
        return this.o;
    }

    public boolean isSupportDeepLink() {
        return this.g;
    }

    public void setAdCount(int i) {
        this.f = i;
    }

    public void setNativeAdType(int i) {
        this.m = i;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.f8366a);
            jSONObject.put("mAdCount", this.f);
            jSONObject.put("mIsAutoPlay", this.n);
            jSONObject.put("mImgAcceptedWidth", this.f8367b);
            jSONObject.put("mImgAcceptedHeight", this.f8368c);
            jSONObject.put("mExpressViewAcceptedWidth", this.f8369d);
            jSONObject.put("mExpressViewAcceptedHeight", this.e);
            jSONObject.put("mSupportDeepLink", this.g);
            jSONObject.put("mRewardName", this.h);
            jSONObject.put("mRewardAmount", this.i);
            jSONObject.put("mMediaExtra", this.j);
            jSONObject.put("mUserID", this.k);
            jSONObject.put("mOrientation", this.l);
            jSONObject.put("mNativeAdType", this.m);
            jSONObject.put("mIsExpressAd", this.o);
            jSONObject.put("mBidAdm", this.p);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    public String toString() {
        return "AdSlot{mCodeId='" + this.f8366a + "', mImgAcceptedWidth=" + this.f8367b + ", mImgAcceptedHeight=" + this.f8368c + ", mExpressViewAcceptedWidth=" + this.f8369d + ", mExpressViewAcceptedHeight=" + this.e + ", mAdCount=" + this.f + ", mSupportDeepLink=" + this.g + ", mRewardName='" + this.h + "', mRewardAmount=" + this.i + ", mMediaExtra='" + this.j + "', mUserID='" + this.k + "', mOrientation=" + this.l + ", mNativeAdType=" + this.m + ", mIsAutoPlay=" + this.n + '}';
    }
}
