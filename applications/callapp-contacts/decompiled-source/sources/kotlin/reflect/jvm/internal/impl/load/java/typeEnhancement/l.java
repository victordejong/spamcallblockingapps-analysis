package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.ad;
import kotlin.a.ai;
import kotlin.a.i;
import kotlin.f.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.v;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l.class */
final class l {

    /* renamed from: a  reason: collision with root package name */
    final Map<String, j> f37985a = new LinkedHashMap();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f37986a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l f37987b;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a$a.class */
        public final class C0691a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a f37988a;

            /* renamed from: b  reason: collision with root package name */
            private final String f37989b;

            /* renamed from: c  reason: collision with root package name */
            private final List<n<String, r>> f37990c = new ArrayList();

            /* renamed from: d  reason: collision with root package name */
            private n<String, r> f37991d = t.a("V", null);

            public C0691a(a this$0, String functionName) {
                p.d(this$0, "this$0");
                p.d(functionName, "functionName");
                this.f37988a = this$0;
                this.f37989b = functionName;
            }

            public final n<String, j> a() {
                v vVar = v.f38097a;
                String str = this.f37988a.f37986a;
                String str2 = this.f37989b;
                List<n<String, r>> list = this.f37990c;
                ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list, 10));
                Iterator<T> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add((String) ((n) it2.next()).f36810a);
                }
                String a2 = v.a(str, vVar.a(str2, arrayList, this.f37991d.f36810a));
                r rVar = this.f37991d.f36811b;
                List<n<String, r>> list2 = this.f37990c;
                ArrayList arrayList2 = new ArrayList(kotlin.a.n.a((Iterable) list2, 10));
                Iterator<T> it3 = list2.iterator();
                while (it3.hasNext()) {
                    arrayList2.add((r) ((n) it3.next()).f36811b);
                }
                return t.a(a2, new j(rVar, arrayList2));
            }

            public final void a(String type, e... qualifiers) {
                r rVar;
                p.d(type, "type");
                p.d(qualifiers, "qualifiers");
                List<n<String, r>> list = this.f37990c;
                if (qualifiers.length == 0) {
                    rVar = null;
                } else {
                    Iterable<ad> l = i.l(qualifiers);
                    LinkedHashMap linkedHashMap = new LinkedHashMap(d.c(ai.a(kotlin.a.n.a(l, 10)), 16));
                    for (ad adVar : l) {
                        linkedHashMap.put(Integer.valueOf(adVar.f36568a), (e) adVar.f36569b);
                    }
                    rVar = new r(linkedHashMap);
                }
                list.add(t.a(type, rVar));
            }

            public final void a(kotlin.reflect.jvm.internal.impl.resolve.c.d type) {
                p.d(type, "type");
                String desc = type.getDesc();
                p.b(desc, "type.desc");
                this.f37991d = t.a(desc, null);
            }

            public final void b(String type, e... qualifiers) {
                p.d(type, "type");
                p.d(qualifiers, "qualifiers");
                Iterable<ad> l = i.l(qualifiers);
                LinkedHashMap linkedHashMap = new LinkedHashMap(d.c(ai.a(kotlin.a.n.a(l, 10)), 16));
                for (ad adVar : l) {
                    linkedHashMap.put(Integer.valueOf(adVar.f36568a), (e) adVar.f36569b);
                }
                this.f37991d = t.a(type, new r(linkedHashMap));
            }
        }

        public a(l this$0, String className) {
            p.d(this$0, "this$0");
            p.d(className, "className");
            this.f37987b = this$0;
            this.f37986a = className;
        }

        public final void a(String name, Function1<? super C0691a, kotlin.v> block) {
            p.d(name, "name");
            p.d(block, "block");
            Map<String, j> map = this.f37987b.f37985a;
            C0691a aVar = new C0691a(this, name);
            block.invoke(aVar);
            n<String, j> a2 = aVar.a();
            map.put(a2.f36810a, a2.f36811b);
        }
    }
}
