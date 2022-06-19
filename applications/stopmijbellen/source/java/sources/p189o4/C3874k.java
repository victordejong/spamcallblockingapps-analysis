package p189o4;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
/* renamed from: o4.k */
/* loaded from: classes-dex2jar.jar:o4/k.class */
public final class C3874k {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [android.content.pm.ComponentInfo[]] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* renamed from: a */
    public static void m1745a(PackageManager packageManager, ComponentName componentName, int i) {
        ComponentInfo componentInfo;
        int componentEnabledSetting = packageManager.getComponentEnabledSetting(componentName);
        if (componentEnabledSetting != 1) {
            if (componentEnabledSetting != 2) {
                String packageName = componentName.getPackageName();
                String className = componentName.getClassName();
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 516);
                    ActivityInfo[] activityInfoArr = packageInfo.activities;
                    ServiceInfo[] serviceInfoArr = packageInfo.services;
                    ProviderInfo[] providerInfoArr = packageInfo.providers;
                    int i2 = 0;
                    loop0: while (true) {
                        if (i2 >= 3) {
                            componentInfo = null;
                            break;
                        }
                        ?? r0 = new ComponentInfo[]{activityInfoArr, serviceInfoArr, providerInfoArr}[i2];
                        if (r0 != 0) {
                            int length = r0.length;
                            for (int i3 = 0; i3 < length; i3++) {
                                componentInfo = r0[i3];
                                if (componentInfo.name.equals(className)) {
                                    break loop0;
                                }
                            }
                            continue;
                        }
                        i2++;
                    }
                    if (componentInfo != null) {
                        if (componentInfo.isEnabled()) {
                            return;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            packageManager.setComponentEnabledSetting(componentName, 1, 1);
        }
    }
}
