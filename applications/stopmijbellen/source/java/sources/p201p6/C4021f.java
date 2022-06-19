package p201p6;

import android.content.Context;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5082f;
import p305z4.C5077c;
import p305z4.C5093m;
import p305z4.C5100t;
/* renamed from: p6.f */
/* loaded from: classes-dex2jar.jar:p6/f.class */
public class C4021f {

    /* renamed from: p6.f$a */
    /* loaded from: classes-dex2jar.jar:p6/f$a.class */
    public interface AbstractC4022a<T> {
        /* renamed from: c */
        String mo100c(T t);
    }

    /* renamed from: a */
    public static C5077c<?> m1502a(String str, String str2) {
        final C4016a c4016a = new C4016a(str, str2);
        C5077c.C5079b m56a = C5077c.m56a(AbstractC4019d.class);
        m56a.f15411d = 1;
        m56a.f15412e = new AbstractC5082f() { // from class: z4.b
            @Override // p305z4.AbstractC5082f
            /* renamed from: b */
            public final Object mo49b(AbstractC5080d abstractC5080d) {
                return c4016a;
            }
        };
        return m56a.m52b();
    }

    /* renamed from: b */
    public static C5077c<?> m1501b(final String str, final AbstractC4022a<Context> abstractC4022a) {
        C5077c.C5079b m56a = C5077c.m56a(AbstractC4019d.class);
        m56a.f15411d = 1;
        m56a.m53a(new C5093m(Context.class, 1, 0));
        m56a.f15412e = new AbstractC5082f() { // from class: p6.e
            @Override // p305z4.AbstractC5082f
            /* renamed from: b */
            public final Object mo49b(AbstractC5080d abstractC5080d) {
                return new C4016a(str, abstractC4022a.mo100c((Context) ((C5100t) abstractC5080d).mo40a(Context.class)));
            }
        };
        return m56a.m52b();
    }
}
