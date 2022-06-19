package p092e.p103f.p104a.p105a;

import android.content.Context;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import p092e.p103f.p106b.C3099a;
/* renamed from: e.f.a.a.a$b */
/* loaded from: classes2-dex2jar.jar:e/f/a/a/a$b.class */
public class a$b implements a$c {
    /* JADX INFO: Access modifiers changed from: private */
    public a$b() {
    }

    /* renamed from: b */
    private Object m243b(Context context) {
        Field m236b;
        Object m232f;
        try {
            Field m236b2 = C3099a.m236b("android.app.LoadedApk", "mReceiverResource", true);
            if (m236b2 != null && (m236b = C3099a.m236b("android.app.ContextImpl", "mPackageInfo", true)) != null && (m232f = C3099a.m232f(m236b, context)) != null) {
                return C3099a.m231g(m236b2, m232f, true);
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    private Object m241d(Object obj, String str) {
        if (obj != null) {
            try {
                return C3099a.m233e(obj, str);
            } catch (Throwable th) {
                return null;
            }
        }
        return null;
    }

    @Override // p092e.p103f.p104a.p105a.a$c
    /* renamed from: a */
    public boolean mo239a(Context context, a$d a_d) {
        Object m243b = m243b(context);
        Object m241d = m241d(m243b, "mWhiteList");
        if (!(m241d instanceof String[])) {
            if (m243b == null) {
                return false;
            }
            C3099a.m227k(m243b, "mResourceConfig", null);
            return false;
        }
        String[] strArr = (String[]) m241d;
        ArrayList arrayList = new ArrayList();
        arrayList.add(context.getPackageName());
        Collections.addAll(arrayList, strArr);
        C3099a.m227k(m243b, "mWhiteList", arrayList.toArray(new String[arrayList.size()]));
        return true;
    }

    /* renamed from: c */
    public Object m242c(Context context, String str) {
        return m241d(m243b(context), str);
    }
}
