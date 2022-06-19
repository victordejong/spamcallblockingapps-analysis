package p193e.p1512i.p1516b.p1537z1;

import android.content.Context;
import e.p.c.b;
import java.io.File;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23087j;
/* renamed from: e.i.b.z1.j0 */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/j0.class */
public class C23194j0<T> {

    /* renamed from: a */
    public final C23021h f64195a = C23023i.m7583a(C23194j0.class);

    /* renamed from: b */
    public final Context f64196b;

    /* renamed from: c */
    public final C23087j f64197c;

    /* renamed from: d */
    public final AbstractC23188h<T> f64198d;

    /* renamed from: e.i.b.z1.j0$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/z1/j0$a.class */
    public static class C23195a<T> implements b.a<T> {

        /* renamed from: a */
        public final C23087j f64199a;

        /* renamed from: b */
        public final Class<T> f64200b;

        public C23195a(C23087j c23087j, Class<T> cls) {
            this.f64199a = c23087j;
            this.f64200b = cls;
        }
    }

    public C23194j0(Context context, C23087j c23087j, AbstractC23188h<T> abstractC23188h) {
        this.f64196b = context;
        this.f64197c = c23087j;
        this.f64198d = abstractC23188h;
    }

    /* renamed from: a */
    public final boolean m7408a(File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (!m7408a(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }
}
