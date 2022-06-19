package p193e.p1512i.p1516b.p1537z1;

import e.p.c.a;
import e.p.c.b;
import e.p.c.c;
import e.p.c.d;
import e.p.c.e;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23089l;
import p193e.p1512i.p1516b.p1537z1.C23194j0;
/* renamed from: e.i.b.z1.o */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/o.class */
public class C23199o<T> implements AbstractC23202u<T> {

    /* renamed from: c */
    public d<T> f64222c;

    /* renamed from: f */
    public final C23194j0<T> f64225f;

    /* renamed from: g */
    public final AbstractC23188h<T> f64226g;

    /* renamed from: a */
    public final C23021h f64220a = C23023i.m7583a(C23199o.class);

    /* renamed from: b */
    public final Object f64221b = new Object();

    /* renamed from: d */
    public Method f64223d = null;

    /* renamed from: e */
    public e f64224e = null;

    public C23199o(C23194j0<T> c23194j0, AbstractC23188h<T> abstractC23188h) {
        this.f64225f = c23194j0;
        this.f64226g = abstractC23188h;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23202u
    /* renamed from: a */
    public int mo7390a() {
        synchronized (this.f64221b) {
            d<T> m7392c = m7392c();
            if (m7392c instanceof b) {
                try {
                    return ((Integer) m7391d().invoke(m7393b((b) m7392c), new Object[0])).intValue();
                } catch (Exception e) {
                    C23089l.m7560a(e);
                }
            }
            return m7392c.size() * this.f64226g.mo7419a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
        r13 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        if (r0.size() <= 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        r0.remove();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
        r13 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
        r13 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r11 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
        r11.addSuppressed(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
        r13 = r11;
     */
    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23202u
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<T> mo7389a(int r7) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1512i.p1516b.p1537z1.C23199o.mo7389a(int):java.util.List");
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23202u
    /* renamed from: a */
    public boolean mo7388a(T t) {
        synchronized (this.f64221b) {
            try {
                m7392c().add(t);
            } catch (a e) {
                C23089l.m7560a(e);
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public e m7393b(b<?> bVar) throws ReflectiveOperationException, ClassCastException {
        if (this.f64224e == null) {
            Field declaredField = b.class.getDeclaredField("queueFile");
            declaredField.setAccessible(true);
            this.f64224e = (e) declaredField.get(bVar);
        }
        return this.f64224e;
    }

    /* renamed from: c */
    public final d<T> m7392c() {
        b bVar;
        if (this.f64222c == null) {
            C23194j0<T> c23194j0 = this.f64225f;
            Objects.requireNonNull(c23194j0);
            File file = new File(c23194j0.f64196b.getFilesDir(), c23194j0.f64198d.mo7416d());
            try {
                bVar = new b(file, new C23194j0.C23195a(c23194j0.f64197c, c23194j0.f64198d.mo7418b()));
                bVar.peek();
            } catch (Exception e) {
                if (c23194j0.m7408a(file)) {
                    try {
                        bVar = new b(file, new C23194j0.C23195a(c23194j0.f64197c, c23194j0.f64198d.mo7418b()));
                    } catch (IOException e2) {
                        e.addSuppressed(e2);
                        bVar = new c();
                        this.f64222c = bVar;
                        return this.f64222c;
                    } finally {
                        c23194j0.f64195a.m7586a(C23193j.m7409a(e));
                    }
                }
                bVar = new c();
            }
            this.f64222c = bVar;
        }
        return this.f64222c;
    }

    /* renamed from: d */
    public final Method m7391d() throws ReflectiveOperationException {
        if (this.f64223d == null) {
            Method declaredMethod = e.class.getDeclaredMethod("usedBytes", new Class[0]);
            this.f64223d = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return this.f64223d;
    }
}
