package com.huawei.hms.hatool;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.keystore.aes.AesGcmKS;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
/* renamed from: com.huawei.hms.hatool.d0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/d0.class */
public class C2354d0 {

    /* renamed from: c */
    public static C2354d0 f7507c;

    /* renamed from: a */
    public String f7508a;

    /* renamed from: b */
    public String f7509b;

    /* renamed from: f */
    public static C2354d0 m37732f() {
        if (f7507c == null) {
            m37731g();
        }
        return f7507c;
    }

    /* renamed from: g */
    public static void m37731g() {
        synchronized (C2354d0.class) {
            try {
                if (f7507c == null) {
                    f7507c = new C2354d0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public String m37740a() {
        if (TextUtils.isEmpty(this.f7508a)) {
            this.f7508a = m37736c();
        }
        return this.f7508a;
    }

    /* renamed from: a */
    public final String m37739a(String str) {
        String decrypt = m37733e() ? AesGcmKS.decrypt("analytics_keystore", str) : "";
        String str2 = decrypt;
        if (TextUtils.isEmpty(decrypt)) {
            C2398y.m37473c("hmsSdk", "deCrypt work key first");
            String m37743a = C2353d.m37743a(str, m37734d());
            if (TextUtils.isEmpty(m37743a)) {
                String generateSecureRandomStr = EncryptUtil.generateSecureRandomStr(16);
                m37735c(m37737b(generateSecureRandomStr));
                str2 = generateSecureRandomStr;
                if (m37733e()) {
                    str2 = generateSecureRandomStr;
                    C2352c0.m37745d();
                }
            } else {
                str2 = m37743a;
                if (m37733e()) {
                    m37735c(m37737b(m37743a));
                    str2 = m37743a;
                    C2352c0.m37745d();
                }
            }
        }
        return str2;
    }

    /* renamed from: b */
    public final String m37737b(String str) {
        return m37733e() ? AesGcmKS.encrypt("analytics_keystore", str) : C2353d.m37741b(str, m37734d());
    }

    /* renamed from: b */
    public void m37738b() {
        String generateSecureRandomStr = EncryptUtil.generateSecureRandomStr(16);
        if (m37735c(m37737b(generateSecureRandomStr))) {
            this.f7508a = generateSecureRandomStr;
        }
    }

    /* renamed from: c */
    public final String m37736c() {
        String m37696a = C2362g0.m37696a(AbstractC2349b.m37779i(), "Privacy_MY", "PrivacyData", "");
        if (TextUtils.isEmpty(m37696a)) {
            String generateSecureRandomStr = EncryptUtil.generateSecureRandomStr(16);
            m37735c(m37737b(generateSecureRandomStr));
            return generateSecureRandomStr;
        }
        return m37739a(m37696a);
    }

    /* renamed from: c */
    public final boolean m37735c(String str) {
        C2398y.m37473c("hmsSdk", "refresh sp aes key");
        if (TextUtils.isEmpty(str)) {
            C2398y.m37473c("hmsSdk", "refreshLocalKey(): encrypted key is empty");
            return false;
        }
        C2362g0.m37692b(AbstractC2349b.m37779i(), "Privacy_MY", "PrivacyData", str);
        C2362g0.m37693b(AbstractC2349b.m37779i(), "Privacy_MY", "flashKeyTime", System.currentTimeMillis());
        return true;
    }

    /* renamed from: d */
    public final String m37734d() {
        if (TextUtils.isEmpty(this.f7509b)) {
            this.f7509b = new C2352c0().m37754a();
        }
        return this.f7509b;
    }

    /* renamed from: e */
    public final boolean m37733e() {
        return true;
    }
}
