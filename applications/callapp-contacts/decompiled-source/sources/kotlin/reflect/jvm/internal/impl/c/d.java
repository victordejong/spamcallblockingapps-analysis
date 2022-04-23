package kotlin.reflect.jvm.internal.impl.c;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/d.class */
public final class d {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/c/d$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f37341a;

        static {
            int[] iArr = new int[h.values().length];
            iArr[h.BEGINNING.ordinal()] = 1;
            iArr[h.AFTER_DOT.ordinal()] = 2;
            iArr[h.MIDDLE.ordinal()] = 3;
            f37341a = iArr;
        }
    }

    public static final b a(b bVar, b prefix) {
        p.d(bVar, "<this>");
        p.d(prefix, "prefix");
        if (!b(bVar, prefix) || prefix.c()) {
            return bVar;
        }
        if (p.a(bVar, prefix)) {
            b ROOT = b.f37334a;
            p.b(ROOT, "ROOT");
            return ROOT;
        }
        String a2 = bVar.a();
        p.b(a2, "asString()");
        String substring = a2.substring(prefix.a().length() + 1);
        p.b(substring, "(this as java.lang.String).substring(startIndex)");
        return new b(substring);
    }

    private static boolean b(b bVar, b packageName) {
        p.d(bVar, "<this>");
        p.d(packageName, "packageName");
        if (p.a(bVar, packageName) || packageName.c()) {
            return true;
        }
        String a2 = bVar.a();
        p.b(a2, "this.asString()");
        String a3 = packageName.a();
        p.b(a3, "packageName.asString()");
        return kotlin.h.p.a(a2, a3, false) && a2.charAt(a3.length()) == '.';
    }
}
