package com.huawei.hms.hatool;

import android.os.Build;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.huawei.hms.hatool.v */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/v.class */
public class C2391v {
    /* renamed from: a */
    public static e1 m37510a(String str, String str2) {
        e1 e1Var = new e1();
        e1Var.a(C2401z0.m37463a().m37461a(str, str2));
        return e1Var;
    }

    /* renamed from: a */
    public static f1 m37508a(String str, String str2, String str3, String str4) {
        f1 f1Var = new f1();
        f1Var.a(str);
        f1Var.b(AbstractC2349b.m37785f());
        f1Var.e(str2);
        f1Var.c(str4);
        StringBuffer stringBuffer = new StringBuffer("hmshi");
        stringBuffer.append(str3);
        stringBuffer.append("qrt");
        f1Var.d(stringBuffer.toString());
        return f1Var;
    }

    /* renamed from: a */
    public static g1 m37509a(String str, String str2, String str3) {
        g1 g1Var = new g1();
        g1Var.c(AbstractC2349b.m37778j());
        g1Var.e(AbstractC2349b.m37776l());
        g1Var.a(str3);
        g1Var.b(C2401z0.m37463a().m37459b(str2, str));
        return g1Var;
    }

    /* renamed from: b */
    public static r m37507b(String str, String str2) {
        C2398y.m37473c("hmsSdk", "generate UploadData EventModelHandlerBase");
        C2395x.m37487d().m37490a(str, str2);
        if (TextUtils.isEmpty(C2395x.m37487d().m37492a())) {
            C2398y.m37469f("hmsSdk", "event chifer is empty");
            return null;
        }
        return new r(C2395x.m37487d().m37488c());
    }

    /* renamed from: c */
    public static Map<String, String> m37506c(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("App-Id", AbstractC2349b.m37785f());
        hashMap.put("App-Ver", AbstractC2349b.m37783g());
        hashMap.put("Sdk-Name", "hianalytics");
        hashMap.put("Sdk-Ver", "2.2.0.312");
        hashMap.put("Device-Type", Build.MODEL);
        hashMap.put("servicetag", str);
        C2398y.m37478a("hmsSdk", "sendData RequestId : %s", str2);
        hashMap.put("Request-Id", str2);
        return hashMap;
    }
}
