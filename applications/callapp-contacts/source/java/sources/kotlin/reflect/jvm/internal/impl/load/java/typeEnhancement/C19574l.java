package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18242ad;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18363d;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19660v;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l.class */
public final class C19574l {

    /* renamed from: a */
    final Map<String, C19562j> f65591a = new LinkedHashMap();

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.l$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a.class */
    public final class C19575a {

        /* renamed from: a */
        final String f65592a;

        /* renamed from: b */
        final /* synthetic */ C19574l f65593b;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.l$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a$a.class */
        public final class C19576a {

            /* renamed from: a */
            final /* synthetic */ C19575a f65594a;

            /* renamed from: b */
            private final String f65595b;

            /* renamed from: c */
            private final List<C18538n<String, C19582r>> f65596c = new ArrayList();

            /* renamed from: d */
            private C18538n<String, C19582r> f65597d = C20126t.m1103a("V", null);

            public C19576a(C19575a this$0, String functionName) {
                C18524p.m3840d(this$0, "this$0");
                C18524p.m3840d(functionName, "functionName");
                this.f65594a = this$0;
                this.f65595b = functionName;
            }

            /* renamed from: a */
            public final C18538n<String, C19562j> m2005a() {
                C19660v c19660v = C19660v.f65767a;
                String str = this.f65594a.f65592a;
                String str2 = this.f65595b;
                List<C18538n<String, C19582r>> list = this.f65596c;
                ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add((String) ((C18538n) it2.next()).f63624a);
                }
                String m1843a = C19660v.m1843a(str, c19660v.m1842a(str2, arrayList, this.f65597d.f63624a));
                C19582r c19582r = this.f65597d.f63625b;
                List<C18538n<String, C19582r>> list2 = this.f65596c;
                ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
                Iterator<T> it3 = list2.iterator();
                while (it3.hasNext()) {
                    arrayList2.add((C19582r) ((C18538n) it3.next()).f63625b);
                }
                return C20126t.m1103a(m1843a, new C19562j(c19582r, arrayList2));
            }

            /* renamed from: a */
            public final void m2004a(String type, C19528e... qualifiers) {
                C19582r c19582r;
                C18524p.m3840d(type, "type");
                C18524p.m3840d(qualifiers, "qualifiers");
                List<C18538n<String, C19582r>> list = this.f65596c;
                if (qualifiers.length == 0) {
                    c19582r = null;
                } else {
                    Iterable<C18242ad> l = C18273i.m4180l(qualifiers);
                    LinkedHashMap linkedHashMap = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a(l, 10)), 16));
                    for (C18242ad c18242ad : l) {
                        linkedHashMap.put(Integer.valueOf(c18242ad.f63352a), (C19528e) c18242ad.f63353b);
                    }
                    c19582r = new C19582r(linkedHashMap);
                }
                list.add(C20126t.m1103a(type, c19582r));
            }

            /* renamed from: a */
            public final void m2003a(EnumC19767d type) {
                C18524p.m3840d(type, "type");
                String desc = type.getDesc();
                C18524p.m3843b(desc, "type.desc");
                this.f65597d = C20126t.m1103a(desc, null);
            }

            /* renamed from: b */
            public final void m2002b(String type, C19528e... qualifiers) {
                C18524p.m3840d(type, "type");
                C18524p.m3840d(qualifiers, "qualifiers");
                Iterable<C18242ad> l = C18273i.m4180l(qualifiers);
                LinkedHashMap linkedHashMap = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a(l, 10)), 16));
                for (C18242ad c18242ad : l) {
                    linkedHashMap.put(Integer.valueOf(c18242ad.f63352a), (C19528e) c18242ad.f63353b);
                }
                this.f65597d = C20126t.m1103a(type, new C19582r(linkedHashMap));
            }
        }

        public C19575a(C19574l this$0, String className) {
            C18524p.m3840d(this$0, "this$0");
            C18524p.m3840d(className, "className");
            this.f65593b = this$0;
            this.f65592a = className;
        }

        /* renamed from: a */
        public final void m2006a(String name, Function1<? super C19576a, C20128v> block) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(block, "block");
            Map<String, C19562j> map = this.f65593b.f65591a;
            C19576a c19576a = new C19576a(this, name);
            block.invoke(c19576a);
            C18538n<String, C19562j> m2005a = c19576a.m2005a();
            map.put(m2005a.f63624a, m2005a.f63625b);
        }
    }
}
