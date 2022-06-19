package p000;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
/* renamed from: d91 */
/* loaded from: classes3-dex2jar.jar:d91.class */
public class d91 extends c91 {

    /* renamed from: c */
    public boolean f5798c;

    public d91() {
        this.f5798c = false;
        this.f5798c = false;
        PackageManager packageManager = fa1.m1840j().getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 65536)) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (activityInfo != null && "com.htc.launcher.Launcher".equals(activityInfo.name)) {
                this.f5798c = true;
                return;
            }
        }
    }

    @Override // p000.c91
    /* renamed from: d */
    public String mo1914d() {
        return "HTC";
    }

    @Override // p000.c91
    /* renamed from: f */
    public boolean mo1913f() {
        return Build.BRAND.toLowerCase().contains("htc") || Build.MANUFACTURER.toLowerCase().contains("htc") || this.f5798c;
    }
}
