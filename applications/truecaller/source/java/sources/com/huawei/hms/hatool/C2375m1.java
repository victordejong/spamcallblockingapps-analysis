package com.huawei.hms.hatool;

import android.content.Context;
/* renamed from: com.huawei.hms.hatool.m1 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/m1.class */
public class C2375m1 {

    /* renamed from: a */
    public C2370k f7581a;

    /* renamed from: b */
    public C2370k f7582b;

    /* renamed from: c */
    public Context f7583c;

    /* renamed from: d */
    public String f7584d;

    public C2375m1(Context context) {
        if (context != null) {
            this.f7583c = context.getApplicationContext();
        }
        this.f7581a = new C2370k();
        this.f7582b = new C2370k();
    }

    /* renamed from: a */
    public C2375m1 m37563a(int i, String str) {
        C2370k c2370k;
        C2398y.m37473c("hmsSdk", "Builder.setCollectURL(int type,String collectURL) is execute.TYPE : " + i);
        String str2 = str;
        if (!C2392v0.m37502b(str)) {
            str2 = "";
        }
        if (i == 0) {
            c2370k = this.f7581a;
        } else if (i != 1) {
            C2398y.m37469f("hmsSdk", "Builder.setCollectURL(int type,String collectURL): invalid type!");
            return this;
        } else {
            c2370k = this.f7582b;
        }
        c2370k.m37637b(str2);
        return this;
    }

    /* renamed from: a */
    public C2375m1 m37562a(String str) {
        C2398y.m37473c("hmsSdk", "Builder.setAppID is execute");
        this.f7584d = str;
        return this;
    }

    @Deprecated
    /* renamed from: a */
    public C2375m1 m37561a(boolean z) {
        C2398y.m37473c("hmsSdk", "Builder.setEnableImei(boolean isReportAndroidImei) is execute.");
        this.f7581a.m37620j().m37662a(z);
        this.f7582b.m37620j().m37662a(z);
        return this;
    }

    /* renamed from: a */
    public void m37564a() {
        if (this.f7583c == null) {
            C2398y.m37476b("hmsSdk", "analyticsConf create(): context is null,create failed!");
            return;
        }
        C2398y.m37473c("hmsSdk", "Builder.create() is execute.");
        C2369j1 c2369j1 = new C2369j1("_hms_config_tag");
        c2369j1.m37647b(new C2370k(this.f7581a));
        c2369j1.m37649a(new C2370k(this.f7582b));
        C2365h1.m37680a().m37679a(this.f7583c);
        C2367i1.m37670a().m37669a(this.f7583c);
        C2381o1.m37549c().m37551a(c2369j1);
        C2365h1.m37680a().m37678a(this.f7584d);
    }

    @Deprecated
    /* renamed from: b */
    public C2375m1 m37560b(boolean z) {
        C2398y.m37473c("hmsSdk", "Builder.setEnableSN(boolean isReportSN) is execute.");
        this.f7581a.m37620j().m37660b(z);
        this.f7582b.m37620j().m37660b(z);
        return this;
    }

    @Deprecated
    /* renamed from: c */
    public C2375m1 m37559c(boolean z) {
        C2398y.m37473c("hmsSdk", "Builder.setEnableUDID(boolean isReportUDID) is execute.");
        this.f7581a.m37620j().m37658c(z);
        this.f7582b.m37620j().m37658c(z);
        return this;
    }
}
