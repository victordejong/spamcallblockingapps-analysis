package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a;

import java.io.InputStream;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19076f;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19641m;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.C19877a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.C19880c;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.a.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/a/g.class */
public final class C19078g implements AbstractC19641m {

    /* renamed from: a */
    private final ClassLoader f64797a;

    /* renamed from: b */
    private final C19880c f64798b = new C19880c();

    public C19078g(ClassLoader classLoader) {
        C18524p.m3840d(classLoader, "classLoader");
        this.f64797a = classLoader;
    }

    /* renamed from: a */
    private final AbstractC19641m.AbstractC19642a m2666a(String str) {
        Class<?> m2668a = C19075e.m2668a(this.f64797a, str);
        AbstractC19641m.AbstractC19642a.C19644b c19644b = null;
        if (m2668a != null) {
            C19076f.C19077a c19077a = C19076f.f64794a;
            C19076f m2667a = C19076f.C19077a.m2667a(m2668a);
            if (m2667a != null) {
                c19644b = new AbstractC19641m.AbstractC19642a.C19644b(m2667a, null, 2, null);
            }
        }
        return c19644b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19960r
    /* renamed from: a */
    public final InputStream mo1249a(C18961b packageFqName) {
        C18524p.m3840d(packageFqName, "packageFqName");
        if (!packageFqName.m2742b(C18954j.f64582l)) {
            return null;
        }
        return this.f64798b.m1365a(C19877a.f66095m.m1369a(packageFqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19641m
    /* renamed from: a */
    public final AbstractC19641m.AbstractC19642a mo1883a(C18960a classId) {
        String str;
        C18524p.m3840d(classId, "classId");
        String m2746a = classId.m2752b().m2746a();
        C18524p.m3843b(m2746a, "relativeClassName.asString()");
        String a = C18425p.m3964a(m2746a, '.', '$', false);
        if (classId.m2758a().f64686b.f64691a.isEmpty()) {
            str = a;
        } else {
            str = classId.m2758a() + '.' + a;
        }
        return m2666a(str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19641m
    /* renamed from: a */
    public final AbstractC19641m.AbstractC19642a mo1882a(AbstractC19398g javaClass) {
        C18524p.m3840d(javaClass, "javaClass");
        C18961b mo2216e = javaClass.mo2216e();
        String m2746a = mo2216e == null ? null : mo2216e.m2746a();
        if (m2746a == null) {
            return null;
        }
        return m2666a(m2746a);
    }
}
