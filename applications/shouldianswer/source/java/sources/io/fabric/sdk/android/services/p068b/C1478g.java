package io.fabric.sdk.android.services.p068b;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import io.fabric.sdk.android.C1449c;
/* renamed from: io.fabric.sdk.android.services.b.g */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/g.class */
public class C1478g {
    /* renamed from: a */
    protected String m3513a() {
        return "Fabric could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"io.fabric.ApiKey\" android:value=\"YOUR_API_KEY\"/>";
    }

    /* renamed from: a */
    public String m3512a(Context context) {
        String m3510c = m3510c(context);
        String str = m3510c;
        if (TextUtils.isEmpty(m3510c)) {
            str = m3509d(context);
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = m3511b(context);
        }
        if (TextUtils.isEmpty(str2)) {
            m3508e(context);
        }
        return str2;
    }

    /* renamed from: b */
    protected String m3511b(Context context) {
        return new C1493o().m3451a(context);
    }

    /* renamed from: c */
    public String m3510c(Context context) {
        String str;
        Exception e;
        String str2 = null;
        String str3 = null;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            str = null;
            if (bundle != null) {
                str = bundle.getString("io.fabric.ApiKey");
                try {
                    if ("@string/twitter_consumer_secret".equals(str)) {
                        C1449c.m3572g().mo3552a("Fabric", "Ignoring bad default value for Fabric ApiKey set by FirebaseUI-Auth");
                    } else {
                        str2 = str;
                    }
                    str = str2;
                    if (str2 == null) {
                        C1449c.m3572g().mo3552a("Fabric", "Falling back to Crashlytics key lookup from Manifest");
                        str3 = str2;
                        str = bundle.getString("com.crashlytics.ApiKey");
                    }
                } catch (Exception e2) {
                    e = e2;
                    C1449c.m3572g().mo3552a("Fabric", "Caught non-fatal exception while retrieving apiKey: " + e);
                    return str;
                }
            }
        } catch (Exception e3) {
            e = e3;
            str = str3;
        }
        return str;
    }

    /* renamed from: d */
    public String m3509d(Context context) {
        int m3502a = C1480i.m3502a(context, "io.fabric.ApiKey", "string");
        int i = m3502a;
        if (m3502a == 0) {
            C1449c.m3572g().mo3552a("Fabric", "Falling back to Crashlytics key lookup from Strings");
            i = C1480i.m3502a(context, "com.crashlytics.ApiKey", "string");
        }
        return i != 0 ? context.getResources().getString(i) : null;
    }

    /* renamed from: e */
    protected void m3508e(Context context) {
        if (C1449c.m3571h() || C1480i.m3468i(context)) {
            throw new IllegalArgumentException(m3513a());
        }
        C1449c.m3572g().mo3546e("Fabric", m3513a());
    }
}
