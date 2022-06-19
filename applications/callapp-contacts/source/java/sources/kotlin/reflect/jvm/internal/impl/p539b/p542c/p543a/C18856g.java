package kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18242ad;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p530f.C18363d;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/g.class */
public final class C18856g implements AbstractC18813c {

    /* renamed from: a */
    public static final C18857a f64431a = new C18857a(null);

    /* renamed from: f */
    private static final String f64432f;

    /* renamed from: g */
    private static final List<String> f64433g;

    /* renamed from: h */
    private static final Map<String, Integer> f64434h;

    /* renamed from: b */
    private final C18827a.C18838d f64435b;

    /* renamed from: c */
    private final String[] f64436c;

    /* renamed from: d */
    private final Set<Integer> f64437d;

    /* renamed from: e */
    private final List<C18827a.C18838d.C18841b> f64438e;

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/g$a.class */
    public static final class C18857a {
        private C18857a() {
        }

        public /* synthetic */ C18857a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.g$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/g$b.class */
    public final /* synthetic */ class C18858b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f64439a;

        static {
            int[] iArr = new int[C18827a.C18838d.C18841b.EnumC18844b.values().length];
            iArr[C18827a.C18838d.C18841b.EnumC18844b.NONE.ordinal()] = 1;
            iArr[C18827a.C18838d.C18841b.EnumC18844b.INTERNAL_TO_CLASS_ID.ordinal()] = 2;
            iArr[C18827a.C18838d.C18841b.EnumC18844b.DESC_TO_CLASS_ID.ordinal()] = 3;
            f64439a = iArr;
        }
    }

    static {
        String a = C18282n.m4148a(C18282n.m4167b((Object[]) new Character[]{'k', 'o', 't', 'l', 'i', 'n'}), "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
        f64432f = a;
        List<String> b = C18282n.m4167b((Object[]) new String[]{C18524p.m3847a(a, (Object) "/Any"), C18524p.m3847a(a, (Object) "/Nothing"), C18524p.m3847a(a, (Object) "/Unit"), C18524p.m3847a(a, (Object) "/Throwable"), C18524p.m3847a(a, (Object) "/Number"), C18524p.m3847a(a, (Object) "/Byte"), C18524p.m3847a(a, (Object) "/Double"), C18524p.m3847a(a, (Object) "/Float"), C18524p.m3847a(a, (Object) "/Int"), C18524p.m3847a(a, (Object) "/Long"), C18524p.m3847a(a, (Object) "/Short"), C18524p.m3847a(a, (Object) "/Boolean"), C18524p.m3847a(a, (Object) "/Char"), C18524p.m3847a(a, (Object) "/CharSequence"), C18524p.m3847a(a, (Object) "/String"), C18524p.m3847a(a, (Object) "/Comparable"), C18524p.m3847a(a, (Object) "/Enum"), C18524p.m3847a(a, (Object) "/Array"), C18524p.m3847a(a, (Object) "/ByteArray"), C18524p.m3847a(a, (Object) "/DoubleArray"), C18524p.m3847a(a, (Object) "/FloatArray"), C18524p.m3847a(a, (Object) "/IntArray"), C18524p.m3847a(a, (Object) "/LongArray"), C18524p.m3847a(a, (Object) "/ShortArray"), C18524p.m3847a(a, (Object) "/BooleanArray"), C18524p.m3847a(a, (Object) "/CharArray"), C18524p.m3847a(a, (Object) "/Cloneable"), C18524p.m3847a(a, (Object) "/Annotation"), C18524p.m3847a(a, (Object) "/collections/Iterable"), C18524p.m3847a(a, (Object) "/collections/MutableIterable"), C18524p.m3847a(a, (Object) "/collections/Collection"), C18524p.m3847a(a, (Object) "/collections/MutableCollection"), C18524p.m3847a(a, (Object) "/collections/List"), C18524p.m3847a(a, (Object) "/collections/MutableList"), C18524p.m3847a(a, (Object) "/collections/Set"), C18524p.m3847a(a, (Object) "/collections/MutableSet"), C18524p.m3847a(a, (Object) "/collections/Map"), C18524p.m3847a(a, (Object) "/collections/MutableMap"), C18524p.m3847a(a, (Object) "/collections/Map.Entry"), C18524p.m3847a(a, (Object) "/collections/MutableMap.MutableEntry"), C18524p.m3847a(a, (Object) "/collections/Iterator"), C18524p.m3847a(a, (Object) "/collections/MutableIterator"), C18524p.m3847a(a, (Object) "/collections/ListIterator"), C18524p.m3847a(a, (Object) "/collections/MutableListIterator")});
        f64433g = b;
        Iterable<C18242ad> k = C18282n.m4112k((Iterable) b);
        LinkedHashMap linkedHashMap = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a(k, 10)), 16));
        for (C18242ad c18242ad : k) {
            linkedHashMap.put((String) c18242ad.f63353b, Integer.valueOf(c18242ad.f63352a));
        }
        f64434h = linkedHashMap;
    }

    public C18856g(C18827a.C18838d types, String[] strings) {
        C18240ab c18240ab;
        C18524p.m3840d(types, "types");
        C18524p.m3840d(strings, "strings");
        this.f64435b = types;
        this.f64436c = strings;
        List<Integer> list = types.f64382c;
        if (list.isEmpty()) {
            c18240ab = C18240ab.f63351a;
        } else {
            C18524p.m3843b(list, "");
            c18240ab = C18282n.m4114j((Iterable) list);
        }
        this.f64437d = c18240ab;
        ArrayList arrayList = new ArrayList();
        List<C18827a.C18838d.C18841b> list2 = types.f64381b;
        arrayList.ensureCapacity(list2.size());
        for (C18827a.C18838d.C18841b c18841b : list2) {
            int i = c18841b.f64392b;
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(c18841b);
            }
        }
        arrayList.trimToSize();
        C20128v c20128v = C20128v.f66529a;
        this.f64438e = arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c
    /* renamed from: a */
    public final String mo2927a(int i) {
        String str;
        C18827a.C18838d.C18841b c18841b = this.f64438e.get(i);
        if (c18841b.m2945g()) {
            Object obj = c18841b.f64394d;
            if (obj instanceof String) {
                str = (String) obj;
            } else {
                AbstractC19673d abstractC19673d = (AbstractC19673d) obj;
                str = abstractC19673d.m1764e();
                if (abstractC19673d.mo1637f()) {
                    c18841b.f64394d = str;
                }
            }
        } else {
            if (c18841b.m2947d()) {
                List<String> list = f64433g;
                int size = list.size();
                int i2 = c18841b.f64393c;
                if (i2 >= 0 && i2 <= size - 1) {
                    str = list.get(c18841b.f64393c);
                }
            }
            str = this.f64436c[i];
        }
        String str2 = str;
        if (c18841b.f64396f.size() >= 2) {
            List<Integer> substringIndexList = c18841b.f64396f;
            C18524p.m3843b(substringIndexList, "substringIndexList");
            Integer begin = substringIndexList.get(0);
            Integer end = substringIndexList.get(1);
            C18524p.m3843b(begin, "begin");
            str2 = str;
            if (begin.intValue() >= 0) {
                int intValue = begin.intValue();
                C18524p.m3843b(end, "end");
                str2 = str;
                if (intValue <= end.intValue()) {
                    str2 = str;
                    if (end.intValue() <= str.length()) {
                        String string = str;
                        C18524p.m3843b(string, "string");
                        str2 = str.substring(begin.intValue(), end.intValue());
                        C18524p.m3843b(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    }
                }
            }
        }
        String str3 = str2;
        if (c18841b.f64397g.size() >= 2) {
            List<Integer> replaceCharList = c18841b.f64397g;
            C18524p.m3843b(replaceCharList, "replaceCharList");
            Integer num = replaceCharList.get(0);
            Integer num2 = replaceCharList.get(1);
            String string2 = str2;
            C18524p.m3843b(string2, "string");
            str3 = C18425p.m3964a(str2, (char) num.intValue(), (char) num2.intValue(), false);
        }
        C18827a.C18838d.C18841b.EnumC18844b enumC18844b = c18841b.f64395e;
        C18827a.C18838d.C18841b.EnumC18844b enumC18844b2 = enumC18844b;
        if (enumC18844b == null) {
            enumC18844b2 = C18827a.C18838d.C18841b.EnumC18844b.NONE;
        }
        int i3 = C18858b.f64439a[enumC18844b2.ordinal()];
        if (i3 == 2) {
            String string3 = str3;
            C18524p.m3843b(string3, "string");
            str3 = C18425p.m3964a(str3, '$', '.', false);
        } else if (i3 == 3) {
            String str4 = str3;
            if (str3.length() >= 2) {
                String string4 = str3;
                C18524p.m3843b(string4, "string");
                str4 = str3.substring(1, str3.length() - 1);
                C18524p.m3843b(str4, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
            String string5 = str4;
            C18524p.m3843b(string5, "string");
            str3 = C18425p.m3964a(str4, '$', '.', false);
        }
        String string6 = str3;
        C18524p.m3843b(string6, "string");
        return str3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c
    /* renamed from: b */
    public final String mo2926b(int i) {
        return mo2927a(i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c
    /* renamed from: c */
    public final boolean mo2925c(int i) {
        return this.f64437d.contains(Integer.valueOf(i));
    }
}
