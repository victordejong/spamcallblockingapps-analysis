package com.huawei.hms.push;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.huawei.hms.support.log.HMSLog;
import java.lang.reflect.Field;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.push.r */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/r.class */
public class C2440r {
    /* renamed from: a */
    public static int m37252a(Context context, String str) {
        Bundle bundle;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && (bundle = applicationInfo.metaData) != null) {
                return bundle.getInt(str);
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e) {
            HMSLog.m37192w("ResourceLoader", "load meta data resource failed.");
            return 0;
        }
    }

    /* renamed from: a */
    public static int m37251a(Context context, String str, String str2) {
        try {
            int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
            int i = identifier;
            if (identifier == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(context.getPackageName());
                sb.append(".R$");
                sb.append(str);
                Field field = Class.forName(sb.toString()).getField(str2);
                int parseInt = Integer.parseInt(field.get(field.getName()).toString());
                i = parseInt;
                if (parseInt == 0) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Error-resourceType=");
                    sb2.append(str);
                    sb2.append("--resourceName=");
                    sb2.append(str2);
                    sb2.append("--resourceId =");
                    sb2.append(parseInt);
                    HMSLog.m37193i("ResourceLoader", sb2.toString());
                    i = parseInt;
                }
            }
            return i;
        } catch (ClassNotFoundException e) {
            HMSLog.m37194e("ResourceLoader", C22128a.m8721D2("!!!! ResourceLoader: ClassNotFoundException-resourceType=", str, "--resourceName=", str2), e);
            return 0;
        } catch (IllegalAccessException e2) {
            HMSLog.m37194e("ResourceLoader", C22128a.m8721D2("!!!! ResourceLoader: IllegalAccessException-resourceType=", str, "--resourceName=", str2), e2);
            return 0;
        } catch (NoSuchFieldException e3) {
            HMSLog.m37194e("ResourceLoader", C22128a.m8721D2("!!!! ResourceLoader: NoSuchFieldException-resourceType=", str, "--resourceName=", str2), e3);
            return 0;
        } catch (NumberFormatException e4) {
            HMSLog.m37194e("ResourceLoader", C22128a.m8721D2("!!!! ResourceLoader: NumberFormatException-resourceType=", str, "--resourceName=", str2), e4);
            return 0;
        } catch (IllegalArgumentException e5) {
            HMSLog.m37194e("ResourceLoader", C22128a.m8721D2("!!!! ResourceLoader: IllegalArgumentException-resourceType=", str, "--resourceName=", str2), e5);
            return 0;
        }
    }
}
