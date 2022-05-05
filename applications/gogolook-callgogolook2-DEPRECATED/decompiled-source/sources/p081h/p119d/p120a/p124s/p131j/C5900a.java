package p081h.p119d.p120a.p124s.p131j;

import android.net.Uri;
/* renamed from: h.d.a.s.j.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/a.class */
public final class C5900a {

    /* renamed from: a */
    public static final int f14825a = 22;

    /* renamed from: a */
    public static boolean m24164a(Uri uri) {
        boolean z = false;
        if ("file".equals(uri.getScheme())) {
            z = false;
            if (!uri.getPathSegments().isEmpty()) {
                z = false;
                if ("android_asset".equals(uri.getPathSegments().get(0))) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static String m24163b(Uri uri) {
        return uri.toString().substring(f14825a);
    }
}
