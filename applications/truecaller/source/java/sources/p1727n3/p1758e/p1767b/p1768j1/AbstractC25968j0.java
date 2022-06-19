package p1727n3.p1758e.p1767b.p1768j1;

import java.util.Set;
/* renamed from: n3.e.b.j1.j0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/j0.class */
public interface AbstractC25968j0 {

    /* renamed from: n3.e.b.j1.j0$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/j0$a.class */
    public static abstract class AbstractC25969a<T> {
        /* renamed from: a */
        public abstract String mo2823a();

        /* renamed from: b */
        public abstract Object mo2822b();

        /* renamed from: c */
        public abstract Class<T> mo2821c();
    }

    /* renamed from: n3.e.b.j1.j0$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/j0$b.class */
    public interface AbstractC25970b {
    }

    /* renamed from: n3.e.b.j1.j0$c */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/j0$c.class */
    public enum EnumC25971c {
        ALWAYS_OVERRIDE,
        REQUIRED,
        OPTIONAL
    }

    /* renamed from: a */
    <ValueT> ValueT mo2851a(AbstractC25969a<ValueT> abstractC25969a);

    /* renamed from: b */
    <ValueT> ValueT mo2850b(AbstractC25969a<ValueT> abstractC25969a, ValueT valuet);

    /* renamed from: c */
    boolean mo2849c(AbstractC25969a<?> abstractC25969a);

    /* renamed from: d */
    Set<AbstractC25969a<?>> mo2848d();

    /* renamed from: e */
    EnumC25971c mo2847e(AbstractC25969a<?> abstractC25969a);

    /* renamed from: j */
    void mo2846j(String str, AbstractC25970b abstractC25970b);

    /* renamed from: l */
    Set<EnumC25971c> mo2845l(AbstractC25969a<?> abstractC25969a);

    /* renamed from: p */
    <ValueT> ValueT mo2844p(AbstractC25969a<ValueT> abstractC25969a, EnumC25971c enumC25971c);
}
