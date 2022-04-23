package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.ai;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.v;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.load.java.d.t;
import kotlin.reflect.jvm.internal.impl.load.java.d.y;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.kotlin.a.a;
import kotlin.reflect.jvm.internal.impl.load.kotlin.n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.u;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g.class */
public final class g extends v {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37833b = {ac.a(new aa(ac.b(g.class), "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;")), ac.a(new aa(ac.b(g.class), "partToFacade", "getPartToFacade()Ljava/util/HashMap;"))};

    /* renamed from: c  reason: collision with root package name */
    public final i<List<kotlin.reflect.jvm.internal.impl.c.b>> f37834c;

    /* renamed from: d  reason: collision with root package name */
    private final t f37835d;
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.g e;
    private final i f;
    private final d g;
    private final kotlin.reflect.jvm.internal.impl.descriptors.a.g h;
    private final i i;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$a.class */
    static final class a extends r implements Function0<Map<String, ? extends o>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<String, ? extends o> invoke() {
            u uVar = g.this.e.f37882a.l;
            String a2 = g.this.f37582a.a();
            p.b(a2, "fqName.asString()");
            List<String> a3 = uVar.a(a2);
            g gVar = g.this;
            ArrayList arrayList = new ArrayList();
            for (String str : a3) {
                kotlin.reflect.jvm.internal.impl.c.a a4 = kotlin.reflect.jvm.internal.impl.c.a.a(kotlin.reflect.jvm.internal.impl.resolve.c.c.a(str).a());
                p.b(a4, "topLevel(JvmClassName.byInternalName(partName).fqNameForTopLevelClassMaybeWithDollars)");
                o a5 = n.a(gVar.e.f37882a.f37784c, a4);
                kotlin.n a6 = a5 == null ? null : kotlin.t.a(str, a5);
                if (a6 != null) {
                    arrayList.add(a6);
                }
            }
            return ai.a(arrayList);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b.class */
    static final class b extends r implements Function0<HashMap<kotlin.reflect.jvm.internal.impl.resolve.c.c, kotlin.reflect.jvm.internal.impl.resolve.c.c>> {

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b$a.class */
        public final /* synthetic */ class a {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f37838a;

            static {
                int[] iArr = new int[a.EnumC0694a.values().length];
                iArr[a.EnumC0694a.MULTIFILE_CLASS_PART.ordinal()] = 1;
                iArr[a.EnumC0694a.FILE_FACADE.ordinal()] = 2;
                f37838a = iArr;
            }
        }

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ HashMap<kotlin.reflect.jvm.internal.impl.resolve.c.c, kotlin.reflect.jvm.internal.impl.resolve.c.c> invoke() {
            HashMap<kotlin.reflect.jvm.internal.impl.resolve.c.c, kotlin.reflect.jvm.internal.impl.resolve.c.c> hashMap = new HashMap<>();
            for (Map.Entry<String, o> entry : g.this.d().entrySet()) {
                String key = entry.getKey();
                o value = entry.getValue();
                kotlin.reflect.jvm.internal.impl.resolve.c.c a2 = kotlin.reflect.jvm.internal.impl.resolve.c.c.a(key);
                p.b(a2, "byInternalName(partInternalName)");
                kotlin.reflect.jvm.internal.impl.load.kotlin.a.a a3 = value.a();
                int i = a.f37838a[a3.f38020a.ordinal()];
                if (i == 1) {
                    HashMap<kotlin.reflect.jvm.internal.impl.resolve.c.c, kotlin.reflect.jvm.internal.impl.resolve.c.c> hashMap2 = hashMap;
                    String a4 = a3.a();
                    if (a4 != null) {
                        kotlin.reflect.jvm.internal.impl.resolve.c.c a5 = kotlin.reflect.jvm.internal.impl.resolve.c.c.a(a4);
                        p.b(a5, "byInternalName(header.multifileClassName ?: continue@kotlinClasses)");
                        hashMap2.put(a2, a5);
                    }
                } else if (i == 2) {
                    hashMap.put(a2, a2);
                }
            }
            return hashMap;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$c.class */
    static final class c extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.c.b>> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.c.b> invoke() {
            Collection<t> d2 = g.this.f37835d.d();
            ArrayList arrayList = new ArrayList(kotlin.a.n.a(d2, 10));
            for (t tVar : d2) {
                arrayList.add(tVar.a());
            }
            return arrayList;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(kotlin.reflect.jvm.internal.impl.load.java.lazy.g outerContext, t jPackage) {
        super(outerContext.f37882a.o, jPackage.a());
        kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar;
        p.d(outerContext, "outerContext");
        p.d(jPackage, "jPackage");
        this.f37835d = jPackage;
        kotlin.reflect.jvm.internal.impl.load.java.lazy.g a2 = kotlin.reflect.jvm.internal.impl.load.java.lazy.a.a(outerContext, (f) this, (y) null, 6);
        this.e = a2;
        this.f = a2.f37882a.f37782a.a(new a());
        this.g = new d(a2, jPackage, this);
        this.f37834c = a2.f37882a.f37782a.a(new c(), z.f36608a);
        if (a2.f37882a.v.h) {
            g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            gVar = g.a.a();
        } else {
            gVar = e.a(a2, jPackage);
        }
        this.h = gVar;
        this.i = a2.f37882a.f37782a.a(new b());
    }

    public final d a(kotlin.reflect.jvm.internal.impl.load.java.d.g javaClass) {
        p.d(javaClass, "jClass");
        h hVar = this.g.f37808b;
        p.d(javaClass, "javaClass");
        return hVar.a(javaClass.h(), javaClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ae
    public final /* bridge */ /* synthetic */ h a() {
        return this.g;
    }

    public final Map<String, o> d() {
        return (Map) m.a(this.f, f37833b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.b, kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final kotlin.reflect.jvm.internal.impl.descriptors.a.g getAnnotations() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.v, kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.n
    public final at getSource() {
        return new kotlin.reflect.jvm.internal.impl.load.kotlin.p(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.v, kotlin.reflect.jvm.internal.impl.descriptors.impl.h
    public final String toString() {
        return p.a("Lazy Java package fragment: ", (Object) this.f37582a);
    }
}
