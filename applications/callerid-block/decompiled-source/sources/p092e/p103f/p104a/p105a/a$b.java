package p092e.p103f.p104a.p105a;

import android.content.Context;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import p092e.p103f.p106b.C3099a;
/* JADX INFO: Access modifiers changed from: private */
/* renamed from: e.f.a.a.a$b */
/* loaded from: classes2-dex2jar.jar:e/f/a/a/a$b.class */
public class a$b implements a$c {
    private a$b() {
    }

    /* renamed from: b */
    private Object m243b(Context context) {
        Field b;
        Object f;
        try {
            Field b2 = C3099a.m236b("android.app.LoadedApk", "mReceiverResource", true);
            if (b2 == null || (b = C3099a.m236b("android.app.ContextImpl", "mPackageInfo", true)) == null || (f = C3099a.m232f(b, context)) == null) {
                return null;
            }
            return C3099a.m231g(b2, f, true);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    private Object m241d(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        try {
            return C3099a.m233e(obj, str);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // p092e.p103f.p104a.p105a.a$c
    /* renamed from: a */
    public boolean mo239a(Context context, a$d a_d) {
        Object b = m243b(context);
        Object d = m241d(b, "mWhiteList");
        if (d instanceof String[]) {
            String[] strArr = (String[]) d;
            ArrayList arrayList = new ArrayList();
            arrayList.add(context.getPackageName());
            Collections.addAll(arrayList, strArr);
            C3099a.m227k(b, "mWhiteList", arrayList.toArray(new String[arrayList.size()]));
            return true;
        } else if (b == null) {
            return false;
        } else {
            C3099a.m227k(b, "mResourceConfig", null);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public Object m242c(Context context, String str) {
        return m241d(m243b(context), str);
    }
}
