package com.huawei.hms.base.log;

import android.content.Context;
import android.util.Log;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.base.log.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/base/log/a.class */
public class C2275a {

    /* renamed from: b */
    public String f7347b;

    /* renamed from: a */
    public int f7346a = 4;

    /* renamed from: c */
    public AbstractC2276b f7348c = new e();

    /* renamed from: a */
    public AbstractC2276b m38118a() {
        return this.f7348c;
    }

    /* renamed from: a */
    public final C2277c m38115a(int i, String str, String str2, Throwable th) {
        C2277c c2277c = new C2277c(8, this.f7347b, i, str);
        c2277c.m38105a((C2277c) str2);
        c2277c.m38103a(th);
        return c2277c;
    }

    /* renamed from: a */
    public void m38116a(int i, String str, String str2) {
        if (m38117a(i)) {
            C2277c m38115a = m38115a(i, str, str2, null);
            this.f7348c.m38108a(m38115a.m38100c() + m38115a.m38107a(), i, str, str2);
        }
    }

    /* renamed from: a */
    public void m38114a(Context context, int i, String str) {
        this.f7346a = i;
        this.f7347b = str;
        this.f7348c.m38110a(context, "HMSCore");
    }

    /* renamed from: a */
    public void m38113a(AbstractC2276b abstractC2276b) {
        this.f7348c = abstractC2276b;
    }

    /* renamed from: a */
    public void m38112a(String str, String str2) {
        C2277c m38115a = m38115a(4, str, str2, null);
        this.f7348c.m38108a(m38115a.m38100c() + '\n' + m38115a.m38107a(), 4, str, str2);
    }

    /* renamed from: a */
    public boolean m38117a(int i) {
        return i >= this.f7346a;
    }

    /* renamed from: b */
    public void m38111b(int i, String str, String str2, Throwable th) {
        if (m38117a(i)) {
            C2277c m38115a = m38115a(i, str, str2, th);
            String str3 = m38115a.m38100c() + m38115a.m38107a();
            AbstractC2276b abstractC2276b = this.f7348c;
            StringBuilder m8724D = C22128a.m8724D(str2, '\n');
            m8724D.append(Log.getStackTraceString(th));
            abstractC2276b.m38108a(str3, i, str, m8724D.toString());
        }
    }
}
