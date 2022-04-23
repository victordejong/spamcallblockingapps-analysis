package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.c.g;
import kotlin.reflect.jvm.internal.impl.descriptors.bf;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.f;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.t;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.p;
import kotlin.reflect.jvm.internal.impl.load.java.d.z;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/r.class */
public abstract class r extends n implements f, t, p {
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.f
    public final AnnotatedElement a() {
        return (AnnotatedElement) f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<z> a(Type[] parameterTypes, Annotation[][] parameterAnnotations, boolean z) {
        String str;
        kotlin.jvm.internal.p.d(parameterTypes, "parameterTypes");
        kotlin.jvm.internal.p.d(parameterAnnotations, "parameterAnnotations");
        ArrayList arrayList = new ArrayList(parameterTypes.length);
        a aVar = a.f37449a;
        List<String> a2 = a.a(f());
        Integer valueOf = a2 == null ? null : Integer.valueOf(a2.size());
        int intValue = valueOf == null ? 0 : valueOf.intValue() - parameterTypes.length;
        int length = parameterTypes.length - 1;
        if (length >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                w.a aVar2 = w.f37488b;
                w a3 = w.a.a(parameterTypes[i]);
                if (a2 == null) {
                    str = null;
                } else {
                    str = (String) n.b((List<? extends Object>) a2, i + intValue);
                    if (str == null) {
                        throw new IllegalStateException(("No parameter with index " + i + '+' + intValue + " (name=" + h() + " type=" + a3 + ") in " + a2 + "@ReflectJavaMember").toString());
                    }
                }
                arrayList.add(new y(a3, parameterAnnotations[i], str, z && i == i.h(parameterTypes)));
                if (i2 > length) {
                    break;
                }
                i = i2;
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final /* bridge */ /* synthetic */ a a(b bVar) {
        return f.a.a(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final /* synthetic */ Collection b() {
        return f.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final boolean c() {
        kotlin.jvm.internal.p.d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.t
    public final int d() {
        return f().getModifiers();
    }

    public boolean equals(Object obj) {
        return (obj instanceof r) && kotlin.jvm.internal.p.a(f(), ((r) obj).f());
    }

    public abstract Member f();

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.s
    public final e h() {
        String name = f().getName();
        e a2 = name == null ? null : e.a(name);
        e NO_NAME_PROVIDED = a2;
        if (a2 == null) {
            NO_NAME_PROVIDED = g.f37346a;
            kotlin.jvm.internal.p.b(NO_NAME_PROVIDED, "NO_NAME_PROVIDED");
        }
        return NO_NAME_PROVIDED;
    }

    public int hashCode() {
        return f().hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.p
    public final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.d.g j() {
        Class<?> declaringClass = f().getDeclaringClass();
        kotlin.jvm.internal.p.b(declaringClass, "member.declaringClass");
        return new j(declaringClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.r
    public final boolean n() {
        return t.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.r
    public final boolean o() {
        return t.a.c(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.r
    public final boolean p() {
        return t.a.b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.r
    public final bf q() {
        return t.a.d(this);
    }

    public String toString() {
        return getClass().getName() + ": " + f();
    }
}
