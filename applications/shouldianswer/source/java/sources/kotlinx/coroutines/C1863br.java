package kotlinx.coroutines;

import kotlinx.coroutines.internal.C1923u;
/* renamed from: kotlinx.coroutines.br */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/br.class */
public final class C1863br {

    /* renamed from: a */
    private static final C1923u f4607a = new C1923u("SEALED");

    /* renamed from: b */
    private static final C1815ax f4608b = new C1815ax(false);

    /* renamed from: c */
    private static final C1815ax f4609c = new C1815ax(true);

    /* renamed from: a */
    public static final Object m2739a(Object obj) {
        C1846bg c1846bg = (C1846bg) (!(obj instanceof C1846bg) ? null : obj);
        AbstractC1845bf abstractC1845bf = obj;
        if (c1846bg != null) {
            AbstractC1845bf abstractC1845bf2 = c1846bg.f4589a;
            abstractC1845bf = obj;
            if (abstractC1845bf2 != null) {
                abstractC1845bf = abstractC1845bf2;
            }
        }
        return abstractC1845bf;
    }

    /* renamed from: c */
    public static final Object m2735c(Object obj) {
        C1846bg c1846bg = obj;
        if (obj instanceof AbstractC1845bf) {
            c1846bg = new C1846bg((AbstractC1845bf) obj);
        }
        return c1846bg;
    }
}
