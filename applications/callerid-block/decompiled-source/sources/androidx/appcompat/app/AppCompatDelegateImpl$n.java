package androidx.appcompat.app;

import android.content.res.Configuration;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$n.class */
class AppCompatDelegateImpl$n {
    /* renamed from: a */
    static void m14941a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        int i = configuration.densityDpi;
        int i2 = configuration2.densityDpi;
        if (i != i2) {
            configuration3.densityDpi = i2;
        }
    }
}
