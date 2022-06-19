package com.huawei.updatesdk.p111b.p115b;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p106b.p107a.C2530a;
/* renamed from: com.huawei.updatesdk.b.b.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/b/a.class */
public final class C2546a {

    /* renamed from: d */
    private static final Object f8245d = new Object();

    /* renamed from: e */
    private static C2546a f8246e;

    /* renamed from: a */
    private C2547b f8247a;

    /* renamed from: b */
    private String f8248b;

    /* renamed from: c */
    private boolean f8249c = false;

    private C2546a(Context context) {
        this.f8247a = C2547b.m36675a("DeviceSessionUpdateSDK_V1", context);
    }

    /* renamed from: d */
    public static C2546a m36680d() {
        C2546a c2546a;
        synchronized (f8245d) {
            if (f8246e == null) {
                f8246e = new C2546a(C2530a.m36754c().m36757a());
            }
            c2546a = f8246e;
        }
        return c2546a;
    }

    /* renamed from: a */
    public String m36690a() {
        return this.f8248b;
    }

    /* renamed from: a */
    public String m36688a(String str) {
        C2547b c2547b = this.f8247a;
        return c2547b.m36674a("updatesdk.lastAccountZone" + str, "");
    }

    /* renamed from: a */
    public void m36689a(long j) {
        this.f8247a.m36673b("updatesdk.lastCheckDate", j);
    }

    /* renamed from: a */
    public void m36687a(String str, long j) {
        C2547b c2547b = this.f8247a;
        c2547b.m36673b("updatesdk.lastInitAccountTime" + str, j);
    }

    /* renamed from: a */
    public void m36686a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f8247a.m36672b(str, str2);
    }

    /* renamed from: b */
    public long m36685b() {
        return this.f8247a.m36676a("updatesdk.lastCheckDate", 0L);
    }

    /* renamed from: b */
    public long m36684b(String str) {
        C2547b c2547b = this.f8247a;
        return c2547b.m36676a("updatesdk.lastInitAccountTime" + str, 0L);
    }

    /* renamed from: b */
    public void m36683b(String str, String str2) {
        C2547b c2547b = this.f8247a;
        c2547b.m36672b("updatesdk.lastAccountZone" + str, str2);
    }

    /* renamed from: c */
    public String m36681c(String str) {
        return TextUtils.isEmpty(str) ? "" : this.f8247a.m36674a(str, "");
    }

    /* renamed from: c */
    public void m36682c() {
        if (this.f8249c) {
            return;
        }
        m36679d("updatesdk.sign.param");
        m36679d("updatesdk.signkey");
        m36679d("updatesdk.signtime");
        this.f8249c = true;
    }

    /* renamed from: d */
    public void m36679d(String str) {
        this.f8247a.m36677a(str);
    }

    /* renamed from: e */
    public void m36678e(String str) {
        this.f8248b = str;
    }
}
