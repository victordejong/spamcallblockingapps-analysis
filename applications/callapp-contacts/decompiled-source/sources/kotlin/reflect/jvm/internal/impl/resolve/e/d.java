package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/d.class */
public final class d {

    /* renamed from: d  reason: collision with root package name */
    public static final d f38280d;
    public static final d e;
    public static final d f;
    public static final d g;
    public static final d h;
    public static final d i;
    public static final d j;
    public static final d k;
    public static final d l;
    public static final d m;
    private static final int o;
    private static final int p;
    private static final int q;
    private static final int r;
    private static final int s;
    private static final int t;
    private static final int u;
    private static final int v;
    private static final int w;
    private static final int x;
    private static final List<a.C0710a> y;
    private static final List<a.C0710a> z;

    /* renamed from: b  reason: collision with root package name */
    public final List<c> f38281b;

    /* renamed from: c  reason: collision with root package name */
    final int f38282c;

    /* renamed from: a  reason: collision with root package name */
    public static final a f38279a = new a(null);
    private static int n = 1;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/d$a.class */
    public static final class a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/d$a$a.class */
        static final class C0710a {

            /* renamed from: a  reason: collision with root package name */
            final int f38283a;

            /* renamed from: b  reason: collision with root package name */
            final String f38284b;

            public C0710a(int i, String name) {
                p.d(name, "name");
                this.f38283a = i;
                this.f38284b = name;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        static int a() {
            int i = d.n;
            d.n <<= 1;
            return i;
        }
    }

    static {
        a.C0710a aVar;
        a.C0710a aVar2;
        int a2 = a.a();
        o = a2;
        int a3 = a.a();
        p = a3;
        int a4 = a.a();
        q = a4;
        int a5 = a.a();
        r = a5;
        int a6 = a.a();
        s = a6;
        int a7 = a.a();
        t = a7;
        int a8 = a.a() - 1;
        u = a8;
        int i2 = a2 | a3 | a4;
        v = i2;
        int i3 = a3 | a6 | a7;
        w = i3;
        int i4 = a6 | a7;
        x = i4;
        f38280d = new d(a8, null, 2, null);
        e = new d(i4, null, 2, null);
        f = new d(a2, null, 2, null);
        g = new d(a3, null, 2, null);
        h = new d(a4, null, 2, null);
        i = new d(i2, null, 2, null);
        j = new d(a5, null, 2, null);
        k = new d(a6, null, 2, null);
        l = new d(a7, null, 2, null);
        m = new d(i3, null, 2, null);
        Field[] fields = d.class.getFields();
        p.b(fields, "T::class.java.fields");
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
            d dVar = obj instanceof d ? (d) obj : null;
            if (dVar != null) {
                int i5 = dVar.f38282c;
                String name = field2.getName();
                p.b(name, "field.name");
                aVar2 = new a.C0710a(i5, name);
            } else {
                aVar2 = null;
            }
            if (aVar2 != null) {
                arrayList3.add(aVar2);
            }
        }
        y = arrayList3;
        Field[] fields2 = d.class.getFields();
        p.b(fields2, "T::class.java.fields");
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
            if (p.a(((Field) obj2).getType(), Integer.TYPE)) {
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
                p.b(name2, "field.name");
                aVar = new a.C0710a(intValue, name2);
            } else {
                aVar = null;
            }
            if (aVar != null) {
                arrayList8.add(aVar);
            }
        }
        z = arrayList8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d(int i2, List<? extends c> excludes) {
        p.d(excludes, "excludes");
        this.f38281b = excludes;
        for (c cVar : excludes) {
            i2 &= cVar.a() ^ (-1);
        }
        this.f38282c = i2;
    }

    public /* synthetic */ d(int i2, z zVar, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? z.f36608a : zVar);
    }

    public final boolean a(int i2) {
        return (i2 & this.f38282c) != 0;
    }

    public final String toString() {
        Object obj;
        Iterator<T> it2 = y.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (((a.C0710a) obj).f38283a == this.f38282c) {
                break;
            }
        }
        a.C0710a aVar = (a.C0710a) obj;
        String str = aVar == null ? null : aVar.f38284b;
        String str2 = str;
        if (str == null) {
            List<a.C0710a> list = z;
            ArrayList arrayList = new ArrayList();
            for (a.C0710a aVar2 : list) {
                String str3 = a(aVar2.f38283a) ? aVar2.f38284b : null;
                if (str3 != null) {
                    arrayList.add(str3);
                }
            }
            str2 = n.a(arrayList, " | ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
        }
        return "DescriptorKindFilter(" + str2 + ", " + this.f38281b + ')';
    }
}
