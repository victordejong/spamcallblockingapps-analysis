package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.content.pm.PackageManager;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.openadsdk.core.C4600n;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConfig.class */
public final class TTAdConfig {

    /* renamed from: a */
    private String f15561a;

    /* renamed from: b */
    private String f15562b;

    /* renamed from: c */
    private boolean f15563c;

    /* renamed from: d */
    private String f15564d;

    /* renamed from: e */
    private String f15565e;

    /* renamed from: f */
    private int f15566f;

    /* renamed from: g */
    private boolean f15567g;

    /* renamed from: h */
    private boolean f15568h;

    /* renamed from: i */
    private boolean f15569i;

    /* renamed from: j */
    private boolean f15570j;

    /* renamed from: k */
    private IHttpStack f15571k;

    /* renamed from: l */
    private String[] f15572l;

    /* renamed from: m */
    private boolean f15573m;

    /* renamed from: n */
    private int f15574n;

    /* renamed from: o */
    private int f15575o;

    /* renamed from: p */
    private TTSecAbs f15576p;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConfig$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private String f15577a;

        /* renamed from: b */
        private String f15578b;

        /* renamed from: d */
        private String f15580d;

        /* renamed from: e */
        private String f15581e;

        /* renamed from: k */
        private IHttpStack f15587k;

        /* renamed from: l */
        private String[] f15588l;

        /* renamed from: p */
        private TTSecAbs f15592p;

        /* renamed from: c */
        private boolean f15579c = false;

        /* renamed from: f */
        private int f15582f = 0;

        /* renamed from: g */
        private boolean f15583g = true;

        /* renamed from: h */
        private boolean f15584h = false;

        /* renamed from: i */
        private boolean f15585i = false;

        /* renamed from: j */
        private boolean f15586j = false;

        /* renamed from: m */
        private boolean f15589m = false;

        /* renamed from: n */
        private int f15590n = 0;

        /* renamed from: o */
        private int f15591o = -1;

        public Builder allowShowNotify(boolean z) {
            this.f15583g = z;
            return this;
        }

        public Builder allowShowPageWhenScreenLock(boolean z) {
            return this;
        }

        public Builder appId(String str) {
            this.f15577a = str;
            return this;
        }

        public Builder appName(String str) {
            this.f15578b = str;
            return this;
        }

        public Builder asyncInit(boolean z) {
            this.f15589m = z;
            return this;
        }

        public TTAdConfig build() {
            TTAdConfig tTAdConfig = new TTAdConfig();
            tTAdConfig.setAppId(this.f15577a);
            tTAdConfig.setCoppa(this.f15590n);
            tTAdConfig.setAppName(this.f15578b);
            tTAdConfig.setPaid(this.f15579c);
            tTAdConfig.setKeywords(this.f15580d);
            tTAdConfig.setData(this.f15581e);
            tTAdConfig.setTitleBarTheme(this.f15582f);
            tTAdConfig.setAllowShowNotify(this.f15583g);
            tTAdConfig.setDebug(this.f15584h);
            tTAdConfig.setUseTextureView(this.f15585i);
            tTAdConfig.setSupportMultiProcess(this.f15586j);
            tTAdConfig.setHttpStack(this.f15587k);
            tTAdConfig.setNeedClearTaskReset(this.f15588l);
            tTAdConfig.setAsyncInit(this.f15589m);
            tTAdConfig.setGDPR(this.f15591o);
            return tTAdConfig;
        }

        public Builder coppa(int i) {
            this.f15590n = i;
            return this;
        }

        public Builder data(String str) {
            this.f15581e = str;
            return this;
        }

        public Builder debug(boolean z) {
            this.f15584h = z;
            return this;
        }

        public Builder httpStack(IHttpStack iHttpStack) {
            this.f15587k = iHttpStack;
            return this;
        }

        public Builder keywords(String str) {
            this.f15580d = str;
            return this;
        }

        public Builder needClearTaskReset(String... strArr) {
            this.f15588l = strArr;
            return this;
        }

        public Builder paid(boolean z) {
            this.f15579c = z;
            return this;
        }

        public Builder setGDPR(int i) {
            this.f15591o = i;
            return this;
        }

        public Builder supportMultiProcess(boolean z) {
            this.f15586j = z;
            return this;
        }

        public Builder titleBarTheme(int i) {
            this.f15582f = i;
            return this;
        }

        public Builder ttSecAbs(TTSecAbs tTSecAbs) {
            this.f15592p = tTSecAbs;
            return this;
        }

        public Builder useTextureView(boolean z) {
            this.f15585i = z;
            return this;
        }
    }

    private TTAdConfig() {
        this.f15563c = false;
        this.f15566f = 0;
        this.f15567g = true;
        this.f15568h = false;
        this.f15569i = false;
        this.f15570j = false;
        this.f15573m = false;
        this.f15574n = 0;
        this.f15575o = -1;
    }

    /* renamed from: a */
    private String m36040a(Context context) {
        String str;
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            str = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (PackageManager.NameNotFoundException e) {
            str = "";
        }
        return str;
    }

    public final String getAppId() {
        return this.f15561a;
    }

    public final String getAppName() {
        String str = this.f15562b;
        if (str == null || str.isEmpty()) {
            this.f15562b = m36040a(C4600n.m34815a());
        }
        return this.f15562b;
    }

    public final int getCoppa() {
        return this.f15574n;
    }

    public final String getData() {
        return this.f15565e;
    }

    public final int getGDPR() {
        return this.f15575o;
    }

    public final IHttpStack getHttpStack() {
        return this.f15571k;
    }

    public final String getKeywords() {
        return this.f15564d;
    }

    public final String[] getNeedClearTaskReset() {
        return this.f15572l;
    }

    public final TTSecAbs getTTSecAbs() {
        return this.f15576p;
    }

    public final int getTitleBarTheme() {
        return this.f15566f;
    }

    public final boolean isAllowShowNotify() {
        return this.f15567g;
    }

    public final boolean isAsyncInit() {
        return this.f15573m;
    }

    public final boolean isDebug() {
        return this.f15568h;
    }

    public final boolean isPaid() {
        return this.f15563c;
    }

    public final boolean isSupportMultiProcess() {
        return this.f15570j;
    }

    public final boolean isUseTextureView() {
        return this.f15569i;
    }

    public final void setAllowShowNotify(boolean z) {
        this.f15567g = z;
    }

    public final void setAppId(String str) {
        this.f15561a = str;
    }

    public final void setAppName(String str) {
        this.f15562b = str;
    }

    public final void setAsyncInit(boolean z) {
        this.f15573m = z;
    }

    public final void setCoppa(int i) {
        this.f15574n = i;
    }

    public final void setData(String str) {
        this.f15565e = str;
    }

    public final void setDebug(boolean z) {
        this.f15568h = z;
    }

    public final void setGDPR(int i) {
        this.f15575o = i;
    }

    public final void setHttpStack(IHttpStack iHttpStack) {
        this.f15571k = iHttpStack;
    }

    public final void setKeywords(String str) {
        this.f15564d = str;
    }

    public final void setNeedClearTaskReset(String... strArr) {
        this.f15572l = strArr;
    }

    public final void setPaid(boolean z) {
        this.f15563c = z;
    }

    public final void setSupportMultiProcess(boolean z) {
        this.f15570j = z;
    }

    public final void setTTSecAbs(TTSecAbs tTSecAbs) {
        this.f15576p = tTSecAbs;
    }

    public final void setTitleBarTheme(int i) {
        this.f15566f = i;
    }

    public final void setUseTextureView(boolean z) {
        this.f15569i = z;
    }
}
