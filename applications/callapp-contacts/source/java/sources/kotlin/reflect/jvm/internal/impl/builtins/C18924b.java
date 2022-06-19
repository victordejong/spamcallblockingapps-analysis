package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/b.class */
public final class C18924b {

    /* renamed from: a */
    public static final C18924b f64519a = new C18924b();

    /* renamed from: b */
    private static final Set<C18960a> f64520b;

    static {
        Set<EnumC18946h> set = EnumC18946h.NUMBER_TYPES;
        C18954j c18954j = C18954j.f64571a;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(set, 10));
        for (EnumC18946h enumC18946h : set) {
            arrayList.add(C18954j.m2773a(enumC18946h));
        }
        ArrayList arrayList2 = arrayList;
        C18961b m2730c = C18954j.C18955a.f64653h.m2730c();
        C18524p.m3843b(m2730c, "string.toSafe()");
        List a = C18282n.m4143a((Collection<? extends C18961b>) arrayList2, m2730c);
        C18961b m2730c2 = C18954j.C18955a.f64655j.m2730c();
        C18524p.m3843b(m2730c2, "_boolean.toSafe()");
        List a2 = C18282n.m4143a((Collection<? extends C18961b>) a, m2730c2);
        C18961b m2730c3 = C18954j.C18955a.f64664s.m2730c();
        C18524p.m3843b(m2730c3, "_enum.toSafe()");
        List<C18961b> a3 = C18282n.m4143a((Collection<? extends C18961b>) a2, m2730c3);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (C18961b c18961b : a3) {
            linkedHashSet.add(C18960a.m2754a(c18961b));
        }
        f64520b = linkedHashSet;
    }

    private C18924b() {
    }

    /* renamed from: a */
    public static Set<C18960a> m2865a() {
        return f64520b;
    }

    /* renamed from: b */
    public static Set<C18960a> m2864b() {
        return f64520b;
    }
}
