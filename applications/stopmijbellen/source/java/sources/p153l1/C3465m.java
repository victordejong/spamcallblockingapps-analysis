package p153l1;

import android.os.Build;
/* renamed from: l1.m */
/* loaded from: classes-dex2jar.jar:l1/m.class */
public class C3465m {

    /* renamed from: a */
    public static final boolean f11563a = true;

    /* renamed from: b */
    public static final boolean f11564b = true;

    /* renamed from: c */
    public static final boolean f11565c;

    static {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 28) {
            z = false;
        }
        f11565c = z;
    }
}
