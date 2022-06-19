package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19095f;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19118t;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19407p;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19417z;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p545c.C18968g;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.r */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/r.class */
public abstract class AbstractC19116r extends AbstractC19112n implements AbstractC19095f, AbstractC19118t, AbstractC19407p {
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19095f
    /* renamed from: a */
    public final AnnotatedElement mo2638a() {
        return (AnnotatedElement) mo2645f();
    }

    /* renamed from: a */
    public final List<AbstractC19417z> m2646a(Type[] parameterTypes, Annotation[][] parameterAnnotations, boolean z) {
        String str;
        C18524p.m3840d(parameterTypes, "parameterTypes");
        C18524p.m3840d(parameterAnnotations, "parameterAnnotations");
        ArrayList arrayList = new ArrayList(parameterTypes.length);
        C19086a c19086a = C19086a.f64807a;
        List<String> m2661a = C19086a.m2661a(mo2645f());
        Integer valueOf = m2661a == null ? null : Integer.valueOf(m2661a.size());
        int intValue = valueOf == null ? 0 : valueOf.intValue() - parameterTypes.length;
        int length = parameterTypes.length - 1;
        if (length >= 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                int i3 = i2 + 1;
                AbstractC19122w.C19123a c19123a = AbstractC19122w.f64847b;
                AbstractC19122w m2639a = AbstractC19122w.C19123a.m2639a(parameterTypes[i2]);
                if (m2661a == null) {
                    str = null;
                } else {
                    str = (String) C18282n.m4134b((List<? extends Object>) m2661a, i2 + intValue);
                    if (str == null) {
                        throw new IllegalStateException(("No parameter with index " + i2 + '+' + intValue + " (name=" + mo2183h() + " type=" + m2639a + ") in " + m2661a + "@ReflectJavaMember").toString());
                    }
                }
                arrayList.add(new C19125y(m2639a, parameterAnnotations[i2], str, z && i2 == C18273i.m4184h(parameterTypes)));
                if (i3 > length) {
                    break;
                }
                i = i3;
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC19389a mo2221a(C18961b c18961b) {
        return AbstractC19095f.C19096a.m2649a(this, c18961b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: b */
    public final /* synthetic */ Collection mo2220b() {
        return AbstractC19095f.C19096a.m2650a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: c */
    public final boolean mo2219c() {
        C18524p.m3840d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19118t
    /* renamed from: d */
    public final int mo2644d() {
        return mo2645f().getModifiers();
    }

    public boolean equals(Object obj) {
        return (obj instanceof AbstractC19116r) && C18524p.m3850a(mo2645f(), ((AbstractC19116r) obj).mo2645f());
    }

    /* renamed from: f */
    public abstract Member mo2645f();

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19410s
    /* renamed from: h */
    public final C18966e mo2183h() {
        String name = mo2645f().getName();
        C18966e m2719a = name == null ? null : C18966e.m2719a(name);
        C18966e NO_NAME_PROVIDED = m2719a;
        if (m2719a == null) {
            NO_NAME_PROVIDED = C18968g.f64700a;
            C18524p.m3843b(NO_NAME_PROVIDED, "NO_NAME_PROVIDED");
        }
        return NO_NAME_PROVIDED;
    }

    public int hashCode() {
        return mo2645f().hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19407p
    /* renamed from: j */
    public final /* synthetic */ AbstractC19398g mo2192j() {
        Class<?> declaringClass = mo2645f().getDeclaringClass();
        C18524p.m3843b(declaringClass, "member.declaringClass");
        return new C19100j(declaringClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19409r
    /* renamed from: n */
    public final boolean mo2187n() {
        return AbstractC19118t.C19119a.m2643a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19409r
    /* renamed from: o */
    public final boolean mo2186o() {
        return AbstractC19118t.C19119a.m2641c(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19409r
    /* renamed from: p */
    public final boolean mo2185p() {
        return AbstractC19118t.C19119a.m2642b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19409r
    /* renamed from: q */
    public final AbstractC19064bf mo2184q() {
        return AbstractC19118t.C19119a.m2640d(this);
    }

    public String toString() {
        return getClass().getName() + ": " + mo2645f();
    }
}
