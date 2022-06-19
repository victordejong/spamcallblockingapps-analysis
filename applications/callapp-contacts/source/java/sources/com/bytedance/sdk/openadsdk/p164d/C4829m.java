package com.bytedance.sdk.openadsdk.p164d;

import android.content.Context;
/* renamed from: com.bytedance.sdk.openadsdk.d.m */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/m.class */
public class C4829m extends C4831o {
    public C4829m(Context context) {
        super(context);
    }

    /* renamed from: d */
    public static String m33799d() {
        return "CREATE TABLE IF NOT EXISTS logstatsbatch (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.C4831o, com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: a */
    public void mo33793a(int i) {
        this.f17729a.m35417a("stats_serverbusy_retrycount", i);
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.C4831o, com.bytedance.sdk.openadsdk.p164d.AbstractC4813f
    /* renamed from: b */
    public int mo33783b() {
        return this.f17729a.m35413b("stats_serverbusy_retrycount", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.C4831o
    /* renamed from: c */
    public String mo33780c() {
        return "logstatsbatch";
    }
}
