package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19128f;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19187v;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19429a;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19498e;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19416y;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19658u;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19645n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19652p;
import kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19608a;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.C19766c;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g.class */
public final class C19467g extends AbstractC19187v {

    /* renamed from: b */
    static final /* synthetic */ KProperty<Object>[] f65414b = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19467g.class), "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19467g.class), "partToFacade", "getPartToFacade()Ljava/util/HashMap;"))};

    /* renamed from: c */
    public final AbstractC19296i<List<C18961b>> f65415c;

    /* renamed from: d */
    private final AbstractC19411t f65416d;

    /* renamed from: e */
    private final C19501g f65417e;

    /* renamed from: f */
    private final AbstractC19296i f65418f;

    /* renamed from: g */
    private final C19449d f65419g;

    /* renamed from: h */
    private final AbstractC18983g f65420h;

    /* renamed from: i */
    private final AbstractC19296i f65421i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$a.class */
    public static final class C19468a extends AbstractC18526r implements Function0<Map<String, ? extends AbstractC19646o>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19468a() {
            super(0);
            C19467g.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<String, ? extends AbstractC19646o> invoke() {
            AbstractC19658u abstractC19658u = C19467g.this.f65417e.f65480a.f65329l;
            String m2746a = C19467g.this.f64984a.m2746a();
            C18524p.m3843b(m2746a, "fqName.asString()");
            List<String> mo1845a = abstractC19658u.mo1845a(m2746a);
            C19467g c19467g = C19467g.this;
            ArrayList arrayList = new ArrayList();
            for (String str : mo1845a) {
                C18960a m2754a = C18960a.m2754a(C19766c.m1503a(str).m1505a());
                C18524p.m3843b(m2754a, "topLevel(JvmClassName.byInternalName(partName).fqNameForTopLevelClassMaybeWithDollars)");
                AbstractC19646o m1880a = C19645n.m1880a(c19467g.f65417e.f65480a.f65320c, m2754a);
                C18538n m1103a = m1880a == null ? null : C20126t.m1103a(str, m1880a);
                if (m1103a != null) {
                    arrayList.add(m1103a);
                }
            }
            return C18247ai.m4256a(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.g$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b.class */
    public static final class C19469b extends AbstractC18526r implements Function0<HashMap<C19766c, C19766c>> {

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.g$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b$a.class */
        public final /* synthetic */ class C19470a {

            /* renamed from: a */
            public static final /* synthetic */ int[] f65424a;

            static {
                int[] iArr = new int[C19608a.EnumC19609a.values().length];
                iArr[C19608a.EnumC19609a.MULTIFILE_CLASS_PART.ordinal()] = 1;
                iArr[C19608a.EnumC19609a.FILE_FACADE.ordinal()] = 2;
                f65424a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19469b() {
            super(0);
            C19467g.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ HashMap<C19766c, C19766c> invoke() {
            HashMap<C19766c, C19766c> hashMap = new HashMap<>();
            for (Map.Entry<String, AbstractC19646o> entry : C19467g.this.m2098d().entrySet()) {
                String key = entry.getKey();
                AbstractC19646o value = entry.getValue();
                C19766c m1503a = C19766c.m1503a(key);
                C18524p.m3843b(m1503a, "byInternalName(partInternalName)");
                C19608a mo1879a = value.mo1879a();
                int i = C19470a.f65424a[mo1879a.f65675a.ordinal()];
                if (i == 1) {
                    HashMap<C19766c, C19766c> hashMap2 = hashMap;
                    String m1942a = mo1879a.m1942a();
                    if (m1942a != null) {
                        C19766c m1503a2 = C19766c.m1503a(m1942a);
                        C18524p.m3843b(m1503a2, "byInternalName(header.multifileClassName ?: continue@kotlinClasses)");
                        hashMap2.put(m1503a, m1503a2);
                    }
                } else if (i == 2) {
                    hashMap.put(m1503a, m1503a);
                }
            }
            return hashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.g$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$c.class */
    public static final class C19471c extends AbstractC18526r implements Function0<List<? extends C18961b>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19471c() {
            super(0);
            C19467g.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends C18961b> invoke() {
            Collection<AbstractC19411t> mo2180d = C19467g.this.f65416d.mo2180d();
            ArrayList arrayList = new ArrayList(C18282n.m4163a(mo2180d, 10));
            for (AbstractC19411t abstractC19411t : mo2180d) {
                arrayList.add(abstractC19411t.mo2182a());
            }
            return arrayList;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19467g(C19501g outerContext, AbstractC19411t jPackage) {
        super(outerContext.f65480a.f65332o, jPackage.mo2182a());
        AbstractC18983g abstractC18983g;
        C18524p.m3840d(outerContext, "outerContext");
        C18524p.m3840d(jPackage, "jPackage");
        this.f65416d = jPackage;
        C19501g m2159a = C19429a.m2159a(outerContext, (AbstractC19128f) this, (AbstractC19416y) null, 6);
        this.f65417e = m2159a;
        this.f65418f = m2159a.f65480a.f65318a.mo2313a(new C19468a());
        this.f65419g = new C19449d(m2159a, jPackage, this);
        this.f65415c = m2159a.f65480a.f65318a.mo2312a(new C19471c(), C18297z.f63400a);
        if (m2159a.f65480a.f65339v.f66373h) {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            abstractC18983g = AbstractC18983g.C18984a.m2705a();
        } else {
            abstractC18983g = C19498e.m2071a(m2159a, jPackage);
        }
        this.f65420h = abstractC18983g;
        this.f65421i = m2159a.f65480a.f65318a.mo2313a(new C19469b());
    }

    /* renamed from: a */
    public final AbstractC19070d m2101a(AbstractC19398g javaClass) {
        C18524p.m3840d(javaClass, "jClass");
        C19472h c19472h = this.f65419g.f65378b;
        C18524p.m3840d(javaClass, "javaClass");
        return c19472h.m2096a(javaClass.mo2183h(), javaClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC19834h mo1257a() {
        return this.f65419g;
    }

    /* renamed from: d */
    public final Map<String, AbstractC19646o> m2098d() {
        return (Map) C19301m.m2316a(this.f65418f, f65414b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18976b, kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public final AbstractC18983g getAnnotations() {
        return this.f65420h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19187v, kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19163i, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n
    public final AbstractC19026at getSource() {
        return new C19652p(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19187v, kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19162h
    public final String toString() {
        return C18524p.m3847a("Lazy Java package fragment: ", (Object) this.f64984a);
    }
}
