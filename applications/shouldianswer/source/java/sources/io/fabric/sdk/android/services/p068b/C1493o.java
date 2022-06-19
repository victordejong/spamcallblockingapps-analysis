package io.fabric.sdk.android.services.p068b;

import android.content.Context;
import android.text.TextUtils;
import io.fabric.sdk.android.C1449c;
/* renamed from: io.fabric.sdk.android.services.b.o */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/o.class */
public class C1493o {
    /* renamed from: a */
    public String m3451a(Context context) {
        int m3502a = C1480i.m3502a(context, "google_app_id", "string");
        if (m3502a != 0) {
            C1449c.m3572g().mo3552a("Fabric", "Generating Crashlytics ApiKey from google_app_id in Strings");
            return m3450a(context.getResources().getString(m3502a));
        }
        return null;
    }

    /* renamed from: a */
    protected String m3450a(String str) {
        return C1480i.m3479b(str).substring(0, 40);
    }

    /* renamed from: b */
    public boolean m3449b(Context context) {
        if (C1480i.m3500a(context, "com.crashlytics.useFirebaseAppId", false)) {
            return true;
        }
        boolean z = C1480i.m3502a(context, "google_app_id", "string") != 0;
        boolean z2 = !TextUtils.isEmpty(new C1478g().m3510c(context)) || !TextUtils.isEmpty(new C1478g().m3509d(context));
        boolean z3 = false;
        if (z) {
            z3 = false;
            if (!z2) {
                z3 = true;
            }
        }
        return z3;
    }
}
