package p131c.p161d.p282e.p315q.p328q0;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import p131c.p161d.p282e.C5128c;
/* renamed from: c.d.e.q.q0.p3 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/p3.class */
public class C5715p3 {

    /* renamed from: a */
    public final C5128c f18874a;

    public C5715p3(C5128c cVar) {
        this.f18874a = cVar;
    }

    /* renamed from: a */
    public boolean m23168a(String str) {
        boolean z;
        Application application = (Application) this.f18874a.m24468b();
        try {
            PackageManager packageManager = application.getPackageManager();
            z = false;
            if (packageManager != null) {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(application.getPackageName(), 128);
                z = false;
                if (applicationInfo != null) {
                    z = false;
                    if (applicationInfo.metaData != null) {
                        z = false;
                        if (applicationInfo.metaData.containsKey(str)) {
                            z = true;
                        }
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m23167a(String str, boolean z) {
        SharedPreferences sharedPreferences = ((Application) this.f18874a.m24468b()).getSharedPreferences("com.google.firebase.inappmessaging", 0);
        if (sharedPreferences.contains(str)) {
            return sharedPreferences.getBoolean(str, z);
        }
        m23163d(str, z);
        return z;
    }

    /* renamed from: b */
    public boolean m23166b(String str) {
        return ((Application) this.f18874a.m24468b()).getSharedPreferences("com.google.firebase.inappmessaging", 0).contains(str);
    }

    /* renamed from: b */
    public boolean m23165b(String str, boolean z) {
        ApplicationInfo applicationInfo;
        Application application = (Application) this.f18874a.m24468b();
        try {
            PackageManager packageManager = application.getPackageManager();
            if (!(packageManager == null || (applicationInfo = packageManager.getApplicationInfo(application.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey(str))) {
                return applicationInfo.metaData.getBoolean(str);
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return z;
    }

    /* renamed from: c */
    public boolean m23164c(String str, boolean z) {
        SharedPreferences sharedPreferences = ((Application) this.f18874a.m24468b()).getSharedPreferences("com.google.firebase.inappmessaging", 0);
        return sharedPreferences.contains(str) ? sharedPreferences.getBoolean(str, z) : z;
    }

    /* renamed from: d */
    public void m23163d(String str, boolean z) {
        SharedPreferences.Editor edit = ((Application) this.f18874a.m24468b()).getSharedPreferences("com.google.firebase.inappmessaging", 0).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }
}
