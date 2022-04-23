package com.bytedance.sdk.openadsdk.d;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/m.class */
public class m extends o {
    public m(Context context) {
        super(context);
    }

    public static String d() {
        return "CREATE TABLE IF NOT EXISTS logstatsbatch (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.openadsdk.d.o, com.bytedance.sdk.openadsdk.d.f
    public void a(int i) {
        this.f9436a.a("stats_serverbusy_retrycount", i);
    }

    @Override // com.bytedance.sdk.openadsdk.d.o, com.bytedance.sdk.openadsdk.d.f
    public int b() {
        return this.f9436a.b("stats_serverbusy_retrycount", 0);
    }

    @Override // com.bytedance.sdk.openadsdk.d.o
    public String c() {
        return "logstatsbatch";
    }
}
