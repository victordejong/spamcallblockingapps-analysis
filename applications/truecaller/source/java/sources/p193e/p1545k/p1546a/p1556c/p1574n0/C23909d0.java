package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.Serializable;
/* renamed from: e.k.a.c.n0.d0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/d0.class */
public class C23909d0 implements Serializable {

    /* renamed from: a */
    public static final C23909d0 f66151a = new C23909d0();

    /* renamed from: e.k.a.c.n0.d0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/d0$a.class */
    public static final class C23910a extends C23909d0 implements Serializable {

        /* renamed from: b */
        public final Class<?>[] f66152b;

        public C23910a(Class<?>[] clsArr) {
            this.f66152b = clsArr;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.C23909d0
        /* renamed from: a */
        public boolean mo5781a(Class<?> cls) {
            int length = this.f66152b.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls2 = this.f66152b[i];
                if (cls == cls2 || cls2.isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: e.k.a.c.n0.d0$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/d0$b.class */
    public static final class C23911b extends C23909d0 {

        /* renamed from: b */
        public final Class<?> f66153b;

        public C23911b(Class<?> cls) {
            this.f66153b = cls;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.C23909d0
        /* renamed from: a */
        public boolean mo5781a(Class<?> cls) {
            Class<?> cls2 = this.f66153b;
            return cls == cls2 || cls2.isAssignableFrom(cls);
        }
    }

    /* renamed from: a */
    public boolean mo5781a(Class<?> cls) {
        return false;
    }
}
