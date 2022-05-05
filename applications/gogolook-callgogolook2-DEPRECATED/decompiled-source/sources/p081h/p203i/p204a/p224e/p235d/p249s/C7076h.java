package p081h.p203i.p204a.p224e.p235d.p249s;

import android.content.Context;
import android.util.Log;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.s.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/h.class */
public final class C7076h {
    /* renamed from: a */
    public static boolean m21150a(Context context, Throwable th) {
        return m21149a(context, th, 536870912);
    }

    /* renamed from: a */
    public static boolean m21149a(Context context, Throwable th, int i) {
        try {
            C7021t.m21290a(context);
            C7021t.m21290a(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
