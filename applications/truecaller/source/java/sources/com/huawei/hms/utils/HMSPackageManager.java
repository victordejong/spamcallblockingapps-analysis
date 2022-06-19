package com.huawei.hms.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.huawei.hms.common.PackageConstants;
import com.huawei.hms.device.C2290a;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.PackageManagerHelper;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/HMSPackageManager.class */
public class HMSPackageManager {

    /* renamed from: l */
    public static HMSPackageManager f7849l;

    /* renamed from: m */
    public static final Object f7850m = new Object();

    /* renamed from: n */
    public static final Object f7851n = new Object();

    /* renamed from: o */
    public static final Object f7852o = new Object();

    /* renamed from: a */
    public final Context f7853a;

    /* renamed from: b */
    public final PackageManagerHelper f7854b;

    /* renamed from: c */
    public String f7855c;

    /* renamed from: d */
    public String f7856d;

    /* renamed from: e */
    public int f7857e;

    /* renamed from: f */
    public String f7858f;

    /* renamed from: g */
    public String f7859g;

    /* renamed from: h */
    public String f7860h;

    /* renamed from: i */
    public int f7861i;

    /* renamed from: j */
    public int f7862j;

    /* renamed from: k */
    public long f7863k;

    /* renamed from: com.huawei.hms.utils.HMSPackageManager$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/HMSPackageManager$a.class */
    public class RunnableC2469a implements Runnable {
        public RunnableC2469a() {
            HMSPackageManager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMSLog.m37193i("HMSPackageManager", "enter asyncOnceCheckMDMState");
            for (ResolveInfo resolveInfo : HMSPackageManager.this.f7853a.getPackageManager().queryIntentServices(new Intent("com.huawei.hms.core.aidlservice"), 128)) {
                if ("com.huawei.hwid".equals(resolveInfo.serviceInfo.applicationInfo.packageName)) {
                    HMSPackageManager.this.m37154c();
                }
            }
            HMSLog.m37193i("HMSPackageManager", "quit asyncOnceCheckMDMState");
        }
    }

    /* renamed from: com.huawei.hms.utils.HMSPackageManager$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/HMSPackageManager$b.class */
    public static class C2470b implements Comparable<C2470b> {

        /* renamed from: a */
        public String f7865a;

        /* renamed from: b */
        public String f7866b;

        /* renamed from: c */
        public String f7867c;

        /* renamed from: d */
        public String f7868d;

        /* renamed from: e */
        public String f7869e;

        /* renamed from: f */
        public Long f7870f;

        public C2470b(String str, String str2, String str3, String str4, String str5, long j) {
            this.f7865a = str;
            this.f7866b = str2;
            this.f7867c = str3;
            this.f7868d = str4;
            this.f7869e = str5;
            this.f7870f = Long.valueOf(j);
        }

        /* renamed from: a */
        public int compareTo(C2470b c2470b) {
            return TextUtils.equals(this.f7869e, c2470b.f7869e) ? this.f7870f.compareTo(c2470b.f7870f) : this.f7869e.compareTo(c2470b.f7869e);
        }
    }

    public HMSPackageManager(Context context) {
        this.f7853a = context;
        this.f7854b = new PackageManagerHelper(context);
    }

    /* renamed from: a */
    public static String m37162a(int i) {
        if (i == 1) {
            return "SPOOFED";
        }
        if (i == 2) {
            return "SUCCESS";
        }
        if (i == 3) {
            return "UNCHECKED";
        }
        HMSLog.m37195e("HMSPackageManager", "invalid checkMDM state: " + i);
        return "";
    }

    public static HMSPackageManager getInstance(Context context) {
        synchronized (f7850m) {
            if (f7849l == null) {
                if (context.getApplicationContext() != null) {
                    f7849l = new HMSPackageManager(context.getApplicationContext());
                } else {
                    f7849l = new HMSPackageManager(context);
                }
                f7849l.m37147j();
                f7849l.m37163a();
            }
        }
        return f7849l;
    }

    /* renamed from: a */
    public final String m37161a(Bundle bundle, String str) {
        if (!bundle.containsKey(str)) {
            HMSLog.m37195e("HMSPackageManager", "no " + str + " in metaData");
            return null;
        }
        return bundle.getString(str);
    }

    /* renamed from: a */
    public final String m37159a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("priority=");
        if (indexOf == -1) {
            HMSLog.m37195e("HMSPackageManager", "get indexOfIdentifier -1");
            return null;
        }
        int indexOf2 = str.indexOf(",", indexOf);
        int i = indexOf2;
        if (indexOf2 == -1) {
            i = str.length();
        }
        return str.substring(indexOf, i);
    }

    /* renamed from: a */
    public final void m37163a() {
        new Thread(new RunnableC2469a(), "Thread-asyncOnceCheckMDMState").start();
    }

    /* renamed from: a */
    public final boolean m37158a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            HMSLog.m37195e("HMSPackageManager", "args is invalid");
            return false;
        }
        List<X509Certificate> m38061b = C2290a.m38061b(str3);
        if (m38061b.size() == 0) {
            HMSLog.m37195e("HMSPackageManager", "certChain is empty");
            return false;
        } else if (!C2290a.m38065a(C2290a.m38072a(this.f7853a), m38061b)) {
            HMSLog.m37195e("HMSPackageManager", "failed to verify cert chain");
            return false;
        } else {
            X509Certificate x509Certificate = (X509Certificate) C22128a.m8710G1(m38061b, 1);
            if (!C2290a.m38067a(x509Certificate, "Huawei CBG HMS")) {
                HMSLog.m37195e("HMSPackageManager", "CN is invalid");
                return false;
            } else if (!C2290a.m38060b(x509Certificate, "Huawei CBG Cloud Security Signer")) {
                HMSLog.m37195e("HMSPackageManager", "OU is invalid");
                return false;
            } else if (C2290a.m38066a(x509Certificate, str, str2)) {
                return true;
            } else {
                HMSLog.m37195e("HMSPackageManager", "signature is invalid: " + str);
                return false;
            }
        }
    }

    /* renamed from: b */
    public final void m37155b(String str) {
        String m37159a = m37159a(str);
        if (TextUtils.isEmpty(m37159a)) {
            return;
        }
        m37159a.substring(9);
    }

    /* renamed from: b */
    public final boolean m37157b() {
        String hmsPath = ReadApkFileUtil.getHmsPath(this.f7853a);
        if (hmsPath == null) {
            HMSLog.m37193i("HMSPackageManager", "hmsPath is null!");
            return false;
        } else if (!ReadApkFileUtil.isCertFound(hmsPath)) {
            HMSLog.m37193i("HMSPackageManager", "NO huawer.cer in HMS!");
            return false;
        } else if (!ReadApkFileUtil.checkSignature()) {
            HMSLog.m37193i("HMSPackageManager", "checkSignature fail!");
            return false;
        } else if (ReadApkFileUtil.verifyApkHash(hmsPath)) {
            return true;
        } else {
            HMSLog.m37193i("HMSPackageManager", "verifyApkHash fail!");
            return false;
        }
    }

    /* renamed from: c */
    public final int m37154c() {
        synchronized (f7852o) {
            HMSLog.m37193i("HMSPackageManager", "enter checkHmsIsSpoof");
            if (!(this.f7862j == 3 || this.f7863k != this.f7854b.getPackageFirstInstallTime("com.huawei.hwid"))) {
                HMSLog.m37193i("HMSPackageManager", "quit checkHmsIsSpoof cached state: " + m37162a(this.f7862j));
                return this.f7862j;
            }
            int i = 1;
            if (m37157b()) {
                i = 2;
            }
            this.f7862j = i;
            this.f7863k = this.f7854b.getPackageFirstInstallTime("com.huawei.hwid");
            HMSLog.m37193i("HMSPackageManager", "quit checkHmsIsSpoof state: " + m37162a(this.f7862j));
            return this.f7862j;
        }
    }

    /* renamed from: d */
    public final void m37153d() {
        synchronized (f7851n) {
            this.f7858f = null;
            this.f7859g = null;
            this.f7860h = null;
            this.f7861i = 0;
        }
    }

    /* renamed from: e */
    public final void m37152e() {
        synchronized (f7851n) {
            this.f7855c = null;
            this.f7856d = null;
            this.f7857e = 0;
        }
    }

    /* renamed from: f */
    public final Pair<String, String> m37151f() {
        List<ResolveInfo> queryIntentServices = this.f7853a.getPackageManager().queryIntentServices(new Intent("com.huawei.hms.core.aidlservice"), 128);
        if (queryIntentServices.size() == 0) {
            return null;
        }
        for (ResolveInfo resolveInfo : queryIntentServices) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            String str = serviceInfo.applicationInfo.packageName;
            Bundle bundle = serviceInfo.metaData;
            if (bundle == null) {
                HMSLog.m37195e("HMSPackageManager", "skip package " + str + " for metadata is null");
            } else if (!bundle.containsKey("hms_app_signer")) {
                HMSLog.m37195e("HMSPackageManager", "skip package " + str + " for no signer");
            } else if (!bundle.containsKey("hms_app_cert_chain")) {
                HMSLog.m37195e("HMSPackageManager", "skip package " + str + " for no cert chain");
            } else {
                String packageSignature = this.f7854b.getPackageSignature(str);
                if (m37158a(C22128a.m8725C2(str, ContainerUtils.FIELD_DELIMITER, packageSignature), bundle.getString("hms_app_signer"), bundle.getString("hms_app_cert_chain"))) {
                    return new Pair<>(str, packageSignature);
                }
                HMSLog.m37195e("HMSPackageManager", "checkSigner failed");
            }
        }
        return null;
    }

    /* renamed from: g */
    public final Pair<String, String> m37150g() {
        Pair<String, String> m37151f = m37151f();
        if (m37151f != null) {
            StringBuilder m8728C = C22128a.m8728C("aidlService pkgName: ");
            m8728C.append((String) m37151f.first);
            HMSLog.m37193i("HMSPackageManager", m8728C.toString());
            this.f7860h = "com.huawei.hms.core.aidlservice";
            return m37151f;
        }
        ArrayList<C2470b> m37149h = m37149h();
        if (m37149h == null) {
            HMSLog.m37195e("HMSPackageManager", "PackagePriorityInfo list is null");
            return null;
        }
        Iterator<C2470b> it = m37149h.iterator();
        while (it.hasNext()) {
            C2470b next = it.next();
            String str = next.f7865a;
            String str2 = next.f7866b;
            String str3 = next.f7867c;
            String str4 = next.f7868d;
            String packageSignature = this.f7854b.getPackageSignature(str);
            if (m37158a(C22128a.m8717E2(str, ContainerUtils.FIELD_DELIMITER, packageSignature, ContainerUtils.FIELD_DELIMITER, str2), str3, str4)) {
                StringBuilder m8688M = C22128a.m8688M("result: ", str, ", ", str2, ", ");
                m8688M.append(next.f7870f);
                HMSLog.m37193i("HMSPackageManager", m8688M.toString());
                this.f7860h = PackageConstants.GENERAL_SERVICES_ACTION;
                m37155b(str2);
                return new Pair<>(str, packageSignature);
            }
        }
        return null;
    }

    public String getHMSFingerprint() {
        String str = this.f7856d;
        String str2 = str;
        if (str == null) {
            str2 = "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05";
        }
        return str2;
    }

    public String getHMSPackageName() {
        HMSLog.m37193i("HMSPackageManager", "Enter getHMSPackageName");
        refresh();
        String str = this.f7855c;
        if (str != null) {
            if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f7854b.getPackageStates(str))) {
                HMSLog.m37193i("HMSPackageManager", "The package name is not installed and needs to be refreshed again");
                m37148i();
            }
            String str2 = this.f7855c;
            if (str2 != null) {
                return str2;
            }
        }
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f7854b.getPackageStates("com.huawei.hwid")) || "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05".equalsIgnoreCase(this.f7854b.getPackageSignature("com.huawei.hwid"))) {
        }
        return "com.huawei.hwid";
    }

    public String getHMSPackageNameForMultiService() {
        HMSLog.m37193i("HMSPackageManager", "Enter getHMSPackageNameForMultiService");
        refreshForMultiService();
        String str = this.f7858f;
        if (str != null) {
            if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f7854b.getPackageStates(str))) {
                HMSLog.m37193i("HMSPackageManager", "The package name is not installed and needs to be refreshed again");
                m37147j();
            }
            String str2 = this.f7858f;
            return str2 != null ? str2 : "com.huawei.hwid";
        }
        return "com.huawei.hwid";
    }

    public PackageManagerHelper.PackageStates getHMSPackageStates() {
        synchronized (f7850m) {
            refresh();
            PackageManagerHelper.PackageStates packageStates = this.f7854b.getPackageStates(this.f7855c);
            PackageManagerHelper.PackageStates packageStates2 = PackageManagerHelper.PackageStates.NOT_INSTALLED;
            if (packageStates == packageStates2) {
                m37152e();
                return packageStates2;
            }
            if ("com.huawei.hwid".equals(this.f7855c) && m37154c() == 1) {
                return PackageManagerHelper.PackageStates.SPOOF;
            }
            boolean z = false;
            if (packageStates == PackageManagerHelper.PackageStates.ENABLED) {
                z = false;
                if (!this.f7856d.equals(this.f7854b.getPackageSignature(this.f7855c))) {
                    z = true;
                }
            }
            return z ? packageStates2 : packageStates;
        }
    }

    public PackageManagerHelper.PackageStates getHMSPackageStatesForMultiService() {
        synchronized (f7850m) {
            refreshForMultiService();
            PackageManagerHelper.PackageStates packageStates = this.f7854b.getPackageStates(this.f7858f);
            PackageManagerHelper.PackageStates packageStates2 = PackageManagerHelper.PackageStates.NOT_INSTALLED;
            if (packageStates == packageStates2) {
                m37153d();
                return packageStates2;
            }
            if ("com.huawei.hwid".equals(this.f7858f) && m37154c() == 1) {
                return PackageManagerHelper.PackageStates.SPOOF;
            }
            boolean z = false;
            if (packageStates == PackageManagerHelper.PackageStates.ENABLED) {
                z = false;
                if (!this.f7859g.equals(this.f7854b.getPackageSignature(this.f7858f))) {
                    z = true;
                }
            }
            return z ? packageStates2 : packageStates;
        }
    }

    public int getHmsMultiServiceVersion() {
        return this.f7854b.getPackageVersionCode(getHMSPackageNameForMultiService());
    }

    public int getHmsVersionCode() {
        return this.f7854b.getPackageVersionCode(getHMSPackageName());
    }

    public String getInnerServiceAction() {
        return PackageConstants.INTERNAL_SERVICES_ACTION;
    }

    public String getServiceAction() {
        return !TextUtils.isEmpty(this.f7860h) ? this.f7860h : "com.huawei.hms.core.aidlservice";
    }

    /* renamed from: h */
    public final ArrayList<C2470b> m37149h() {
        List<ResolveInfo> queryIntentServices = this.f7853a.getPackageManager().queryIntentServices(new Intent(PackageConstants.GENERAL_SERVICES_ACTION), 128);
        if (queryIntentServices == null || queryIntentServices.isEmpty()) {
            HMSLog.m37195e("HMSPackageManager", "resolveInfoList is null or empty");
            return null;
        }
        ArrayList<C2470b> arrayList = new ArrayList<>();
        for (ResolveInfo resolveInfo : queryIntentServices) {
            String str = resolveInfo.serviceInfo.applicationInfo.packageName;
            long packageFirstInstallTime = this.f7854b.getPackageFirstInstallTime(str);
            Bundle bundle = resolveInfo.serviceInfo.metaData;
            if (bundle == null) {
                HMSLog.m37195e("HMSPackageManager", "package " + str + " get metaData is null");
            } else {
                String m37161a = m37161a(bundle, "hms_app_checker_config");
                String m37159a = m37159a(m37161a);
                if (TextUtils.isEmpty(m37159a)) {
                    HMSLog.m37193i("HMSPackageManager", "get priority fail. hmsCheckerCfg: " + m37161a);
                } else {
                    String m37161a2 = m37161a(bundle, "hms_app_signer_v2");
                    if (TextUtils.isEmpty(m37161a2)) {
                        HMSLog.m37193i("HMSPackageManager", "get signerV2 fail.");
                    } else {
                        String m37161a3 = m37161a(bundle, "hms_app_cert_chain");
                        if (TextUtils.isEmpty(m37161a3)) {
                            HMSLog.m37193i("HMSPackageManager", "get certChain fail.");
                        } else {
                            StringBuilder m8688M = C22128a.m8688M("add: ", str, ", ", m37161a, ", ");
                            m8688M.append(packageFirstInstallTime);
                            HMSLog.m37193i("HMSPackageManager", m8688M.toString());
                            arrayList.add(new C2470b(str, m37161a, m37161a2, m37161a3, m37159a, packageFirstInstallTime));
                        }
                    }
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public boolean hmsVerHigherThan(int i) {
        boolean z = true;
        if (this.f7857e < i) {
            z = true;
            if (m37146k()) {
                int packageVersionCode = this.f7854b.getPackageVersionCode(getHMSPackageName());
                this.f7857e = packageVersionCode;
                z = packageVersionCode >= i;
            }
        }
        return z;
    }

    /* renamed from: i */
    public final void m37148i() {
        synchronized (f7851n) {
            Pair<String, String> m37151f = m37151f();
            if (m37151f == null) {
                HMSLog.m37195e("HMSPackageManager", "<initHmsPackageInfo> Failed to find HMS apk");
                m37152e();
                return;
            }
            this.f7855c = (String) m37151f.first;
            this.f7856d = (String) m37151f.second;
            this.f7857e = this.f7854b.getPackageVersionCode(getHMSPackageName());
            HMSLog.m37193i("HMSPackageManager", "<initHmsPackageInfo> Succeed to find HMS apk: " + this.f7855c + " version: " + this.f7857e);
        }
    }

    public boolean isApkUpdateNecessary(int i) {
        int hmsVersionCode = getHmsVersionCode();
        HMSLog.m37193i("HMSPackageManager", "current versionCode:" + hmsVersionCode + ", minimum version requirements: " + i);
        return m37146k() && hmsVersionCode < i;
    }

    /* renamed from: j */
    public final void m37147j() {
        synchronized (f7851n) {
            Pair<String, String> m37150g = m37150g();
            if (m37150g == null) {
                HMSLog.m37195e("HMSPackageManager", "<initHmsPackageInfoForMultiService> Failed to find HMS apk");
                m37153d();
                return;
            }
            this.f7858f = (String) m37150g.first;
            this.f7859g = (String) m37150g.second;
            this.f7861i = this.f7854b.getPackageVersionCode(getHMSPackageNameForMultiService());
            HMSLog.m37193i("HMSPackageManager", "<initHmsPackageInfoForMultiService> Succeed to find HMS apk: " + this.f7858f + " version: " + this.f7861i);
        }
    }

    /* renamed from: k */
    public final boolean m37146k() {
        Bundle bundle;
        PackageManager packageManager = this.f7853a.getPackageManager();
        if (packageManager == null) {
            HMSLog.m37195e("HMSPackageManager", "In isMinApkVersionEffective, Failed to get 'PackageManager' instance.");
            return true;
        }
        try {
            if (!TextUtils.isEmpty(this.f7860h) && (this.f7860h.equals(PackageConstants.GENERAL_SERVICES_ACTION) || this.f7860h.equals(PackageConstants.INTERNAL_SERVICES_ACTION))) {
                HMSLog.m37193i("HMSPackageManager", "action = " + this.f7860h + " exist");
                return false;
            }
            ApplicationInfo applicationInfo = packageManager.getPackageInfo(getHMSPackageName(), 128).applicationInfo;
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("com.huawei.hms.kit.api_level:hmscore")) {
                return true;
            }
            if (getHmsVersionCode() < 50000000 && getHmsVersionCode() > 19999999) {
                return true;
            }
            HMSLog.m37193i("HMSPackageManager", "MinApkVersion is disabled.");
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37195e("HMSPackageManager", "In isMinApkVersionEffective, Failed to read meta data for HMSCore API level.");
            return true;
        } catch (RuntimeException e2) {
            HMSLog.m37194e("HMSPackageManager", "In isMinApkVersionEffective, Failed to read meta data for HMSCore API level.", e2);
            return true;
        }
    }

    public void refresh() {
        if (TextUtils.isEmpty(this.f7855c) || TextUtils.isEmpty(this.f7856d)) {
            m37148i();
        }
    }

    public void refreshForMultiService() {
        if (TextUtils.isEmpty(this.f7858f) || TextUtils.isEmpty(this.f7859g)) {
            m37147j();
        }
    }

    public void resetMultiServiceState() {
        m37153d();
    }
}
