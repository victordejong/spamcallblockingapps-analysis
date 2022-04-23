package p131c.p372f.p373a.p374a.p375a.p385n;

import android.os.Build;
import android.view.View;
/* renamed from: c.f.a.a.a.n.e */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/n/e.class */
public class C6457e {
    /* renamed from: a */
    public static boolean m20821a(View view) {
        if (view.getVisibility() != 0) {
            return false;
        }
        return Build.VERSION.SDK_INT < 11 || ((double) view.getAlpha()) > 0.0d;
    }
}
