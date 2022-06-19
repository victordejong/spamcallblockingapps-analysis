package p1727n3.p1789g0;

import android.os.Build;
/* renamed from: n3.g0.t */
/* loaded from: classes-dex2jar.jar:n3/g0/t.class */
public class C26226t {

    /* renamed from: a */
    public static final boolean f73120a = true;

    /* renamed from: b */
    public static final boolean f73121b = true;

    /* renamed from: c */
    public static final boolean f73122c;

    static {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 28) {
            z = false;
        }
        f73122c = z;
    }
}
