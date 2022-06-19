package com.huawei.hms.push;

import android.os.Bundle;
import com.huawei.hms.support.log.HMSLog;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.push.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/c.class */
public class C2425c {
    /* renamed from: a */
    public static byte[] m37356a(Bundle bundle, String str) {
        try {
            byte[] byteArray = bundle.getByteArray(str);
            byte[] bArr = byteArray;
            if (byteArray == null) {
                bArr = new byte[0];
            }
            return bArr;
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getByteArray exception");
            m8728C.append(e.getMessage());
            HMSLog.m37193i("BundleUtil", m8728C.toString());
            return new byte[0];
        }
    }

    /* renamed from: b */
    public static String m37355b(Bundle bundle, String str) {
        try {
            return bundle.getString(str);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getString exception");
            m8728C.append(e.getMessage());
            HMSLog.m37193i("BundleUtil", m8728C.toString());
            return null;
        }
    }

    /* renamed from: c */
    public static String m37354c(Bundle bundle, String str) {
        try {
            String string = bundle.getString(str);
            return string == null ? "" : string;
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("getString exception");
            m8728C.append(e.getMessage());
            HMSLog.m37193i("BundleUtil", m8728C.toString());
            return "";
        }
    }
}
