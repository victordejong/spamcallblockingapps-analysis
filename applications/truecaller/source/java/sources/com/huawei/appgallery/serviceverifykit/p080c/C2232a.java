package com.huawei.appgallery.serviceverifykit.p080c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.appgallery.serviceverifykit.api.ServiceVerifyKit;
import com.huawei.appgallery.serviceverifykit.p078a.C2228a;
import com.huawei.appgallery.serviceverifykit.p081d.C2233a;
import com.huawei.appgallery.serviceverifykit.p081d.C2234b;
import com.huawei.appgallery.serviceverifykit.p081d.C2235c;
import com.huawei.appgallery.serviceverifykit.p081d.p082d.C2237b;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.appgallery.serviceverifykit.c.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/appgallery/serviceverifykit/c/a.class */
public class C2232a {

    /* renamed from: a */
    private String f7196a;

    /* renamed from: b */
    private String f7197b;

    /* renamed from: c */
    private String f7198c;

    /* renamed from: g */
    private int f7202g;

    /* renamed from: k */
    private String f7206k;

    /* renamed from: l */
    private String f7207l;

    /* renamed from: m */
    private Intent f7208m;

    /* renamed from: n */
    private ServiceVerifyKit.Builder.ComponentType f7209n;

    /* renamed from: s */
    private Context f7214s;

    /* renamed from: t */
    private String f7215t;

    /* renamed from: d */
    private Map<String, String[]> f7199d = new HashMap();

    /* renamed from: e */
    private Map<String, Integer> f7200e = new HashMap();

    /* renamed from: f */
    private Map<String, String> f7201f = new HashMap();

    /* renamed from: h */
    private List<String> f7203h = new ArrayList();

    /* renamed from: i */
    private List<ServiceVerifyKit.C2230b> f7204i = new ArrayList();

    /* renamed from: j */
    private int f7205j = 0;

    /* renamed from: o */
    private int f7210o = 0;

    /* renamed from: p */
    private int f7211p = 0;

    /* renamed from: q */
    private int f7212q = 0;

    /* renamed from: r */
    private int f7213r = 0;

    public C2232a(Context context) {
        this.f7214s = context;
    }

    /* renamed from: a */
    private int m38240a(Bundle bundle, int i) {
        int i2;
        if (bundle.containsKey("ag.application.base_priority")) {
            try {
                i2 = i + bundle.getInt("ag.application.base_priority");
            } catch (Exception e) {
                C2237b c2237b = C2237b.f7220b;
                StringBuilder m8728C = C22128a.m8728C("skip package ");
                m8728C.append(bundle.getString("ag.application.base_priority"));
                m8728C.append(" is not number");
                c2237b.m38209a("MatchAppFinder", m8728C.toString());
                return i + 1000;
            }
        } else {
            i2 = i + 1000;
        }
        return i2;
    }

    /* renamed from: a */
    private int m38239a(Bundle bundle, int i, List<ServiceVerifyKit.C2230b> list) {
        int i2 = 0;
        for (ServiceVerifyKit.C2230b c2230b : list) {
            if (i == 1) {
                if (!bundle.containsKey(c2230b.m38251a()) || !bundle.get(c2230b.m38251a()).toString().equals(c2230b.m38250b())) {
                    return 0;
                }
                i2 = 1;
            } else if (i != 2) {
                C2237b.f7220b.m38209a("MatchAppFinder", "error input preferred package name");
            } else if (bundle.containsKey(c2230b.m38251a()) && bundle.get(c2230b.m38251a()).toString().equals(c2230b.m38250b())) {
                i2++;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private int m38238a(Bundle bundle, String str) {
        int i;
        if (!bundle.containsKey(this.f7206k)) {
            i = 0;
        } else if (bundle.getString(this.f7206k).equalsIgnoreCase(str)) {
            C2237b.f7220b.m38207b("MatchAppFinder", "matchProp is 1, MetaDataKey is " + str);
            i = 1;
        } else {
            i = -1;
        }
        return i;
    }

    /* renamed from: a */
    private int m38231a(String str, List<String> list) {
        int i = 0;
        for (String str2 : list) {
            if (str2.equals(str)) {
                i = 1;
            }
        }
        return i;
    }

    /* renamed from: a */
    private C2228a m38243a(PackageInfo packageInfo, String str, String str2, int i) {
        Bundle bundle = packageInfo.applicationInfo.metaData;
        if (bundle == null) {
            return null;
        }
        int m38238a = m38238a(bundle, this.f7215t);
        if (!m38237a(bundle, str, str2, i)) {
            return null;
        }
        if (!this.f7203h.isEmpty()) {
            this.f7212q = m38231a(str2, this.f7203h);
        }
        if (!this.f7204i.isEmpty()) {
            this.f7213r = m38239a(bundle, this.f7205j, this.f7204i);
            C2237b c2237b = C2237b.f7220b;
            StringBuilder m8692L = C22128a.m8692L("match conditions success, packageName is ", str2, " condition type is ");
            m8692L.append(this.f7205j);
            m8692L.append(" condition number is ");
            m8692L.append(this.f7213r);
            c2237b.m38207b("MatchAppFinder", m8692L.toString());
        }
        return new C2228a(str2, m38240a(bundle, this.f7210o), this.f7211p, m38238a, this.f7212q, this.f7213r);
    }

    /* renamed from: a */
    private String m38241a(ResolveInfo resolveInfo) {
        ServiceVerifyKit.Builder.ComponentType componentType = this.f7209n;
        return ((componentType == ServiceVerifyKit.Builder.ComponentType.ACTIVITY || componentType == ServiceVerifyKit.Builder.ComponentType.BROADCAST) ? resolveInfo.activityInfo.applicationInfo : resolveInfo.serviceInfo.applicationInfo).packageName;
    }

    /* renamed from: a */
    private static String m38235a(String str) {
        C2237b c2237b;
        String str2;
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (ClassNotFoundException e) {
            c2237b = C2237b.f7220b;
            str2 = "getSystemProperties ClassNotFoundException";
            c2237b.m38209a("MatchAppFinder", str2);
            return "";
        } catch (Exception e2) {
            c2237b = C2237b.f7220b;
            str2 = "getSystemProperties Exception while getting system property";
            c2237b.m38209a("MatchAppFinder", str2);
            return "";
        }
    }

    /* renamed from: a */
    private List<ResolveInfo> m38242a(PackageManager packageManager) {
        List<ResolveInfo> list;
        Intent intent;
        ServiceVerifyKit.Builder.ComponentType componentType = this.f7209n;
        if (componentType != null) {
            if (componentType == ServiceVerifyKit.Builder.ComponentType.ACTIVITY) {
                list = packageManager.queryIntentActivities(this.f7208m, this.f7202g);
            } else if (componentType == ServiceVerifyKit.Builder.ComponentType.BROADCAST) {
                list = packageManager.queryBroadcastReceivers(this.f7208m, this.f7202g);
            } else {
                intent = this.f7208m;
            }
            return list;
        }
        intent = new Intent(this.f7196a);
        list = packageManager.queryIntentServices(intent, this.f7202g);
        return list;
    }

    /* renamed from: a */
    private List<C2228a> m38230a(List<ResolveInfo> list, PackageManager packageManager, int i) {
        StringBuilder sb;
        C2237b c2237b;
        String str;
        PackageInfo packageInfo;
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : list) {
            String m38241a = m38241a(resolveInfo);
            try {
                packageInfo = packageManager.getPackageInfo(m38241a, i);
            } catch (PackageManager.NameNotFoundException e) {
                c2237b = C2237b.f7220b;
                sb = new StringBuilder();
                sb.append("skip package ");
                sb.append(m38241a);
                str = " for PackageInfo is null with NameNotFoundException";
            } catch (Exception e2) {
                c2237b = C2237b.f7220b;
                sb = new StringBuilder();
                sb.append("skip package ");
                sb.append(m38241a);
                str = " for PackageInfo is null with Exception";
            }
            if (packageInfo.applicationInfo == null) {
                c2237b = C2237b.f7220b;
                sb = new StringBuilder();
                sb.append("skip package ");
                sb.append(m38241a);
                str = " for ApplicationInfo is null";
            } else {
                Signature[] signatureArr = packageInfo.signatures;
                if (signatureArr == null || signatureArr.length <= 0) {
                    c2237b = C2237b.f7220b;
                    sb = new StringBuilder();
                    sb.append("skip package ");
                    sb.append(m38241a);
                    str = " for no sign";
                } else {
                    byte[] byteArray = signatureArr[0].toByteArray();
                    if (byteArray.length == 0) {
                        c2237b = C2237b.f7220b;
                        sb = new StringBuilder();
                        sb.append("skip package ");
                        sb.append(m38241a);
                        str = " for sign is empty";
                    } else {
                        try {
                            C2228a m38243a = m38243a(packageInfo, C2234b.m38224b(MessageDigest.getInstance("SHA-256").digest(byteArray), true), m38241a, resolveInfo.priority);
                            if (m38243a != null) {
                                arrayList.add(m38243a);
                            }
                        } catch (NoSuchAlgorithmException e3) {
                            c2237b = C2237b.f7220b;
                            sb = new StringBuilder();
                            sb.append("skip package ");
                            sb.append(m38241a);
                            str = " for AlgorithmException";
                        }
                    }
                }
            }
            sb.append(str);
            c2237b.m38209a("MatchAppFinder", sb.toString());
        }
        return arrayList;
    }

    /* renamed from: a */
    private boolean m38237a(Bundle bundle, String str, String str2, int i) {
        for (Map.Entry<String, String> entry : this.f7201f.entrySet()) {
            if (bundle.containsKey(entry.getKey()) || bundle.containsKey(entry.getValue())) {
                if (m38229b(bundle, str2, str, entry.getKey(), entry.getValue())) {
                    this.f7211p = 0;
                    this.f7210o = i;
                    return true;
                }
                C2237b c2237b = C2237b.f7220b;
                c2237b.m38209a("MatchAppFinder", "checkSinger failed, packageName is " + str2);
            }
        }
        if (m38234a(str2, str)) {
            this.f7211p = 1;
            this.f7210o = this.f7200e.get(str2).intValue();
            C2237b c2237b2 = C2237b.f7220b;
            c2237b2.m38207b("MatchAppFinder", "Legacy is success, packageName is " + str2);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    private boolean m38233a(String str, String str2, String str3) {
        C2237b c2237b;
        String str4;
        byte[] bArr;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            c2237b = C2237b.f7220b;
            str4 = "args is invalid";
        } else {
            List<X509Certificate> m38213b = C2235c.m38213b(str3);
            if (m38213b.size() == 0) {
                c2237b = C2237b.f7220b;
                str4 = "certChain is empty";
            } else if (!C2235c.m38217a(C2235c.m38223a(this.f7214s), m38213b)) {
                c2237b = C2237b.f7220b;
                str4 = "failed to verify cert chain";
            } else {
                X509Certificate x509Certificate = m38213b.get(0);
                if (!C2235c.m38219a(x509Certificate, this.f7197b)) {
                    c2237b = C2237b.f7220b;
                    str4 = "CN is invalid";
                } else if (!C2235c.m38212b(x509Certificate, this.f7198c)) {
                    c2237b = C2237b.f7220b;
                    str4 = "OU is invalid";
                } else {
                    try {
                        bArr = str.getBytes(StringConstant.UTF8);
                    } catch (UnsupportedEncodingException e) {
                        C2237b.f7220b.m38208a("MatchAppFinder", "checkCertChain UnsupportedEncodingException:", e);
                        bArr = null;
                    }
                    if (C2235c.m38216a(x509Certificate, bArr, C2233a.m38228a(str2))) {
                        return true;
                    }
                    c2237b = C2237b.f7220b;
                    str4 = "signature is invalid";
                }
            }
        }
        c2237b.m38209a("MatchAppFinder", str4);
        return false;
    }

    /* renamed from: b */
    private boolean m38229b(Bundle bundle, String str, String str2, String str3, String str4) {
        String str5;
        C2237b c2237b;
        if (!bundle.containsKey(str3) || !bundle.containsKey(str4)) {
            c2237b = C2237b.f7220b;
            str5 = C22128a.m8725C2("skip package ", str, " for no signer or no certChain");
        } else if (m38233a(C22128a.m8725C2(str, ContainerUtils.FIELD_DELIMITER, str2), bundle.getString(str3), bundle.getString(str4))) {
            return true;
        } else {
            c2237b = C2237b.f7220b;
            str5 = "checkSinger failed";
        }
        c2237b.m38209a("MatchAppFinder", str5);
        return false;
    }

    /* renamed from: a */
    public List<C2228a> m38244a() {
        PackageManager packageManager = this.f7214s.getPackageManager();
        List<ResolveInfo> m38242a = m38242a(packageManager);
        if (m38242a.size() == 0) {
            return null;
        }
        this.f7215t = TextUtils.isEmpty(this.f7207l) ? Build.MANUFACTURER : m38235a(this.f7207l);
        return m38230a(m38242a, packageManager, this.f7202g | 128 | 64);
    }

    /* renamed from: a */
    public void m38232a(String str, String str2, String str3, Map<String, String[]> map, Map<String, Integer> map2, int i, List<String> list, List<ServiceVerifyKit.C2230b> list2, int i2, String str4, String str5, Intent intent, ServiceVerifyKit.Builder.ComponentType componentType, Map<String, String> map3) {
        this.f7196a = str;
        this.f7197b = str2;
        this.f7198c = str3;
        this.f7199d = map;
        this.f7200e = map2;
        this.f7202g = i;
        this.f7203h = list;
        this.f7204i = list2;
        this.f7205j = i2;
        this.f7206k = str4;
        this.f7207l = str5;
        this.f7208m = intent;
        this.f7209n = componentType;
        this.f7201f = map3;
    }

    /* renamed from: a */
    public boolean m38236a(Bundle bundle, String str, String str2, String str3, String str4) {
        C2237b c2237b;
        StringBuilder sb;
        if (bundle == null) {
            c2237b = C2237b.f7220b;
            sb = new StringBuilder();
            sb.append("package");
            sb.append(str2);
            str2 = " metadata is null!";
        } else if (bundle.containsKey(str3) && bundle.containsKey(str4) && m38229b(bundle, str2, str, str3, str4)) {
            C2237b c2237b2 = C2237b.f7220b;
            c2237b2.m38209a("MatchAppFinder", "checkSinger success, packageName is " + str2);
            return true;
        } else {
            c2237b = C2237b.f7220b;
            sb = new StringBuilder();
            sb.append("checkSinger failed, packageName is ");
        }
        sb.append(str2);
        c2237b.m38209a("MatchAppFinder", sb.toString());
        return false;
    }

    /* renamed from: a */
    public boolean m38234a(String str, String str2) {
        String[] strArr;
        if (!this.f7199d.containsKey(str) || (strArr = this.f7199d.get(str)) == null) {
            return false;
        }
        for (String str3 : strArr) {
            if (str2.equals(str3)) {
                return true;
            }
        }
        return false;
    }
}
