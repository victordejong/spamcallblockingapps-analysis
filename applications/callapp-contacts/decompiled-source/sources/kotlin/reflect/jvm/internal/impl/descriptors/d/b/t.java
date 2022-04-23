package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.Modifier;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.be;
import kotlin.reflect.jvm.internal.impl.descriptors.bf;
import kotlin.reflect.jvm.internal.impl.descriptors.c.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.r;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/t.class */
public interface t extends r {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/t$a.class */
    public static final class a {
        public static boolean a(t tVar) {
            p.d(tVar, "this");
            return Modifier.isAbstract(tVar.d());
        }

        public static boolean b(t tVar) {
            p.d(tVar, "this");
            return Modifier.isStatic(tVar.d());
        }

        public static boolean c(t tVar) {
            p.d(tVar, "this");
            return Modifier.isFinal(tVar.d());
        }

        public static bf d(t tVar) {
            p.d(tVar, "this");
            int d2 = tVar.d();
            return Modifier.isPublic(d2) ? be.h.f37422a : Modifier.isPrivate(d2) ? be.e.f37419a : Modifier.isProtected(d2) ? Modifier.isStatic(d2) ? a.c.f37429a : a.b.f37428a : a.C0671a.f37427a;
        }
    }

    int d();
}
