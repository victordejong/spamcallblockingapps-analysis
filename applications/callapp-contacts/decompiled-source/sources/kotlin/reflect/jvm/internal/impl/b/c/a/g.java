package kotlin.reflect.jvm.internal.impl.b.c.a;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.a.ab;
import kotlin.a.ad;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.f.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.b.c;
import kotlin.reflect.jvm.internal.impl.b.c.a;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/g.class */
public final class g implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37223a = new a(null);
    private static final String f;
    private static final List<String> g;
    private static final Map<String, Integer> h;

    /* renamed from: b  reason: collision with root package name */
    private final a.d f37224b;

    /* renamed from: c  reason: collision with root package name */
    private final String[] f37225c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<Integer> f37226d;
    private final List<a.d.b> e;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/g$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/g$b.class */
    public final /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f37227a;

        static {
            int[] iArr = new int[a.d.b.EnumC0663b.values().length];
            iArr[a.d.b.EnumC0663b.NONE.ordinal()] = 1;
            iArr[a.d.b.EnumC0663b.INTERNAL_TO_CLASS_ID.ordinal()] = 2;
            iArr[a.d.b.EnumC0663b.DESC_TO_CLASS_ID.ordinal()] = 3;
            f37227a = iArr;
        }
    }

    static {
        String a2 = n.a(n.b((Object[]) new Character[]{'k', 'o', 't', 'l', 'i', 'n'}), "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
        f = a2;
        List<String> b2 = n.b((Object[]) new String[]{p.a(a2, (Object) "/Any"), p.a(a2, (Object) "/Nothing"), p.a(a2, (Object) "/Unit"), p.a(a2, (Object) "/Throwable"), p.a(a2, (Object) "/Number"), p.a(a2, (Object) "/Byte"), p.a(a2, (Object) "/Double"), p.a(a2, (Object) "/Float"), p.a(a2, (Object) "/Int"), p.a(a2, (Object) "/Long"), p.a(a2, (Object) "/Short"), p.a(a2, (Object) "/Boolean"), p.a(a2, (Object) "/Char"), p.a(a2, (Object) "/CharSequence"), p.a(a2, (Object) "/String"), p.a(a2, (Object) "/Comparable"), p.a(a2, (Object) "/Enum"), p.a(a2, (Object) "/Array"), p.a(a2, (Object) "/ByteArray"), p.a(a2, (Object) "/DoubleArray"), p.a(a2, (Object) "/FloatArray"), p.a(a2, (Object) "/IntArray"), p.a(a2, (Object) "/LongArray"), p.a(a2, (Object) "/ShortArray"), p.a(a2, (Object) "/BooleanArray"), p.a(a2, (Object) "/CharArray"), p.a(a2, (Object) "/Cloneable"), p.a(a2, (Object) "/Annotation"), p.a(a2, (Object) "/collections/Iterable"), p.a(a2, (Object) "/collections/MutableIterable"), p.a(a2, (Object) "/collections/Collection"), p.a(a2, (Object) "/collections/MutableCollection"), p.a(a2, (Object) "/collections/List"), p.a(a2, (Object) "/collections/MutableList"), p.a(a2, (Object) "/collections/Set"), p.a(a2, (Object) "/collections/MutableSet"), p.a(a2, (Object) "/collections/Map"), p.a(a2, (Object) "/collections/MutableMap"), p.a(a2, (Object) "/collections/Map.Entry"), p.a(a2, (Object) "/collections/MutableMap.MutableEntry"), p.a(a2, (Object) "/collections/Iterator"), p.a(a2, (Object) "/collections/MutableIterator"), p.a(a2, (Object) "/collections/ListIterator"), p.a(a2, (Object) "/collections/MutableListIterator")});
        g = b2;
        Iterable<ad> k = n.k((Iterable) b2);
        LinkedHashMap linkedHashMap = new LinkedHashMap(d.c(ai.a(n.a(k, 10)), 16));
        for (ad adVar : k) {
            linkedHashMap.put((String) adVar.f36569b, Integer.valueOf(adVar.f36568a));
        }
        h = linkedHashMap;
    }

    public g(a.d types, String[] strings) {
        ab abVar;
        p.d(types, "types");
        p.d(strings, "strings");
        this.f37224b = types;
        this.f37225c = strings;
        List<Integer> list = types.f37201c;
        if (list.isEmpty()) {
            abVar = ab.f36567a;
        } else {
            p.b(list, "");
            abVar = n.j((Iterable) list);
        }
        this.f37226d = abVar;
        ArrayList arrayList = new ArrayList();
        List<a.d.b> list2 = types.f37200b;
        arrayList.ensureCapacity(list2.size());
        for (a.d.b bVar : list2) {
            int i = bVar.f37210b;
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(bVar);
            }
        }
        arrayList.trimToSize();
        v vVar = v.f38654a;
        this.e = arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.b.b.c
    public final String a(int i) {
        String string;
        a.d.b bVar = this.e.get(i);
        if (bVar.g()) {
            Object obj = bVar.f37212d;
            if (obj instanceof String) {
                string = (String) obj;
            } else {
                kotlin.reflect.jvm.internal.impl.protobuf.d dVar = (kotlin.reflect.jvm.internal.impl.protobuf.d) obj;
                string = dVar.e();
                if (dVar.f()) {
                    bVar.f37212d = string;
                }
            }
        } else {
            if (bVar.d()) {
                List<String> list = g;
                int size = list.size();
                int i2 = bVar.f37211c;
                if (i2 >= 0 && i2 <= size - 1) {
                    string = list.get(bVar.f37211c);
                }
            }
            string = this.f37225c[i];
        }
        String string2 = string;
        if (bVar.f.size() >= 2) {
            List<Integer> substringIndexList = bVar.f;
            p.b(substringIndexList, "substringIndexList");
            Integer begin = substringIndexList.get(0);
            Integer end = substringIndexList.get(1);
            p.b(begin, "begin");
            string2 = string;
            if (begin.intValue() >= 0) {
                int intValue = begin.intValue();
                p.b(end, "end");
                string2 = string;
                if (intValue <= end.intValue()) {
                    string2 = string;
                    if (end.intValue() <= string.length()) {
                        p.b(string, "string");
                        string2 = string.substring(begin.intValue(), end.intValue());
                        p.b(string2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    }
                }
            }
        }
        String string3 = string2;
        if (bVar.g.size() >= 2) {
            List<Integer> replaceCharList = bVar.g;
            p.b(replaceCharList, "replaceCharList");
            Integer num = replaceCharList.get(0);
            p.b(string2, "string");
            string3 = kotlin.h.p.a(string2, (char) num.intValue(), (char) replaceCharList.get(1).intValue(), false);
        }
        a.d.b.EnumC0663b bVar2 = bVar.e;
        a.d.b.EnumC0663b bVar3 = bVar2;
        if (bVar2 == null) {
            bVar3 = a.d.b.EnumC0663b.NONE;
        }
        int i3 = b.f37227a[bVar3.ordinal()];
        if (i3 == 2) {
            p.b(string3, "string");
            string3 = kotlin.h.p.a(string3, '$', '.', false);
        } else if (i3 == 3) {
            String string4 = string3;
            if (string3.length() >= 2) {
                p.b(string3, "string");
                string4 = string3.substring(1, string3.length() - 1);
                p.b(string4, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
            p.b(string4, "string");
            string3 = kotlin.h.p.a(string4, '$', '.', false);
        }
        p.b(string3, "string");
        return string3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.b.b.c
    public final String b(int i) {
        return a(i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.b.b.c
    public final boolean c(int i) {
        return this.f37226d.contains(Integer.valueOf(i));
    }
}
