package com.huawei.hms.hatool;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.z */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/z.class */
public class C2400z {

    /* renamed from: a */
    public boolean f7625a = false;

    /* renamed from: b */
    public int f7626b = 4;

    /* renamed from: a */
    public static String m37468a() {
        StringBuilder m8728C = C22128a.m8728C("FormalHASDK_2.2.0.312");
        m8728C.append(C2371k1.m37612a());
        return m8728C.toString();
    }

    /* renamed from: a */
    public void m37467a(int i) {
        System.lineSeparator();
        System.lineSeparator();
        m37468a();
        System.lineSeparator();
        this.f7626b = i;
        this.f7625a = true;
    }

    /* renamed from: a */
    public void m37466a(int i, String str, String str2) {
        if (i == 3 || i != 5) {
        }
    }

    /* renamed from: b */
    public void m37464b(int i, String str, String str2) {
        m37466a(i, "FormalHASDK", C22128a.m8725C2(str, "=> ", str2));
    }

    /* renamed from: b */
    public boolean m37465b(int i) {
        return this.f7625a && i >= this.f7626b;
    }
}
