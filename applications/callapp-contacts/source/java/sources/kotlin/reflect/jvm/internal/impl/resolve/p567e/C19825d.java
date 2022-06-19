package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/d.class */
public final class C19825d {

    /* renamed from: d */
    public static final C19825d f65995d;

    /* renamed from: e */
    public static final C19825d f65996e;

    /* renamed from: f */
    public static final C19825d f65997f;

    /* renamed from: g */
    public static final C19825d f65998g;

    /* renamed from: h */
    public static final C19825d f65999h;

    /* renamed from: i */
    public static final C19825d f66000i;

    /* renamed from: j */
    public static final C19825d f66001j;

    /* renamed from: k */
    public static final C19825d f66002k;

    /* renamed from: l */
    public static final C19825d f66003l;

    /* renamed from: m */
    public static final C19825d f66004m;

    /* renamed from: o */
    private static final int f66006o;

    /* renamed from: p */
    private static final int f66007p;

    /* renamed from: q */
    private static final int f66008q;

    /* renamed from: r */
    private static final int f66009r;

    /* renamed from: s */
    private static final int f66010s;

    /* renamed from: t */
    private static final int f66011t;

    /* renamed from: u */
    private static final int f66012u;

    /* renamed from: v */
    private static final int f66013v;

    /* renamed from: w */
    private static final int f66014w;

    /* renamed from: x */
    private static final int f66015x;

    /* renamed from: y */
    private static final List<C19826a.C19827a> f66016y;

    /* renamed from: z */
    private static final List<C19826a.C19827a> f66017z;

    /* renamed from: b */
    public final List<AbstractC19822c> f66018b;

    /* renamed from: c */
    final int f66019c;

    /* renamed from: a */
    public static final C19826a f65994a = new C19826a(null);

    /* renamed from: n */
    private static int f66005n = 1;

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/d$a.class */
    public static final class C19826a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.d$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/d$a$a.class */
        static final class C19827a {

            /* renamed from: a */
            final int f66020a;

            /* renamed from: b */
            final String f66021b;

            public C19827a(int i, String name) {
                C18524p.m3840d(name, "name");
                this.f66020a = i;
                this.f66021b = name;
            }
        }

        private C19826a() {
        }

        public /* synthetic */ C19826a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        static int m1418a() {
            int i = C19825d.f66005n;
            C19825d.f66005n <<= 1;
            return i;
        }
    }

    static {
        C19826a.C19827a c19827a;
        C19826a.C19827a c19827a2;
        int m1418a = C19826a.m1418a();
        f66006o = m1418a;
        int m1418a2 = C19826a.m1418a();
        f66007p = m1418a2;
        int m1418a3 = C19826a.m1418a();
        f66008q = m1418a3;
        int m1418a4 = C19826a.m1418a();
        f66009r = m1418a4;
        int m1418a5 = C19826a.m1418a();
        f66010s = m1418a5;
        int m1418a6 = C19826a.m1418a();
        f66011t = m1418a6;
        int m1418a7 = C19826a.m1418a() - 1;
        f66012u = m1418a7;
        int i = m1418a | m1418a2 | m1418a3;
        f66013v = i;
        int i2 = m1418a2 | m1418a5 | m1418a6;
        f66014w = i2;
        int i3 = m1418a5 | m1418a6;
        f66015x = i3;
        f65995d = new C19825d(m1418a7, null, 2, null);
        f65996e = new C19825d(i3, null, 2, null);
        f65997f = new C19825d(m1418a, null, 2, null);
        f65998g = new C19825d(m1418a2, null, 2, null);
        f65999h = new C19825d(m1418a3, null, 2, null);
        f66000i = new C19825d(i, null, 2, null);
        f66001j = new C19825d(m1418a4, null, 2, null);
        f66002k = new C19825d(m1418a5, null, 2, null);
        f66003l = new C19825d(m1418a6, null, 2, null);
        f66004m = new C19825d(i2, null, 2, null);
        Field[] fields = C19825d.class.getFields();
        C18524p.m3843b(fields, "T::class.java.fields");
        Field[] fieldArr = fields;
        ArrayList arrayList = new ArrayList();
        for (Field field : fieldArr) {
            if (Modifier.isStatic(field.getModifiers())) {
                arrayList.add(field);
            }
        }
        ArrayList<Field> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList();
        for (Field field2 : arrayList2) {
            Object obj = field2.get(null);
            C19825d c19825d = obj instanceof C19825d ? (C19825d) obj : null;
            if (c19825d != null) {
                int i4 = c19825d.f66019c;
                String name = field2.getName();
                C18524p.m3843b(name, "field.name");
                c19827a2 = new C19826a.C19827a(i4, name);
            } else {
                c19827a2 = null;
            }
            if (c19827a2 != null) {
                arrayList3.add(c19827a2);
            }
        }
        f66016y = arrayList3;
        Field[] fields2 = C19825d.class.getFields();
        C18524p.m3843b(fields2, "T::class.java.fields");
        Field[] fieldArr2 = fields2;
        ArrayList arrayList4 = new ArrayList();
        for (Field field3 : fieldArr2) {
            if (Modifier.isStatic(field3.getModifiers())) {
                arrayList4.add(field3);
            }
        }
        ArrayList arrayList5 = arrayList4;
        ArrayList arrayList6 = new ArrayList();
        for (Object obj2 : arrayList5) {
            if (C18524p.m3850a(((Field) obj2).getType(), Integer.TYPE)) {
                arrayList6.add(obj2);
            }
        }
        ArrayList<Field> arrayList7 = arrayList6;
        ArrayList arrayList8 = new ArrayList();
        for (Field field4 : arrayList7) {
            Object obj3 = field4.get(null);
            Objects.requireNonNull(obj3, "null cannot be cast to non-null type kotlin.Int");
            int intValue = ((Integer) obj3).intValue();
            if (intValue == ((-intValue) & intValue)) {
                String name2 = field4.getName();
                C18524p.m3843b(name2, "field.name");
                c19827a = new C19826a.C19827a(intValue, name2);
            } else {
                c19827a = null;
            }
            if (c19827a != null) {
                arrayList8.add(c19827a);
            }
        }
        f66017z = arrayList8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C19825d(int i, List<? extends AbstractC19822c> excludes) {
        C18524p.m3840d(excludes, "excludes");
        this.f66018b = excludes;
        for (AbstractC19822c abstractC19822c : excludes) {
            i &= abstractC19822c.mo1430a() ^ (-1);
        }
        this.f66019c = i;
    }

    public /* synthetic */ C19825d(int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? C18297z.f63400a : list);
    }

    /* renamed from: a */
    public final boolean m1428a(int i) {
        return (i & this.f66019c) != 0;
    }

    public final String toString() {
        Object obj;
        Iterator<T> it2 = f66016y.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((C19826a.C19827a) obj).f66020a == this.f66019c) {
                break;
            }
        }
        C19826a.C19827a c19827a = (C19826a.C19827a) obj;
        String str = c19827a == null ? null : c19827a.f66021b;
        String str2 = str;
        if (str == null) {
            List<C19826a.C19827a> list = f66017z;
            ArrayList arrayList = new ArrayList();
            for (C19826a.C19827a c19827a2 : list) {
                String str3 = m1428a(c19827a2.f66020a) ? c19827a2.f66021b : null;
                if (str3 != null) {
                    arrayList.add(str3);
                }
            }
            str2 = C18282n.m4148a(arrayList, " | ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
        }
        return "DescriptorKindFilter(" + str2 + ", " + this.f66018b + ')';
    }
}
