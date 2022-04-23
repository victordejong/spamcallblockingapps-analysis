package kotlin.reflect.jvm.internal.impl.b.b;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/f.class */
public final class f {
    public static final a.p a(a.h hVar, g typeTable) {
        p.d(hVar, "<this>");
        p.d(typeTable, "typeTable");
        if (hVar.k()) {
            a.p returnType = hVar.e;
            p.b(returnType, "returnType");
            return returnType;
        } else if (hVar.l()) {
            return typeTable.a(hVar.f);
        } else {
            throw new IllegalStateException("No returnType in ProtoBuf.Function".toString());
        }
    }

    public static final a.p a(a.m mVar, g typeTable) {
        p.d(mVar, "<this>");
        p.d(typeTable, "typeTable");
        if (mVar.k()) {
            a.p returnType = mVar.e;
            p.b(returnType, "returnType");
            return returnType;
        } else if (mVar.l()) {
            return typeTable.a(mVar.f);
        } else {
            throw new IllegalStateException("No returnType in ProtoBuf.Property".toString());
        }
    }

    public static final a.p a(a.p.C0646a aVar, g typeTable) {
        p.d(aVar, "<this>");
        p.d(typeTable, "typeTable");
        if (aVar.d()) {
            return aVar.f37090c;
        }
        if (aVar.g()) {
            return typeTable.a(aVar.f37091d);
        }
        return null;
    }

    public static final a.p a(a.p pVar, g typeTable) {
        p.d(pVar, "<this>");
        p.d(typeTable, "typeTable");
        if (pVar.k()) {
            return pVar.e;
        }
        if (pVar.l()) {
            return typeTable.a(pVar.f);
        }
        return null;
    }

    public static final a.p a(a.t tVar, g typeTable) {
        p.d(tVar, "<this>");
        p.d(typeTable, "typeTable");
        if (tVar.g()) {
            a.p type = tVar.f37122d;
            p.b(type, "type");
            return type;
        } else if (tVar.k()) {
            return typeTable.a(tVar.e);
        } else {
            throw new IllegalStateException("No type in ProtoBuf.ValueParameter".toString());
        }
    }

    public static final boolean a(a.h hVar) {
        p.d(hVar, "<this>");
        return hVar.m() || hVar.n();
    }

    public static final boolean a(a.m mVar) {
        p.d(mVar, "<this>");
        return mVar.m() || mVar.n();
    }

    public static final a.p b(a.h hVar, g typeTable) {
        p.d(hVar, "<this>");
        p.d(typeTable, "typeTable");
        if (hVar.m()) {
            return hVar.h;
        }
        if (hVar.n()) {
            return typeTable.a(hVar.i);
        }
        return null;
    }

    public static final a.p b(a.m mVar, g typeTable) {
        p.d(mVar, "<this>");
        p.d(typeTable, "typeTable");
        if (mVar.m()) {
            return mVar.h;
        }
        if (mVar.n()) {
            return typeTable.a(mVar.i);
        }
        return null;
    }

    public static final a.p b(a.p pVar, g typeTable) {
        p.d(pVar, "<this>");
        p.d(typeTable, "typeTable");
        if (pVar.q()) {
            return pVar.k;
        }
        if (pVar.r()) {
            return typeTable.a(pVar.l);
        }
        return null;
    }

    public static final a.p b(a.t tVar, g typeTable) {
        p.d(tVar, "<this>");
        p.d(typeTable, "typeTable");
        if (tVar.l()) {
            return tVar.f;
        }
        if (tVar.m()) {
            return typeTable.a(tVar.g);
        }
        return null;
    }

    public static final a.p c(a.p pVar, g typeTable) {
        p.d(pVar, "<this>");
        p.d(typeTable, "typeTable");
        if (pVar.s()) {
            return pVar.m;
        }
        if (pVar.t()) {
            return typeTable.a(pVar.n);
        }
        return null;
    }
}
