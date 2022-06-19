package com.huawei.hms.hatool;

import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
/* renamed from: com.huawei.hms.hatool.x */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/x.class */
public class C2395x {

    /* renamed from: b */
    public static C2395x f7611b = new C2395x();

    /* renamed from: a */
    public C2396a f7612a = new C2396a();

    /* renamed from: com.huawei.hms.hatool.x$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/x$a.class */
    public class C2396a {

        /* renamed from: a */
        public String f7613a;

        /* renamed from: b */
        public String f7614b;

        /* renamed from: c */
        public long f7615c = 0;

        public C2396a() {
            C2395x.this = r5;
        }

        /* renamed from: a */
        public void m37486a(long j) {
            C2395x.this.f7612a.f7615c = j;
        }

        /* renamed from: a */
        public void m37485a(String str) {
            C2395x.this.f7612a.f7614b = str;
        }

        /* renamed from: b */
        public void m37484b(String str) {
            C2395x.this.f7612a.f7613a = str;
        }
    }

    /* renamed from: d */
    public static C2395x m37487d() {
        return f7611b;
    }

    /* renamed from: a */
    public String m37492a() {
        return this.f7612a.f7614b;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: a */
    public void m37490a(String str, String str2) {
        char m37489b = m37489b();
        String m37539b = C2384r0.m37539b(str, str2);
        if (m37539b == null || m37539b.isEmpty()) {
            C2398y.m37470e("WorkKeyHandler", "get rsa pubkey config error");
            return;
        }
        if (m37489b == 0) {
            m37489b = System.currentTimeMillis();
        } else if (System.currentTimeMillis() - m37489b <= 43200000) {
            return;
        }
        String generateSecureRandomStr = EncryptUtil.generateSecureRandomStr(16);
        String m37730a = C2355e.m37730a(m37539b, generateSecureRandomStr);
        this.f7612a.m37486a(m37489b);
        this.f7612a.m37484b(generateSecureRandomStr);
        this.f7612a.m37485a(m37730a);
    }

    /* renamed from: b */
    public long m37489b() {
        return this.f7612a.f7615c;
    }

    /* renamed from: c */
    public String m37488c() {
        return this.f7612a.f7613a;
    }
}
