package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.c.a;
import com.google.android.c.d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/cd.class */
final class cd {

    /* renamed from: a  reason: collision with root package name */
    final cf f28784a;

    /* renamed from: b  reason: collision with root package name */
    final Activity f28785b;

    /* renamed from: c  reason: collision with root package name */
    final a f28786c;

    /* renamed from: d  reason: collision with root package name */
    final d f28787d;

    private cd(cf cfVar, Activity activity, a aVar, d dVar) {
        this.f28784a = cfVar;
        this.f28785b = activity;
        this.f28786c = aVar;
        this.f28787d = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final aq a() {
        PackageInfo packageInfo;
        Application application = this.f28784a.f28791a;
        String str = null;
        try {
            packageInfo = this.f28784a.f28791a.getPackageManager().getPackageInfo(application.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        aq aqVar = new aq();
        aqVar.f28714a = application.getPackageName();
        CharSequence applicationLabel = this.f28784a.f28791a.getPackageManager().getApplicationLabel(this.f28784a.f28791a.getApplicationInfo());
        if (applicationLabel != null) {
            str = applicationLabel.toString();
        }
        aqVar.f28715b = str;
        if (packageInfo != null) {
            aqVar.f28716c = Long.toString(androidx.core.content.a.a.a(packageInfo));
        }
        return aqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() throws zzk {
        String str = this.f28787d.f20301b;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        Bundle bundle = null;
        try {
            bundle = this.f28784a.f28791a.getPackageManager().getApplicationInfo(this.f28784a.f28791a.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (bundle != null) {
            str = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new zzk(3, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">");
    }
}
