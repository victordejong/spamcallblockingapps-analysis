package p000;

import android.text.TextUtils;
import java.util.EnumSet;
import p000.q71;
import p000.r71;
/* renamed from: c91 */
/* loaded from: classes3-dex2jar.jar:c91.class */
public abstract class c91 {

    /* renamed from: a */
    public static c91 f2211a;

    /* renamed from: b */
    public static final Class<?>[] f2212b = {f91.class, d91.class, e91.class};

    /* renamed from: c91$a */
    /* loaded from: classes3-dex2jar.jar:c91$a.class */
    public static final class C0296a extends c91 {
        @Override // p000.c91
        /* renamed from: d */
        public String mo1914d() {
            return "None";
        }

        @Override // p000.c91
        /* renamed from: f */
        public boolean mo1913f() {
            return true;
        }
    }

    /* renamed from: b */
    public static void m5408b(Class<? extends c91> cls) {
        r71.EnumC1638a.f7906L.m681o(cls == null ? "" : cls.getCanonicalName());
        f2211a = null;
    }

    /* renamed from: c */
    public static c91 m5407c() {
        c91 c91Var;
        c91 c91Var2 = f2211a;
        if (c91Var2 != null) {
            return c91Var2;
        }
        String m687i = r71.EnumC1638a.f7906L.m687i();
        if (!TextUtils.isEmpty(m687i)) {
            try {
                f2211a = (c91) Class.forName(m687i).newInstance();
            } catch (Throwable th) {
            }
        }
        c91 c91Var3 = f2211a;
        if (c91Var3 != null) {
            return c91Var3;
        }
        for (Class<?> cls : f2212b) {
            try {
                c91Var = (c91) cls.newInstance();
            } catch (Throwable th2) {
            }
            if (c91Var.mo1913f()) {
                f2211a = c91Var;
                return c91Var;
            }
            continue;
        }
        C0296a c0296a = new C0296a();
        f2211a = c0296a;
        return c0296a;
    }

    /* renamed from: a */
    public int mo1915a(int i) {
        return i;
    }

    /* renamed from: d */
    public abstract String mo1914d();

    /* renamed from: e */
    public EnumSet<q71.EnumC1615b> m5406e() {
        return EnumSet.allOf(q71.EnumC1615b.class);
    }

    /* renamed from: f */
    public abstract boolean mo1913f();
}
