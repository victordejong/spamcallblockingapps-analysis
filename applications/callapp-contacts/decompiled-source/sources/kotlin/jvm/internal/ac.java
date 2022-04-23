package kotlin.jvm.internal;

import java.util.Collections;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KType;
import kotlin.reflect.c;
import kotlin.reflect.f;
import kotlin.reflect.g;
import kotlin.reflect.m;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ac.class */
public final class ac {

    /* renamed from: a  reason: collision with root package name */
    private static final ad f36781a;

    /* renamed from: b  reason: collision with root package name */
    private static final c[] f36782b;

    static {
        ad adVar = null;
        try {
            adVar = (ad) Class.forName("kotlin.reflect.jvm.internal.ae").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException e) {
        }
        if (adVar == null) {
            adVar = new ad();
        }
        f36781a = adVar;
        f36782b = new c[0];
    }

    public static String a(l lVar) {
        return f36781a.a(lVar);
    }

    public static String a(r rVar) {
        return f36781a.a(rVar);
    }

    public static KDeclarationContainer a(Class cls) {
        return f36781a.a(cls, "");
    }

    public static KDeclarationContainer a(Class cls, String str) {
        return f36781a.a(cls, str);
    }

    public static KFunction a(m mVar) {
        return f36781a.a(mVar);
    }

    public static f a(t tVar) {
        return f36781a.a(tVar);
    }

    public static g a(v vVar) {
        return f36781a.a(vVar);
    }

    public static m a(z zVar) {
        return f36781a.a(zVar);
    }

    public static c b(Class cls) {
        return f36781a.a(cls);
    }

    public static KType c(Class cls) {
        ad adVar = f36781a;
        return adVar.a(adVar.a(cls), Collections.emptyList());
    }
}
