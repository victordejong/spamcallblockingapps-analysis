package kotlin.reflect.jvm.internal.impl.p539b.p541b;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.b.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/g.class */
public final class C18818g {

    /* renamed from: a */
    private final List<C18702a.C18768p> f64312a;

    public C18818g(C18702a.C18784s typeTable) {
        C18524p.m3840d(typeTable, "typeTable");
        ArrayList arrayList = typeTable.f64190b;
        if (typeTable.m3147c()) {
            int i = typeTable.f64191c;
            List<C18702a.C18768p> list = typeTable.f64190b;
            C18524p.m3843b(list, "typeTable.typeList");
            List<C18702a.C18768p> list2 = list;
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
            int i2 = 0;
            for (Object obj : list2) {
                if (i2 < 0) {
                    C18282n.m4175a();
                }
                C18702a.C18768p c18768p = (C18702a.C18768p) obj;
                C18702a.C18768p c18768p2 = c18768p;
                if (i2 >= i) {
                    c18768p2 = c18768p.mo1659h().m3235a(true).mo1656d();
                }
                arrayList2.add(c18768p2);
                i2++;
            }
            arrayList = arrayList2;
        }
        C18524p.m3843b(arrayList, "run {\n        val originalTypes = typeTable.typeList\n        if (typeTable.hasFirstNullable()) {\n            val firstNullable = typeTable.firstNullable\n            typeTable.typeList.mapIndexed { i, type ->\n                if (i >= firstNullable) {\n                    type.toBuilder().setNullable(true).build()\n                } else type\n            }\n        } else originalTypes\n    }");
        this.f64312a = arrayList;
    }

    /* renamed from: a */
    public final C18702a.C18768p m3043a(int i) {
        return this.f64312a.get(i);
    }
}
