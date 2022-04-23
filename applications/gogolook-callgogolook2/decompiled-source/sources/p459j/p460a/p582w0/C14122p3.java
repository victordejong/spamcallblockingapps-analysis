package p459j.p460a.p582w0;

import android.app.ActivityManager;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import gogolook.callgogolook2.MyApplication;
/* renamed from: j.a.w0.p3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/p3.class */
public class C14122p3 {
    /* renamed from: a */
    public static boolean m2452a(int i, Class... clsArr) {
        boolean z = false;
        if (clsArr != null) {
            if (clsArr.length == 0) {
                z = false;
            } else if (MyApplication.m29013o() == null) {
                return false;
            } else {
                int i2 = 0;
                for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) MyApplication.m29013o().getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningServices(Integer.MAX_VALUE)) {
                    for (Class cls : clsArr) {
                        i2 = i2;
                        if (TextUtils.equals(cls.getName(), runningServiceInfo.service.getClassName())) {
                            if (i == 0) {
                                return true;
                            }
                            if (i == 2 && runningServiceInfo.foreground) {
                                return true;
                            }
                            if (i != 1) {
                                i2 = i2;
                                if (i == 3) {
                                    i2 = i2;
                                    if (!runningServiceInfo.foreground) {
                                    }
                                }
                            }
                            i2++;
                        }
                    }
                }
                z = false;
                if (i2 == clsArr.length) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m2451a(Class... clsArr) {
        return m2452a(0, clsArr);
    }
}
