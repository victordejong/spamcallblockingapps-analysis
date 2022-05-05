package p081h.p203i.p204a.p224e.p235d.p251t;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
/* renamed from: h.i.a.e.d.t.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/t/b.class */
public class C7096b {

    /* renamed from: a */
    public final Context f17210a;

    public C7096b(Context context) {
        this.f17210a = context;
    }

    /* renamed from: a */
    public int m21092a(String str) {
        return this.f17210a.checkCallingOrSelfPermission(str);
    }

    /* renamed from: a */
    public int m21089a(String str, String str2) {
        return this.f17210a.getPackageManager().checkPermission(str, str2);
    }

    /* renamed from: a */
    public ApplicationInfo m21091a(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f17210a.getPackageManager().getApplicationInfo(str, i);
    }

    /* renamed from: a */
    public final PackageInfo m21090a(String str, int i, int i2) throws PackageManager.NameNotFoundException {
        return this.f17210a.getPackageManager().getPackageInfo(str, 64);
    }

    /* renamed from: a */
    public boolean m21095a() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return C7095a.m21096a(this.f17210a);
        }
        if (!C7083o.m21122j() || (nameForUid = this.f17210a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f17210a.getPackageManager().isInstantApp(nameForUid);
    }

    @TargetApi(19)
    /* renamed from: a */
    public final boolean m21093a(int i, String str) {
        if (C7083o.m21126f()) {
            try {
                ((AppOpsManager) this.f17210a.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        } else {
            String[] packagesForUid = this.f17210a.getPackageManager().getPackagesForUid(i);
            if (str == null || packagesForUid == null) {
                return false;
            }
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: a */
    public final String[] m21094a(int i) {
        return this.f17210a.getPackageManager().getPackagesForUid(i);
    }

    /* renamed from: b */
    public PackageInfo m21087b(String str, int i) throws PackageManager.NameNotFoundException {
        return this.f17210a.getPackageManager().getPackageInfo(str, i);
    }

    /* renamed from: b */
    public CharSequence m21088b(String str) throws PackageManager.NameNotFoundException {
        return this.f17210a.getPackageManager().getApplicationLabel(this.f17210a.getPackageManager().getApplicationInfo(str, 0));
    }
}
