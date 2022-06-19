package io.fabric.sdk.android.services.p068b;

import android.content.Context;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p067a.AbstractC1467d;
import io.fabric.sdk.android.services.p067a.C1465b;
/* renamed from: io.fabric.sdk.android.services.b.q */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/q.class */
public class C1496q {

    /* renamed from: a */
    private final AbstractC1467d<String> f4114a = new AbstractC1467d<String>() { // from class: io.fabric.sdk.android.services.b.q.1
        /* renamed from: a */
        public String load(Context context) {
            String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
            String str = installerPackageName;
            if (installerPackageName == null) {
                str = "";
            }
            return str;
        }
    };

    /* renamed from: b */
    private final C1465b<String> f4115b = new C1465b<>();

    /* renamed from: a */
    public String m3429a(Context context) {
        try {
            String a = this.f4115b.mo3532a(context, this.f4114a);
            if ("".equals(a)) {
                a = null;
            }
            return a;
        } catch (Exception e) {
            C1449c.m3572g().mo3545e("Fabric", "Failed to determine installer package name", e);
            return null;
        }
    }
}
