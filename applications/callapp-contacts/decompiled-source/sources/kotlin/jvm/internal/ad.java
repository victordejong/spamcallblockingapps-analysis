package kotlin.jvm.internal;

import java.util.List;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KType;
import kotlin.reflect.c;
import kotlin.reflect.d;
import kotlin.reflect.f;
import kotlin.reflect.g;
import kotlin.reflect.m;
import kotlin.reflect.q;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ad.class */
public class ad {
    public String a(l lVar) {
        String obj = lVar.getClass().getGenericInterfaces()[0].toString();
        String str = obj;
        if (obj.startsWith("kotlin.jvm.functions.")) {
            str = obj.substring(21);
        }
        return str;
    }

    public String a(r rVar) {
        return a((l) rVar);
    }

    public KDeclarationContainer a(Class cls, String str) {
        return new x(cls, str);
    }

    public KFunction a(m mVar) {
        return mVar;
    }

    public KType a(d dVar, List<q> list) {
        return new ak(dVar, list, true);
    }

    public c a(Class cls) {
        return new h(cls);
    }

    public f a(t tVar) {
        return tVar;
    }

    public g a(v vVar) {
        return vVar;
    }

    public m a(z zVar) {
        return zVar;
    }
}
