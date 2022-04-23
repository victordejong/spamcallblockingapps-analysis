package kotlin.reflect.jvm.internal.impl.b.b;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final List<a.p> f37152a;

    public g(a.s typeTable) {
        p.d(typeTable, "typeTable");
        ArrayList arrayList = typeTable.f37114b;
        if (typeTable.c()) {
            int i = typeTable.f37115c;
            List<a.p> list = typeTable.f37114b;
            p.b(list, "typeTable.typeList");
            List<a.p> list2 = list;
            ArrayList arrayList2 = new ArrayList(n.a((Iterable) list2, 10));
            int i2 = 0;
            for (Object obj : list2) {
                if (i2 < 0) {
                    n.a();
                }
                a.p pVar = (a.p) obj;
                a.p pVar2 = pVar;
                if (i2 >= i) {
                    pVar2 = pVar.h().a(true).d();
                }
                arrayList2.add(pVar2);
                i2++;
            }
            arrayList = arrayList2;
        }
        p.b(arrayList, "run {\n        val originalTypes = typeTable.typeList\n        if (typeTable.hasFirstNullable()) {\n            val firstNullable = typeTable.firstNullable\n            typeTable.typeList.mapIndexed { i, type ->\n                if (i >= firstNullable) {\n                    type.toBuilder().setNullable(true).build()\n                } else type\n            }\n        } else originalTypes\n    }");
        this.f37152a = arrayList;
    }

    public final a.p a(int i) {
        return this.f37152a.get(i);
    }
}
