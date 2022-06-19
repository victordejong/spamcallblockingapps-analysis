package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.C18692a;
import kotlin.reflect.jvm.internal.impl.builtins.C18959n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19626e;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19654r;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18816e;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18847b;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18854f;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18859h;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19294g;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.C19766c;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19972w;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.EnumC19875b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a.class */
public abstract class AbstractC19599a<A, C> implements AbstractC19881c<A, C> {

    /* renamed from: a */
    private final AbstractC19641m f65660a;

    /* renamed from: b */
    private final AbstractC19294g<AbstractC19646o, C19601b<A, C>> f65661b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$a.class */
    public enum EnumC19600a {
        PROPERTY,
        BACKING_FIELD,
        DELEGATE_FIELD
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$b.class */
    public static final class C19601b<A, C> {

        /* renamed from: a */
        final Map<C19654r, List<A>> f65662a;

        /* renamed from: b */
        final Map<C19654r, C> f65663b;

        /* JADX WARN: Multi-variable type inference failed */
        public C19601b(Map<C19654r, ? extends List<? extends A>> memberAnnotations, Map<C19654r, ? extends C> propertyConstants) {
            C18524p.m3840d(memberAnnotations, "memberAnnotations");
            C18524p.m3840d(propertyConstants, "propertyConstants");
            this.f65662a = memberAnnotations;
            this.f65663b = propertyConstants;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$c.class */
    public final /* synthetic */ class C19602c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f65664a;

        static {
            int[] iArr = new int[EnumC19875b.values().length];
            iArr[EnumC19875b.PROPERTY_GETTER.ordinal()] = 1;
            iArr[EnumC19875b.PROPERTY_SETTER.ordinal()] = 2;
            iArr[EnumC19875b.PROPERTY.ordinal()] = 3;
            f65664a = iArr;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$d.class */
    public static final class C19603d implements AbstractC19646o.AbstractC19650d {

        /* renamed from: a */
        final /* synthetic */ AbstractC19599a<A, C> f65665a;

        /* renamed from: b */
        final /* synthetic */ HashMap<C19654r, List<A>> f65666b;

        /* renamed from: c */
        final /* synthetic */ HashMap<C19654r, C> f65667c;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$d$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$d$a.class */
        public final class C19604a extends C19605b implements AbstractC19646o.AbstractC19651e {

            /* renamed from: a */
            final /* synthetic */ C19603d f65668a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19604a(C19603d this$0, C19654r signature) {
                super(this$0, signature);
                C18524p.m3840d(this$0, "this$0");
                C18524p.m3840d(signature, "signature");
                this.f65668a = this$0;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19651e
            /* renamed from: a */
            public final AbstractC19646o.AbstractC19647a mo1860a(int i, C18960a classId, AbstractC19026at source) {
                C18524p.m3840d(classId, "classId");
                C18524p.m3840d(source, "source");
                C19654r.C19655a c19655a = C19654r.f65764a;
                C19654r m1855a = C19654r.C19655a.m1855a(m1924a(), i);
                List<A> list = this.f65668a.f65666b.get(m1855a);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f65668a.f65666b.put(m1855a, arrayList);
                }
                return AbstractC19599a.m1951a(this.f65668a.f65665a, classId, source, arrayList);
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$d$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$d$b.class */
        public class C19605b implements AbstractC19646o.AbstractC19649c {

            /* renamed from: a */
            private final C19654r f65669a;

            /* renamed from: b */
            final /* synthetic */ C19603d f65670b;

            /* renamed from: c */
            private final ArrayList<A> f65671c = new ArrayList<>();

            public C19605b(C19603d this$0, C19654r signature) {
                C18524p.m3840d(this$0, "this$0");
                C18524p.m3840d(signature, "signature");
                this.f65670b = this$0;
                this.f65669a = signature;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19649c
            /* renamed from: a */
            public final AbstractC19646o.AbstractC19647a mo1864a(C18960a classId, AbstractC19026at source) {
                C18524p.m3840d(classId, "classId");
                C18524p.m3840d(source, "source");
                return AbstractC19599a.m1951a(this.f65670b.f65665a, classId, source, this.f65671c);
            }

            /* renamed from: a */
            protected final C19654r m1924a() {
                return this.f65669a;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19649c
            /* renamed from: b */
            public final void mo1863b() {
                if (!this.f65671c.isEmpty()) {
                    this.f65670b.f65666b.put(this.f65669a, this.f65671c);
                }
            }
        }

        C19603d(AbstractC19599a<A, C> abstractC19599a, HashMap<C19654r, List<A>> hashMap, HashMap<C19654r, C> hashMap2) {
            this.f65665a = abstractC19599a;
            this.f65666b = hashMap;
            this.f65667c = hashMap2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19650d
        /* renamed from: a */
        public final AbstractC19646o.AbstractC19651e mo1862a(C18966e name, String desc) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(desc, "desc");
            C19654r.C19655a c19655a = C19654r.f65764a;
            String m2721a = name.m2721a();
            C18524p.m3843b(m2721a, "name.asString()");
            return new C19604a(this, C19654r.C19655a.m1858a(m2721a, desc));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19650d
        /* renamed from: b */
        public final AbstractC19646o.AbstractC19649c mo1861b(C18966e name, String desc) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(desc, "desc");
            C19654r.C19655a c19655a = C19654r.f65764a;
            String m2721a = name.m2721a();
            C18524p.m3843b(m2721a, "name.asString()");
            return new C19605b(this, C19654r.C19655a.m1854b(m2721a, desc));
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$e.class */
    public static final class C19606e implements AbstractC19646o.AbstractC19649c {

        /* renamed from: a */
        final /* synthetic */ AbstractC19599a<A, C> f65672a;

        /* renamed from: b */
        final /* synthetic */ ArrayList<A> f65673b;

        C19606e(AbstractC19599a<A, C> abstractC19599a, ArrayList<A> arrayList) {
            this.f65672a = abstractC19599a;
            this.f65673b = arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19649c
        /* renamed from: a */
        public final AbstractC19646o.AbstractC19647a mo1864a(C18960a classId, AbstractC19026at source) {
            C18524p.m3840d(classId, "classId");
            C18524p.m3840d(source, "source");
            return AbstractC19599a.m1951a(this.f65672a, classId, source, this.f65673b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19649c
        /* renamed from: b */
        public final void mo1863b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.a$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/a$f.class */
    public static final class C19607f extends AbstractC18526r implements Function1<AbstractC19646o, C19601b<? extends A, ? extends C>> {

        /* renamed from: a */
        final /* synthetic */ AbstractC19599a<A, C> f65674a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19607f(AbstractC19599a<A, C> abstractC19599a) {
            super(1);
            this.f65674a = abstractC19599a;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Object invoke(AbstractC19646o abstractC19646o) {
            AbstractC19646o kotlinClass = abstractC19646o;
            C18524p.m3840d(kotlinClass, "kotlinClass");
            AbstractC19599a<A, C> abstractC19599a = this.f65674a;
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            C18524p.m3840d(kotlinClass, "kotlinClass");
            kotlinClass.mo1877a(new C19603d(abstractC19599a, hashMap, hashMap2));
            return new C19601b(hashMap, hashMap2);
        }
    }

    public AbstractC19599a(AbstractC19302n storageManager, AbstractC19641m kotlinClassFinder) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(kotlinClassFinder, "kotlinClassFinder");
        this.f65660a = kotlinClassFinder;
        this.f65661b = storageManager.mo2310a(new C19607f(this));
    }

    /* renamed from: a */
    private static /* synthetic */ List m1949a(AbstractC19599a abstractC19599a, AbstractC19972w abstractC19972w, C19654r c19654r, boolean z, Boolean bool, boolean z2, int i) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 16) != 0) {
            bool = null;
        }
        if ((i & 32) != 0) {
            z2 = false;
        }
        return abstractC19599a.m1945a(abstractC19972w, c19654r, z, false, bool, z2);
    }

    /* renamed from: a */
    private final List<A> m1947a(AbstractC19972w abstractC19972w, C18702a.C18754m c18754m, EnumC19600a enumC19600a) {
        Boolean mo3059b = C18808b.f64305z.mo3059b(c18754m.f64035b);
        C18524p.m3843b(mo3059b, "IS_CONST.get(proto.flags)");
        boolean booleanValue = mo3059b.booleanValue();
        C18859h c18859h = C18859h.f64440a;
        boolean m2920a = C18859h.m2920a(c18754m);
        if (enumC19600a == EnumC19600a.PROPERTY) {
            C19654r m1952a = m1952a(c18754m, abstractC19972w.f66320a, abstractC19972w.f66321b, false, true, false, 40);
            return m1952a == null ? C18297z.f63400a : m1949a((AbstractC19599a) this, abstractC19972w, m1952a, true, Boolean.valueOf(booleanValue), m2920a, 8);
        }
        C19654r m1952a2 = m1952a(c18754m, abstractC19972w.f66320a, abstractC19972w.f66321b, true, false, false, 48);
        if (m1952a2 == null) {
            return C18297z.f63400a;
        }
        boolean z = false;
        boolean c = C18425p.m3919c((CharSequence) m1952a2.f65765b, (CharSequence) "$delegate", false);
        if (enumC19600a == EnumC19600a.DELEGATE_FIELD) {
            z = true;
        }
        return c != z ? C18297z.f63400a : m1945a(abstractC19972w, m1952a2, true, true, Boolean.valueOf(booleanValue), m2920a);
    }

    /* renamed from: a */
    private final List<A> m1945a(AbstractC19972w abstractC19972w, C19654r c19654r, boolean z, boolean z2, Boolean bool, boolean z3) {
        AbstractC19646o m1946a = m1946a(abstractC19972w, m1944a(abstractC19972w, z, z2, bool, z3));
        if (m1946a == null) {
            return C18297z.f63400a;
        }
        List<A> list = this.f65661b.invoke(m1946a).f65662a.get(c19654r);
        C18297z c18297z = list;
        if (list == null) {
            c18297z = C18297z.f63400a;
        }
        return c18297z;
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC19646o.AbstractC19647a m1951a(AbstractC19599a abstractC19599a, C18960a c18960a, AbstractC19026at abstractC19026at, List list) {
        C18692a c18692a = C18692a.f63804a;
        if (C18692a.m3708a().contains(c18960a)) {
            return null;
        }
        return abstractC19599a.mo1921a(c18960a, abstractC19026at, list);
    }

    /* renamed from: a */
    private static AbstractC19646o m1946a(AbstractC19972w abstractC19972w, AbstractC19646o abstractC19646o) {
        if (abstractC19646o != null) {
            return abstractC19646o;
        }
        if (!(abstractC19972w instanceof AbstractC19972w.C19973a)) {
            return null;
        }
        return m1943b((AbstractC19972w.C19973a) abstractC19972w);
    }

    /* renamed from: a */
    private final AbstractC19646o m1944a(AbstractC19972w abstractC19972w, boolean z, boolean z2, Boolean bool, boolean z3) {
        AbstractC19972w.C19973a c19973a;
        if (z) {
            if (bool == null) {
                throw new IllegalStateException(("isConst should not be null for property (container=" + abstractC19972w + ')').toString());
            }
            if (abstractC19972w instanceof AbstractC19972w.C19973a) {
                AbstractC19972w.C19973a c19973a2 = (AbstractC19972w.C19973a) abstractC19972w;
                if (c19973a2.f66326g == C18702a.C18715b.EnumC18718b.INTERFACE) {
                    AbstractC19641m abstractC19641m = this.f65660a;
                    C18960a m2753a = c19973a2.f66325f.m2753a(C18966e.m2719a("DefaultImpls"));
                    C18524p.m3843b(m2753a, "container.classId.createNestedClassId(Name.identifier(JvmAbi.DEFAULT_IMPLS_CLASS_NAME))");
                    return C19645n.m1880a(abstractC19641m, m2753a);
                }
            }
            if (bool.booleanValue() && (abstractC19972w instanceof AbstractC19972w.C19974b)) {
                AbstractC19026at abstractC19026at = abstractC19972w.f66322c;
                C19632i c19632i = abstractC19026at instanceof C19632i ? (C19632i) abstractC19026at : null;
                C19766c c19766c = c19632i == null ? null : c19632i.f65735b;
                if (c19766c != null) {
                    AbstractC19641m abstractC19641m2 = this.f65660a;
                    String m1499c = c19766c.m1499c();
                    C18524p.m3843b(m1499c, "facadeClassName.internalName");
                    C18960a m2754a = C18960a.m2754a(new C18961b(C18425p.m3964a(m1499c, '/', '.', false)));
                    C18524p.m3843b(m2754a, "topLevel(FqName(facadeClassName.internalName.replace('/', '.')))");
                    return C19645n.m1880a(abstractC19641m2, m2754a);
                }
            }
        }
        if (z2 && (abstractC19972w instanceof AbstractC19972w.C19973a)) {
            AbstractC19972w.C19973a c19973a3 = (AbstractC19972w.C19973a) abstractC19972w;
            if (c19973a3.f66326g == C18702a.C18715b.EnumC18718b.COMPANION_OBJECT && (c19973a = c19973a3.f66324e) != null && (c19973a.f66326g == C18702a.C18715b.EnumC18718b.CLASS || c19973a.f66326g == C18702a.C18715b.EnumC18718b.ENUM_CLASS || (z3 && (c19973a.f66326g == C18702a.C18715b.EnumC18718b.INTERFACE || c19973a.f66326g == C18702a.C18715b.EnumC18718b.ANNOTATION_CLASS)))) {
                return m1943b(c19973a);
            }
        }
        if (!(abstractC19972w instanceof AbstractC19972w.C19974b) || !(abstractC19972w.f66322c instanceof C19632i)) {
            return null;
        }
        AbstractC19026at abstractC19026at2 = abstractC19972w.f66322c;
        Objects.requireNonNull(abstractC19026at2, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource");
        C19632i c19632i2 = (C19632i) abstractC19026at2;
        AbstractC19646o abstractC19646o = c19632i2.f65736c;
        return abstractC19646o == null ? C19645n.m1880a(this.f65660a, c19632i2.m1901d()) : abstractC19646o;
    }

    /* renamed from: a */
    private static C19654r m1953a(C18702a.C18754m c18754m, AbstractC18813c abstractC18813c, C18818g c18818g, boolean z, boolean z2, boolean z3) {
        AbstractC19683h.C19690e<C18702a.C18754m, C18827a.C18835c> propertySignature = C18827a.f64331d;
        C18524p.m3843b(propertySignature, "propertySignature");
        C18827a.C18835c c18835c = (C18827a.C18835c) C18816e.m3057a(c18754m, propertySignature);
        if (c18835c == null) {
            return null;
        }
        if (z) {
            C18859h c18859h = C18859h.f64440a;
            AbstractC18851e.C18852a m2919a = C18859h.m2919a(c18754m, abstractC18813c, c18818g, z3);
            if (m2919a == null) {
                return null;
            }
            C19654r.C19655a c19655a = C19654r.f65764a;
            return C19654r.C19655a.m1856a(m2919a);
        } else if (!z2 || !c18835c.m2988d()) {
            return null;
        } else {
            C19654r.C19655a c19655a2 = C19654r.f65764a;
            C18827a.C18832b c18832b = c18835c.f64367c;
            C18524p.m3843b(c18832b, "signature.syntheticMethod");
            return C19654r.C19655a.m1857a(abstractC18813c, c18832b);
        }
    }

    /* renamed from: a */
    private static /* synthetic */ C19654r m1952a(C18702a.C18754m c18754m, AbstractC18813c abstractC18813c, C18818g c18818g, boolean z, boolean z2, boolean z3, int i) {
        if ((i & 8) != 0) {
            z = false;
        }
        if ((i & 16) != 0) {
            z2 = false;
        }
        if ((i & 32) != 0) {
            z3 = true;
        }
        return m1953a(c18754m, abstractC18813c, c18818g, z, z2, z3);
    }

    /* renamed from: a */
    public static C19654r m1948a(AbstractC19705p abstractC19705p, AbstractC18813c abstractC18813c, C18818g c18818g, EnumC19875b enumC19875b, boolean z) {
        if (abstractC19705p instanceof C18702a.C18720c) {
            C19654r.C19655a c19655a = C19654r.f65764a;
            C18859h c18859h = C18859h.f64440a;
            AbstractC18851e.C18853b m2922a = C18859h.m2922a((C18702a.C18720c) abstractC19705p, abstractC18813c, c18818g);
            if (m2922a != null) {
                return C19654r.C19655a.m1856a(m2922a);
            }
            return null;
        } else if (abstractC19705p instanceof C18702a.C18741h) {
            C19654r.C19655a c19655a2 = C19654r.f65764a;
            C18859h c18859h2 = C18859h.f64440a;
            AbstractC18851e.C18853b m2921a = C18859h.m2921a((C18702a.C18741h) abstractC19705p, abstractC18813c, c18818g);
            if (m2921a != null) {
                return C19654r.C19655a.m1856a(m2921a);
            }
            return null;
        } else if (!(abstractC19705p instanceof C18702a.C18754m)) {
            return null;
        } else {
            AbstractC19683h.C19690e<C18702a.C18754m, C18827a.C18835c> propertySignature = C18827a.f64331d;
            C18524p.m3843b(propertySignature, "propertySignature");
            C18827a.C18835c c18835c = (C18827a.C18835c) C18816e.m3057a((AbstractC19683h.AbstractC19687c) abstractC19705p, propertySignature);
            if (c18835c == null) {
                return null;
            }
            int i = C19602c.f65664a[enumC19875b.ordinal()];
            if (i == 1) {
                if (!c18835c.m2987g()) {
                    return null;
                }
                C19654r.C19655a c19655a3 = C19654r.f65764a;
                C18827a.C18832b c18832b = c18835c.f64368d;
                C18524p.m3843b(c18832b, "signature.getter");
                return C19654r.C19655a.m1857a(abstractC18813c, c18832b);
            } else if (i != 2) {
                if (i == 3) {
                    return m1953a((C18702a.C18754m) abstractC19705p, abstractC18813c, c18818g, true, true, z);
                }
                return null;
            } else if (!c18835c.m2986k()) {
                return null;
            } else {
                C19654r.C19655a c19655a4 = C19654r.f65764a;
                C18827a.C18832b c18832b2 = c18835c.f64369e;
                C18524p.m3843b(c18832b2, "signature.setter");
                return C19654r.C19655a.m1857a(abstractC18813c, c18832b2);
            }
        }
    }

    /* renamed from: b */
    private static AbstractC19646o m1943b(AbstractC19972w.C19973a c19973a) {
        AbstractC19026at abstractC19026at = c19973a.f66322c;
        C19653q c19653q = abstractC19026at instanceof C19653q ? (C19653q) abstractC19026at : null;
        if (c19653q == null) {
            return null;
        }
        return c19653q.f65760b;
    }

    /* renamed from: a */
    protected abstract C mo1923a(C c);

    /* renamed from: a */
    protected abstract A mo1922a(C18702a.C18704a c18704a, AbstractC18813c abstractC18813c);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final C mo1359a(AbstractC19972w container, C18702a.C18754m proto, KotlinType expectedType) {
        C18854f c18854f;
        C c;
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(expectedType, "expectedType");
        Boolean mo3059b = C18808b.f64305z.mo3059b(proto.f64035b);
        C18859h c18859h = C18859h.f64440a;
        AbstractC19646o m1946a = m1946a(container, m1944a(container, true, true, mo3059b, C18859h.m2920a(proto)));
        if (m1946a == null) {
            return null;
        }
        C18854f c18854f2 = m1946a.mo1879a().f65676b;
        C19626e.C19627a c19627a = C19626e.f65721a;
        c18854f = C19626e.f65726g;
        C18854f version = c18854f;
        C18524p.m3840d(version, "version");
        C19654r m1948a = m1948a(proto, container.f66320a, container.f66321b, EnumC19875b.PROPERTY, c18854f2.m3071a(version.f64263e, version.f64264f, version.f64265g));
        if (m1948a == null || (c = this.f65661b.invoke(m1946a).f65663b.get(m1948a)) == null) {
            return null;
        }
        C18959n c18959n = C18959n.f64674a;
        C c2 = c;
        if (C18959n.m2759a(expectedType)) {
            c2 = mo1923a((AbstractC19599a<A, C>) c);
        }
        return c2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<A> mo1364a(C18702a.C18768p proto, AbstractC18813c nameResolver) {
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        Object c = proto.m1690c(C18827a.f64333f);
        C18524p.m3843b(c, "proto.getExtension(JvmProtoBuf.typeAnnotation)");
        Iterable<C18702a.C18704a> iterable = (Iterable) c;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(iterable, 10));
        for (C18702a.C18704a it2 : iterable) {
            C18524p.m3843b(it2, "it");
            arrayList.add(mo1922a(it2, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<A> mo1363a(C18702a.C18779r proto, AbstractC18813c nameResolver) {
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        Object c = proto.m1690c(C18827a.f64335h);
        C18524p.m3843b(c, "proto.getExtension(JvmProtoBuf.typeParameterAnnotation)");
        Iterable<C18702a.C18704a> iterable = (Iterable) c;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(iterable, 10));
        for (C18702a.C18704a it2 : iterable) {
            C18524p.m3843b(it2, "it");
            arrayList.add(mo1922a(it2, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<A> mo1362a(AbstractC19972w.C19973a container) {
        C18524p.m3840d(container, "container");
        AbstractC19646o kotlinClass = m1943b(container);
        if (kotlinClass != null) {
            ArrayList arrayList = new ArrayList(1);
            C18524p.m3840d(kotlinClass, "kotlinClass");
            kotlinClass.mo1878a(new C19606e(this, arrayList));
            return arrayList;
        }
        throw new IllegalStateException(C18524p.m3847a("Class for loading annotations is not found: ", (Object) container.mo1226a()).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<A> mo1361a(AbstractC19972w container, C18702a.C18733f proto) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        C19654r.C19655a c19655a = C19654r.f65764a;
        String mo2927a = container.f66320a.mo2927a(proto.f63942b);
        C18847b c18847b = C18847b.f64413a;
        String m2747g = ((AbstractC19972w.C19973a) container).f66325f.m2747g();
        C18524p.m3843b(m2747g, "container as ProtoContainer.Class).classId.asString()");
        return m1949a((AbstractC19599a) this, container, C19654r.C19655a.m1854b(mo2927a, C18847b.m3014a(m2747g)), false, (Boolean) null, false, 60);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<A> mo1360a(AbstractC19972w container, C18702a.C18754m proto) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        return m1947a(container, proto, EnumC19600a.BACKING_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    public final List<A> mo1358a(AbstractC19972w container, AbstractC19705p proto, EnumC19875b kind) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(kind, "kind");
        if (kind == EnumC19875b.PROPERTY) {
            return m1947a(container, (C18702a.C18754m) proto, EnumC19600a.PROPERTY);
        }
        C19654r m1948a = m1948a(proto, container.f66320a, container.f66321b, kind, false);
        return m1948a == null ? C18297z.f63400a : m1949a((AbstractC19599a) this, container, m1948a, false, (Boolean) null, false, 60);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x005f, code lost:
        if (kotlin.reflect.jvm.internal.impl.p539b.p541b.C18817f.m3053a((kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18754m) r10) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0085, code lost:
        if (r0.f66327h != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0045, code lost:
        if (kotlin.reflect.jvm.internal.impl.p539b.p541b.C18817f.m3055a((kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18741h) r10) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004b, code lost:
        r15 = 0;
     */
    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<A> mo1357a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19972w r9, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p r10, kotlin.reflect.jvm.internal.impl.serialization.deserialization.EnumC19875b r11, int r12, kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18787t r13) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r1 = "container"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r10
            java.lang.String r1 = "callableProto"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r11
            java.lang.String r1 = "kind"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r13
            java.lang.String r1 = "proto"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r8
            r1 = r10
            r2 = r9
            kotlin.reflect.jvm.internal.impl.b.b.c r2 = r2.f66320a
            r3 = r9
            kotlin.reflect.jvm.internal.impl.b.b.g r3 = r3.f66321b
            r4 = r11
            kotlin.reflect.jvm.internal.impl.load.kotlin.r r0 = m1950a(r0, r1, r2, r3, r4)
            r11 = r0
            r0 = r11
            if (r0 == 0) goto Lb2
            r0 = r10
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18741h
            r14 = r0
            r0 = 1
            r15 = r0
            r0 = r14
            if (r0 == 0) goto L51
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$h r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18741h) r0
            boolean r0 = kotlin.reflect.jvm.internal.impl.p539b.p541b.C18817f.m3055a(r0)
            if (r0 == 0) goto L4b
            goto L88
        L4b:
            r0 = 0
            r15 = r0
            goto L88
        L51:
            r0 = r10
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18754m
            if (r0 == 0) goto L65
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$m r0 = (kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18754m) r0
            boolean r0 = kotlin.reflect.jvm.internal.impl.p539b.p541b.C18817f.m3053a(r0)
            if (r0 == 0) goto L4b
            goto L88
        L65:
            r0 = r10
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18720c
            if (r0 == 0) goto La0
            r0 = r9
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.w$a r0 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19972w.C19973a) r0
            r10 = r0
            r0 = r10
            kotlin.reflect.jvm.internal.impl.b.a$b$b r0 = r0.f66326g
            kotlin.reflect.jvm.internal.impl.b.a$b$b r1 = kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18715b.EnumC18718b.ENUM_CLASS
            if (r0 != r1) goto L81
            r0 = 2
            r15 = r0
            goto L88
        L81:
            r0 = r10
            boolean r0 = r0.f66327h
            if (r0 == 0) goto L4b
        L88:
            kotlin.reflect.jvm.internal.impl.load.kotlin.r$a r0 = kotlin.reflect.jvm.internal.impl.load.kotlin.C19654r.f65764a
            r10 = r0
            r0 = r8
            r1 = r9
            r2 = r11
            r3 = r12
            r4 = r15
            int r3 = r3 + r4
            kotlin.reflect.jvm.internal.impl.load.kotlin.r r2 = kotlin.reflect.jvm.internal.impl.load.kotlin.C19654r.C19655a.m1855a(r2, r3)
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 60
            java.util.List r0 = m1949a(r0, r1, r2, r3, r4, r5, r6)
            return r0
        La0:
            java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
            r1 = r0
            java.lang.String r2 = "Unsupported message: "
            r3 = r10
            java.lang.Class r3 = r3.getClass()
            java.lang.String r2 = kotlin.jvm.internal.C18524p.m3847a(r2, r3)
            r1.<init>(r2)
            throw r0
        Lb2:
            kotlin.a.z r0 = kotlin.p518a.C18297z.f63400a
            java.util.List r0 = (java.util.List) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19599a.mo1357a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.w, kotlin.reflect.jvm.internal.impl.protobuf.p, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b, int, kotlin.reflect.jvm.internal.impl.b.a$t):java.util.List");
    }

    /* renamed from: a */
    protected abstract AbstractC19646o.AbstractC19647a mo1921a(C18960a c18960a, AbstractC19026at abstractC19026at, List<A> list);

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: b */
    public final List<A> mo1356b(AbstractC19972w container, C18702a.C18754m proto) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        return m1947a(container, proto, EnumC19600a.DELEGATE_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19881c
    /* renamed from: b */
    public final List<A> mo1355b(AbstractC19972w container, AbstractC19705p proto, EnumC19875b kind) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(kind, "kind");
        C19654r m1948a = m1948a(proto, container.f66320a, container.f66321b, kind, false);
        if (m1948a != null) {
            C19654r.C19655a c19655a = C19654r.f65764a;
            return m1949a((AbstractC19599a) this, container, C19654r.C19655a.m1855a(m1948a, 0), false, (Boolean) null, false, 60);
        }
        return C18297z.f63400a;
    }
}
