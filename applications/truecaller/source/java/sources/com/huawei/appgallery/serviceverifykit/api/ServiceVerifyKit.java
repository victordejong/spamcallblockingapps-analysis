package com.huawei.appgallery.serviceverifykit.api;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.appgallery.serviceverifykit.p078a.C2228a;
import com.huawei.appgallery.serviceverifykit.p079b.C2231a;
import com.huawei.appgallery.serviceverifykit.p080c.C2232a;
import com.huawei.appgallery.serviceverifykit.p081d.C2234b;
import com.huawei.appgallery.serviceverifykit.p081d.p082d.C2237b;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit.class */
public class ServiceVerifyKit {

    /* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private String f7169a;

        /* renamed from: k */
        private Context f7179k;

        /* renamed from: l */
        private int f7180l;

        /* renamed from: o */
        private Intent f7183o;

        /* renamed from: p */
        private ComponentType f7184p;

        /* renamed from: r */
        private String f7186r;

        /* renamed from: b */
        private String f7170b = "AppGallery Verification";

        /* renamed from: c */
        private String f7171c = "Huawei CBG Cloud Security Signer";

        /* renamed from: d */
        private String f7172d = "com.huawei.appgallery.fingerprint_signature";

        /* renamed from: e */
        private String f7173e = "com.huawei.appgallery.sign_certchain";

        /* renamed from: f */
        private Map<String, String[]> f7174f = new HashMap();

        /* renamed from: g */
        private Map<String, String> f7175g = new HashMap();

        /* renamed from: h */
        private Map<String, Integer> f7176h = new HashMap();

        /* renamed from: i */
        private List<String> f7177i = new ArrayList();

        /* renamed from: j */
        private List<C2230b> f7178j = new ArrayList();

        /* renamed from: m */
        private int f7181m = 0;

        /* renamed from: n */
        private int f7182n = 0;

        /* renamed from: q */
        private String f7185q = "verify_match_property";

        /* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$Builder$ComponentType.class */
        public enum ComponentType {
            ACTIVITY,
            SERVICE,
            BROADCAST
        }

        public Builder addExtraCertSignerAndChain(String str, String str2) {
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input certSignerKey and certChainKey");
            } else {
                this.f7175g.put(str, str2);
            }
            return this;
        }

        public Builder addLegacyInfo(String str, String str2) {
            this.f7174f.put(str, ServiceVerifyKit.m38252b(this.f7174f.get(str), str2));
            this.f7176h.put(str, Integer.valueOf(this.f7181m));
            return this;
        }

        public Builder addLegacyInfo(String str, String str2, int i) {
            this.f7174f.put(str, ServiceVerifyKit.m38252b(this.f7174f.get(str), str2));
            this.f7176h.put(str, Integer.valueOf(i));
            return this;
        }

        public Builder addMatchProperty(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input propertyName");
            } else {
                this.f7186r = str;
            }
            return this;
        }

        public String genVerifiedPackageName() {
            ServiceVerifyKit serviceVerifyKit = new ServiceVerifyKit();
            C2232a c2232a = new C2232a(this.f7179k);
            this.f7175g.put(this.f7172d, this.f7173e);
            c2232a.m38232a(this.f7169a, this.f7170b, this.f7171c, this.f7174f, this.f7176h, this.f7180l, this.f7177i, this.f7178j, this.f7182n, this.f7185q, this.f7186r, this.f7183o, this.f7184p, this.f7175g);
            return serviceVerifyKit.m38254a(c2232a);
        }

        public Builder setCN(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input CN");
            } else {
                this.f7170b = str;
            }
            return this;
        }

        public Builder setCertChainKey(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input chain key");
            } else {
                this.f7173e = str;
            }
            return this;
        }

        public Builder setCertSignerKey(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input signer key");
            } else {
                this.f7172d = str;
            }
            return this;
        }

        public Builder setConditions(int i, C2230b... c2230bArr) {
            if (c2230bArr.length != 0) {
                this.f7182n = i;
                Collections.addAll(this.f7178j, c2230bArr);
            } else {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input conditions");
            }
            return this;
        }

        public Builder setContext(Context context) {
            this.f7179k = context.getApplicationContext();
            return this;
        }

        public Builder setFlag(int i) {
            this.f7180l = i;
            return this;
        }

        public Builder setMatchMetaDataKey(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input propertyKey");
            } else {
                this.f7185q = str;
            }
            return this;
        }

        public Builder setOU(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input OU");
            } else {
                this.f7171c = str;
            }
            return this;
        }

        public Builder setPreferredPkgs(List<String> list) {
            if (list.isEmpty()) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input preferred package name");
            } else {
                this.f7177i = list;
            }
            return this;
        }

        @Deprecated
        public Builder setServiceName(String str) {
            this.f7169a = str;
            return this;
        }

        public Builder setTargetComponent(Intent intent, ComponentType componentType) {
            if (intent == null) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input intent");
            } else {
                this.f7183o = intent;
            }
            if (componentType == null) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input type");
            } else {
                this.f7184p = componentType;
            }
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$PkgVerifyBuilder.class */
    public static final class PkgVerifyBuilder {

        /* renamed from: a */
        private Context f7187a;

        /* renamed from: b */
        private String f7188b;

        /* renamed from: c */
        private String f7189c = "AppGallery Verification";

        /* renamed from: d */
        private String f7190d = "Huawei CBG Cloud Security Signer";

        /* renamed from: e */
        private String f7191e = "com.huawei.appgallery.fingerprint_signature";

        /* renamed from: f */
        private String f7192f = "com.huawei.appgallery.sign_certchain";

        /* renamed from: g */
        private final Map<String, String[]> f7193g = new HashMap();

        public PkgVerifyBuilder(Context context) {
            this.f7187a = context;
        }

        public PkgVerifyBuilder addLegacyInfo(String str, String str2) {
            this.f7193g.put(str, ServiceVerifyKit.m38252b(this.f7193g.get(str), str2));
            return this;
        }

        public boolean isValidPkg() {
            boolean z = false;
            if (TextUtils.isEmpty(this.f7188b)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "PackageName is null or empty!");
                return false;
            }
            try {
                PackageInfo packageInfo = this.f7187a.getPackageManager().getPackageInfo(this.f7188b, 192);
                if (packageInfo.applicationInfo == null) {
                    C2237b c2237b = C2237b.f7220b;
                    StringBuilder m8728C = C22128a.m8728C("skip package ");
                    m8728C.append(this.f7188b);
                    m8728C.append(" for ApplicationInfo is null");
                    c2237b.m38209a("ServiceVerifyKit", m8728C.toString());
                    return false;
                }
                Signature[] signatureArr = packageInfo.signatures;
                if (signatureArr == null || signatureArr.length <= 0) {
                    C2237b c2237b2 = C2237b.f7220b;
                    StringBuilder m8728C2 = C22128a.m8728C("skip package ");
                    m8728C2.append(this.f7188b);
                    m8728C2.append(" for no sign");
                    c2237b2.m38209a("ServiceVerifyKit", m8728C2.toString());
                    return false;
                }
                byte[] byteArray = signatureArr[0].toByteArray();
                if (byteArray.length == 0) {
                    C2237b c2237b3 = C2237b.f7220b;
                    StringBuilder m8728C3 = C22128a.m8728C("skip package ");
                    m8728C3.append(this.f7188b);
                    m8728C3.append(" for sign is empty");
                    c2237b3.m38209a("ServiceVerifyKit", m8728C3.toString());
                    return false;
                }
                try {
                    String m38224b = C2234b.m38224b(MessageDigest.getInstance("SHA-256").digest(byteArray), true);
                    Bundle bundle = packageInfo.applicationInfo.metaData;
                    if (bundle == null) {
                        C2237b c2237b4 = C2237b.f7220b;
                        StringBuilder m8728C4 = C22128a.m8728C("package");
                        m8728C4.append(this.f7188b);
                        m8728C4.append(" metadata is null!");
                        c2237b4.m38209a("ServiceVerifyKit", m8728C4.toString());
                        return false;
                    }
                    C2232a c2232a = new C2232a(this.f7187a);
                    HashMap hashMap = new HashMap();
                    hashMap.put(this.f7191e, this.f7192f);
                    c2232a.m38232a(null, this.f7189c, this.f7190d, this.f7193g, null, 0, null, null, 0, null, null, null, null, hashMap);
                    if (c2232a.m38236a(bundle, m38224b, this.f7188b, this.f7191e, this.f7192f) || c2232a.m38234a(this.f7188b, m38224b)) {
                        z = true;
                    }
                    return z;
                } catch (NoSuchAlgorithmException e) {
                    C2237b c2237b5 = C2237b.f7220b;
                    StringBuilder m8728C5 = C22128a.m8728C("skip package ");
                    m8728C5.append(this.f7188b);
                    m8728C5.append(" for AlgorithmException");
                    c2237b5.m38209a("ServiceVerifyKit", m8728C5.toString());
                    return false;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                C2237b c2237b6 = C2237b.f7220b;
                StringBuilder m8728C6 = C22128a.m8728C("get packageInfo from ");
                m8728C6.append(this.f7188b);
                m8728C6.append(" with NameNotFoundException");
                c2237b6.m38209a("ServiceVerifyKit", m8728C6.toString());
                return false;
            } catch (Exception e3) {
                C2237b c2237b7 = C2237b.f7220b;
                StringBuilder m8728C7 = C22128a.m8728C("get packageInfo from ");
                m8728C7.append(this.f7188b);
                m8728C7.append(" with exception");
                c2237b7.m38209a("ServiceVerifyKit", m8728C7.toString());
                return false;
            }
        }

        public PkgVerifyBuilder setCN(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input cn");
            } else {
                this.f7189c = str;
            }
            return this;
        }

        public PkgVerifyBuilder setCertChainKey(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input certChainKey");
            } else {
                this.f7192f = str;
            }
            return this;
        }

        public PkgVerifyBuilder setCertSignerKey(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input certSignerKey");
            } else {
                this.f7191e = str;
            }
            return this;
        }

        public PkgVerifyBuilder setOU(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input ou");
            } else {
                this.f7190d = str;
            }
            return this;
        }

        public PkgVerifyBuilder setPackageName(String str) {
            if (TextUtils.isEmpty(str)) {
                C2237b.f7220b.m38209a("ServiceVerifyKit", "error input packageName");
            } else {
                this.f7188b = str;
            }
            return this;
        }
    }

    /* renamed from: com.huawei.appgallery.serviceverifykit.api.ServiceVerifyKit$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/api/ServiceVerifyKit$b.class */
    public static class C2230b {

        /* renamed from: a */
        private String f7194a;

        /* renamed from: b */
        private String f7195b;

        /* renamed from: a */
        public String m38251a() {
            return this.f7194a;
        }

        /* renamed from: b */
        public String m38250b() {
            return this.f7195b;
        }
    }

    private ServiceVerifyKit() {
    }

    /* renamed from: a */
    public String m38254a(C2232a c2232a) {
        List<C2228a> m38244a = c2232a.m38244a();
        if (m38244a == null || m38244a.isEmpty()) {
            return null;
        }
        return new C2231a().m38249a(m38244a);
    }

    /* renamed from: b */
    public static String[] m38252b(String[] strArr, String str) {
        if (strArr == null) {
            return new String[]{str};
        }
        int length = strArr.length;
        for (String str2 : strArr) {
            if (TextUtils.equals(str2, str)) {
                return strArr;
            }
        }
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, length);
        strArr2[length] = str;
        return strArr2;
    }
}
