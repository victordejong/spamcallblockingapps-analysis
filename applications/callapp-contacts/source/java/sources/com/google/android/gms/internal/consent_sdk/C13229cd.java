package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.content.p034a.C0789a;
import com.google.android.p314c.C10611a;
import com.google.android.p314c.C10618d;
/* renamed from: com.google.android.gms.internal.consent_sdk.cd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/cd.class */
final class C13229cd {

    /* renamed from: a */
    final C13231cf f50415a;

    /* renamed from: b */
    final Activity f50416b;

    /* renamed from: c */
    final C10611a f50417c;

    /* renamed from: d */
    final C10618d f50418d;

    /* JADX INFO: Access modifiers changed from: private */
    public C13229cd(C13231cf c13231cf, Activity activity, C10611a c10611a, C10618d c10618d) {
        this.f50415a = c13231cf;
        this.f50416b = activity;
        this.f50417c = c10611a;
        this.f50418d = c10618d;
    }

    /* renamed from: a */
    public final C13186aq m13547a() {
        PackageInfo packageInfo;
        Application application = this.f50415a.f50422a;
        String str = null;
        try {
            packageInfo = this.f50415a.f50422a.getPackageManager().getPackageInfo(application.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        C13186aq c13186aq = new C13186aq();
        c13186aq.f50330a = application.getPackageName();
        CharSequence applicationLabel = this.f50415a.f50422a.getPackageManager().getApplicationLabel(this.f50415a.f50422a.getApplicationInfo());
        if (applicationLabel != null) {
            str = applicationLabel.toString();
        }
        c13186aq.f50331b = str;
        if (packageInfo != null) {
            c13186aq.f50332c = Long.toString(C0789a.m44504a(packageInfo));
        }
        return c13186aq;
    }

    /* renamed from: b */
    public final String m13546b() throws zzk {
        String str = this.f50418d.f34379b;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        Bundle bundle = null;
        try {
            bundle = this.f50415a.f50422a.getPackageManager().getApplicationInfo(this.f50415a.f50422a.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (bundle != null) {
            str = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        }
        if (TextUtils.isEmpty(str)) {
            throw new zzk(3, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">");
        }
        return str;
    }
}
