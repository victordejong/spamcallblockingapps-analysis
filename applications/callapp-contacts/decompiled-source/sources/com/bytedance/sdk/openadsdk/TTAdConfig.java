package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.content.pm.PackageManager;
import com.bytedance.sdk.adnet.face.IHttpStack;
import com.bytedance.sdk.openadsdk.core.n;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConfig.class */
public final class TTAdConfig {

    /* renamed from: a  reason: collision with root package name */
    private String f8390a;

    /* renamed from: b  reason: collision with root package name */
    private String f8391b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8392c;

    /* renamed from: d  reason: collision with root package name */
    private String f8393d;
    private String e;
    private int f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private IHttpStack k;
    private String[] l;
    private boolean m;
    private int n;
    private int o;
    private TTSecAbs p;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdConfig$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f8394a;

        /* renamed from: b  reason: collision with root package name */
        private String f8395b;

        /* renamed from: d  reason: collision with root package name */
        private String f8397d;
        private String e;
        private IHttpStack k;
        private String[] l;
        private TTSecAbs p;

        /* renamed from: c  reason: collision with root package name */
        private boolean f8396c = false;
        private int f = 0;
        private boolean g = true;
        private boolean h = false;
        private boolean i = false;
        private boolean j = false;
        private boolean m = false;
        private int n = 0;
        private int o = -1;

        public Builder allowShowNotify(boolean z) {
            this.g = z;
            return this;
        }

        public Builder allowShowPageWhenScreenLock(boolean z) {
            return this;
        }

        public Builder appId(String str) {
            this.f8394a = str;
            return this;
        }

        public Builder appName(String str) {
            this.f8395b = str;
            return this;
        }

        public Builder asyncInit(boolean z) {
            this.m = z;
            return this;
        }

        public TTAdConfig build() {
            TTAdConfig tTAdConfig = new TTAdConfig();
            tTAdConfig.setAppId(this.f8394a);
            tTAdConfig.setCoppa(this.n);
            tTAdConfig.setAppName(this.f8395b);
            tTAdConfig.setPaid(this.f8396c);
            tTAdConfig.setKeywords(this.f8397d);
            tTAdConfig.setData(this.e);
            tTAdConfig.setTitleBarTheme(this.f);
            tTAdConfig.setAllowShowNotify(this.g);
            tTAdConfig.setDebug(this.h);
            tTAdConfig.setUseTextureView(this.i);
            tTAdConfig.setSupportMultiProcess(this.j);
            tTAdConfig.setHttpStack(this.k);
            tTAdConfig.setNeedClearTaskReset(this.l);
            tTAdConfig.setAsyncInit(this.m);
            tTAdConfig.setGDPR(this.o);
            return tTAdConfig;
        }

        public Builder coppa(int i) {
            this.n = i;
            return this;
        }

        public Builder data(String str) {
            this.e = str;
            return this;
        }

        public Builder debug(boolean z) {
            this.h = z;
            return this;
        }

        public Builder httpStack(IHttpStack iHttpStack) {
            this.k = iHttpStack;
            return this;
        }

        public Builder keywords(String str) {
            this.f8397d = str;
            return this;
        }

        public Builder needClearTaskReset(String... strArr) {
            this.l = strArr;
            return this;
        }

        public Builder paid(boolean z) {
            this.f8396c = z;
            return this;
        }

        public Builder setGDPR(int i) {
            this.o = i;
            return this;
        }

        public Builder supportMultiProcess(boolean z) {
            this.j = z;
            return this;
        }

        public Builder titleBarTheme(int i) {
            this.f = i;
            return this;
        }

        public Builder ttSecAbs(TTSecAbs tTSecAbs) {
            this.p = tTSecAbs;
            return this;
        }

        public Builder useTextureView(boolean z) {
            this.i = z;
            return this;
        }
    }

    private TTAdConfig() {
        this.f8392c = false;
        this.f = 0;
        this.g = true;
        this.h = false;
        this.i = false;
        this.j = false;
        this.m = false;
        this.n = 0;
        this.o = -1;
    }

    private String a(Context context) {
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
        return this.f8390a;
    }

    public final String getAppName() {
        String str = this.f8391b;
        if (str == null || str.isEmpty()) {
            this.f8391b = a(n.a());
        }
        return this.f8391b;
    }

    public final int getCoppa() {
        return this.n;
    }

    public final String getData() {
        return this.e;
    }

    public final int getGDPR() {
        return this.o;
    }

    public final IHttpStack getHttpStack() {
        return this.k;
    }

    public final String getKeywords() {
        return this.f8393d;
    }

    public final String[] getNeedClearTaskReset() {
        return this.l;
    }

    public final TTSecAbs getTTSecAbs() {
        return this.p;
    }

    public final int getTitleBarTheme() {
        return this.f;
    }

    public final boolean isAllowShowNotify() {
        return this.g;
    }

    public final boolean isAsyncInit() {
        return this.m;
    }

    public final boolean isDebug() {
        return this.h;
    }

    public final boolean isPaid() {
        return this.f8392c;
    }

    public final boolean isSupportMultiProcess() {
        return this.j;
    }

    public final boolean isUseTextureView() {
        return this.i;
    }

    public final void setAllowShowNotify(boolean z) {
        this.g = z;
    }

    public final void setAppId(String str) {
        this.f8390a = str;
    }

    public final void setAppName(String str) {
        this.f8391b = str;
    }

    public final void setAsyncInit(boolean z) {
        this.m = z;
    }

    public final void setCoppa(int i) {
        this.n = i;
    }

    public final void setData(String str) {
        this.e = str;
    }

    public final void setDebug(boolean z) {
        this.h = z;
    }

    public final void setGDPR(int i) {
        this.o = i;
    }

    public final void setHttpStack(IHttpStack iHttpStack) {
        this.k = iHttpStack;
    }

    public final void setKeywords(String str) {
        this.f8393d = str;
    }

    public final void setNeedClearTaskReset(String... strArr) {
        this.l = strArr;
    }

    public final void setPaid(boolean z) {
        this.f8392c = z;
    }

    public final void setSupportMultiProcess(boolean z) {
        this.j = z;
    }

    public final void setTTSecAbs(TTSecAbs tTSecAbs) {
        this.p = tTSecAbs;
    }

    public final void setTitleBarTheme(int i) {
        this.f = i;
    }

    public final void setUseTextureView(boolean z) {
        this.i = z;
    }
}
