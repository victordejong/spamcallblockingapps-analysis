package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.AbstractC18534z;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p520b.C18299a;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.builtins.C18929f;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19172m;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19189x;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19190y;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18817f;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18819h;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19972w;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19903c;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19907g;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19902b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19904d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19933j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19934k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19935l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19936m;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.t */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t.class */
public final class C19963t {

    /* renamed from: a */
    private final C19949k f66295a;

    /* renamed from: b */
    private final C19937e f66296b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.t$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$a.class */
    public final /* synthetic */ class C19964a extends AbstractC18534z {

        /* renamed from: a */
        public static final C19964a f66297a = new C19964a();

        /* synthetic */ C19964a() {
        }

        @Override // kotlin.reflect.AbstractC20107m
        /* renamed from: a */
        public final Object mo1114a(Object obj) {
            return Boolean.valueOf(C18929f.m2856b((KotlinType) obj));
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "isSuspendFunctionType";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3889a(C18929f.class, "deserialization");
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "isSuspendFunctionType(Lorg/jetbrains/kotlin/types/KotlinType;)Z";
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.t$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$b.class */
    public static final class C19965b extends AbstractC18526r implements Function0<List<? extends AbstractC18977c>> {

        /* renamed from: b */
        final /* synthetic */ AbstractC19705p f66299b;

        /* renamed from: c */
        final /* synthetic */ EnumC19875b f66300c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19965b(AbstractC19705p abstractC19705p, EnumC19875b enumC19875b) {
            super(0);
            C19963t.this = r4;
            this.f66299b = abstractC19705p;
            this.f66300c = enumC19875b;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC18977c> invoke() {
            List<? extends AbstractC18977c> list;
            C19963t c19963t = C19963t.this;
            AbstractC19972w m1240a = c19963t.m1240a(c19963t.f66295a.f66271c);
            if (m1240a == null) {
                list = null;
            } else {
                list = C18282n.m4118h((Iterable) C19963t.this.f66295a.f66269a.f66253e.mo1358a(m1240a, this.f66299b, this.f66300c));
            }
            C18297z c18297z = list;
            if (list == null) {
                c18297z = C18297z.f63400a;
            }
            return c18297z;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.t$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$c.class */
    public static final class C19966c extends AbstractC18526r implements Function0<List<? extends AbstractC18977c>> {

        /* renamed from: b */
        final /* synthetic */ boolean f66302b;

        /* renamed from: c */
        final /* synthetic */ C18702a.C18754m f66303c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19966c(boolean z, C18702a.C18754m c18754m) {
            super(0);
            C19963t.this = r4;
            this.f66302b = z;
            this.f66303c = c18754m;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC18977c> invoke() {
            List<? extends AbstractC18977c> list;
            C19963t c19963t = C19963t.this;
            AbstractC19972w m1240a = c19963t.m1240a(c19963t.f66295a.f66271c);
            if (m1240a == null) {
                list = null;
            } else {
                boolean z = this.f66302b;
                C19963t c19963t2 = C19963t.this;
                C18702a.C18754m c18754m = this.f66303c;
                list = z ? C18282n.m4118h((Iterable) c19963t2.f66295a.f66269a.f66253e.mo1356b(m1240a, c18754m)) : C18282n.m4118h((Iterable) c19963t2.f66295a.f66269a.f66253e.mo1360a(m1240a, c18754m));
            }
            C18297z c18297z = list;
            if (list == null) {
                c18297z = C18297z.f63400a;
            }
            return c18297z;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.t$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$d.class */
    public static final class C19967d extends AbstractC18526r implements Function0<List<? extends AbstractC18977c>> {

        /* renamed from: b */
        final /* synthetic */ AbstractC19705p f66305b;

        /* renamed from: c */
        final /* synthetic */ EnumC19875b f66306c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19967d(AbstractC19705p abstractC19705p, EnumC19875b enumC19875b) {
            super(0);
            C19963t.this = r4;
            this.f66305b = abstractC19705p;
            this.f66306c = enumC19875b;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC18977c> invoke() {
            List<AbstractC18977c> list;
            C19963t c19963t = C19963t.this;
            AbstractC19972w m1240a = c19963t.m1240a(c19963t.f66295a.f66271c);
            if (m1240a == null) {
                list = null;
            } else {
                list = C19963t.this.f66295a.f66269a.f66253e.mo1355b(m1240a, this.f66305b, this.f66306c);
            }
            List<AbstractC18977c> list2 = list;
            if (list == null) {
                list2 = C18297z.f63400a;
            }
            return list2;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.t$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e.class */
    public static final class C19968e extends AbstractC18526r implements Function0<AbstractC19781g<?>> {

        /* renamed from: b */
        final /* synthetic */ C18702a.C18754m f66308b;

        /* renamed from: c */
        final /* synthetic */ C19933j f66309c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19968e(C18702a.C18754m c18754m, C19933j c19933j) {
            super(0);
            C19963t.this = r4;
            this.f66308b = c18754m;
            this.f66309c = c19933j;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19781g<?> invoke() {
            C19963t c19963t = C19963t.this;
            AbstractC19972w m1240a = c19963t.m1240a(c19963t.f66295a.f66271c);
            C18524p.m3851a(m1240a);
            AbstractC19881c<AbstractC18977c, AbstractC19781g<?>> abstractC19881c = C19963t.this.f66295a.f66269a.f66253e;
            C18702a.C18754m c18754m = this.f66308b;
            KotlinType returnType = this.f66309c.getReturnType();
            C18524p.m3843b(returnType, "property.returnType");
            return abstractC19881c.mo1359a(m1240a, c18754m, returnType);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.t$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f.class */
    public static final class C19969f extends AbstractC18526r implements Function0<List<? extends AbstractC18977c>> {

        /* renamed from: b */
        final /* synthetic */ AbstractC19972w f66311b;

        /* renamed from: c */
        final /* synthetic */ AbstractC19705p f66312c;

        /* renamed from: d */
        final /* synthetic */ EnumC19875b f66313d;

        /* renamed from: e */
        final /* synthetic */ int f66314e;

        /* renamed from: f */
        final /* synthetic */ C18702a.C18787t f66315f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19969f(AbstractC19972w abstractC19972w, AbstractC19705p abstractC19705p, EnumC19875b enumC19875b, int i, C18702a.C18787t c18787t) {
            super(0);
            C19963t.this = r4;
            this.f66311b = abstractC19972w;
            this.f66312c = abstractC19705p;
            this.f66313d = enumC19875b;
            this.f66314e = i;
            this.f66315f = c18787t;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC18977c> invoke() {
            return C18282n.m4118h((Iterable) C19963t.this.f66295a.f66269a.f66253e.mo1357a(this.f66311b, this.f66312c, this.f66313d, this.f66314e, this.f66315f));
        }
    }

    public C19963t(C19949k c) {
        C18524p.m3840d(c, "c");
        this.f66295a = c;
        this.f66296b = new C19937e(c.f66269a.f66250b, c.f66269a.f66260l);
    }

    /* renamed from: a */
    private static int m1247a(int i) {
        return (i & 63) + ((i >> 8) << 6);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x015d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba> m1246a(java.util.List<kotlin.reflect.jvm.internal.impl.p539b.C18702a.C18787t> r16, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p r17, kotlin.reflect.jvm.internal.impl.serialization.deserialization.EnumC19875b r18) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19963t.m1246a(java.util.List, kotlin.reflect.jvm.internal.impl.protobuf.p, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b):java.util.List");
    }

    /* renamed from: a */
    private final AbstractC18983g m1242a(C18702a.C18754m c18754m, boolean z) {
        if (!C18808b.f64281b.mo3059b(c18754m.f64035b).booleanValue()) {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            return AbstractC18983g.C18984a.m2705a();
        }
        return new C19936m(this.f66295a.f66269a.f66249a, new C19966c(z, c18754m));
    }

    /* renamed from: a */
    private final AbstractC18983g m1239a(AbstractC19705p abstractC19705p, int i, EnumC19875b enumC19875b) {
        if (!C18808b.f64281b.mo3059b(i).booleanValue()) {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            return AbstractC18983g.C18984a.m2705a();
        }
        return new C19936m(this.f66295a.f66269a.f66249a, new C19965b(abstractC19705p, enumC19875b));
    }

    /* renamed from: a */
    private final AbstractC18983g m1238a(AbstractC19705p abstractC19705p, EnumC19875b enumC19875b) {
        return new C19902b(this.f66295a.f66269a.f66249a, new C19967d(abstractC19705p, enumC19875b));
    }

    /* renamed from: a */
    private final AbstractC19020aq m1248a() {
        AbstractC19193k abstractC19193k = this.f66295a.f66271c;
        AbstractC19070d abstractC19070d = abstractC19193k instanceof AbstractC19070d ? (AbstractC19070d) abstractC19193k : null;
        if (abstractC19070d == null) {
            return null;
        }
        return abstractC19070d.getThisAsReceiverParameter();
    }

    /* renamed from: a */
    private final AbstractC19907g.EnumC19908a m1236a(AbstractC19903c abstractC19903c, AbstractC19020aq abstractC19020aq, Collection<? extends AbstractC19050ba> collection, Collection<? extends TypeParameterDescriptor> collection2, KotlinType kotlinType, boolean z) {
        boolean z2;
        AbstractC19907g.EnumC19908a enumC19908a;
        boolean z3;
        boolean z4;
        if (m1235a((AbstractC19907g) abstractC19903c) && !C18524p.m3850a(C19756a.m1524f(abstractC19903c), C19979z.f66341a)) {
            Collection<? extends AbstractC19050ba> collection3 = collection;
            ArrayList arrayList = new ArrayList(C18282n.m4163a(collection3, 10));
            for (AbstractC19050ba abstractC19050ba : collection3) {
                arrayList.add(abstractC19050ba.mo2593g());
            }
            List b = C18282n.m4135b((Collection) arrayList, (Iterable) C18282n.m4169b(abstractC19020aq == null ? null : abstractC19020aq.mo2593g()));
            if (C18524p.m3850a(kotlinType == null ? null : Boolean.valueOf(m1230a(kotlinType)), Boolean.TRUE)) {
                return AbstractC19907g.EnumC19908a.INCOMPATIBLE;
            }
            Collection<? extends TypeParameterDescriptor> collection4 = collection2;
            if (!(collection4 instanceof Collection) || !collection4.isEmpty()) {
                for (TypeParameterDescriptor typeParameterDescriptor : collection4) {
                    List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
                    C18524p.m3843b(upperBounds, "typeParameter.upperBounds");
                    List<KotlinType> list = upperBounds;
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        for (KotlinType it2 : list) {
                            C18524p.m3843b(it2, "it");
                            if (m1230a(it2)) {
                                z4 = true;
                                break;
                            }
                        }
                    }
                    z4 = false;
                    if (z4) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                return AbstractC19907g.EnumC19908a.INCOMPATIBLE;
            }
            List<KotlinType> list2 = b;
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
            for (KotlinType type : list2) {
                C18524p.m3843b(type, "type");
                if (!C18929f.m2856b(type) || type.getArguments().size() > 3) {
                    enumC19908a = m1230a(type) ? AbstractC19907g.EnumC19908a.INCOMPATIBLE : AbstractC19907g.EnumC19908a.COMPATIBLE;
                } else {
                    List<TypeProjection> arguments = type.getArguments();
                    if (!(arguments instanceof Collection) || !arguments.isEmpty()) {
                        for (TypeProjection typeProjection : arguments) {
                            KotlinType type2 = typeProjection.getType();
                            C18524p.m3843b(type2, "it.type");
                            if (m1230a(type2)) {
                                z3 = true;
                                break;
                            }
                        }
                    }
                    z3 = false;
                    enumC19908a = z3 ? AbstractC19907g.EnumC19908a.INCOMPATIBLE : AbstractC19907g.EnumC19908a.NEEDS_WRAPPER;
                }
                arrayList2.add(enumC19908a);
            }
            AbstractC19907g.EnumC19908a enumC19908a2 = (AbstractC19907g.EnumC19908a) C18282n.m4108n(arrayList2);
            AbstractC19907g.EnumC19908a enumC19908a3 = enumC19908a2;
            if (enumC19908a2 == null) {
                enumC19908a3 = AbstractC19907g.EnumC19908a.COMPATIBLE;
            }
            return (AbstractC19907g.EnumC19908a) C18299a.m4102b(z ? AbstractC19907g.EnumC19908a.NEEDS_WRAPPER : AbstractC19907g.EnumC19908a.COMPATIBLE, enumC19908a3);
        }
        return AbstractC19907g.EnumC19908a.COMPATIBLE;
    }

    /* renamed from: a */
    private final AbstractC19907g.EnumC19908a m1234a(AbstractC19907g abstractC19907g, C19868aa c19868aa) {
        if (!m1235a(abstractC19907g)) {
            return AbstractC19907g.EnumC19908a.COMPATIBLE;
        }
        m1237a(c19868aa);
        return c19868aa.f66080b ? AbstractC19907g.EnumC19908a.INCOMPATIBLE : AbstractC19907g.EnumC19908a.COMPATIBLE;
    }

    /* renamed from: a */
    public final AbstractC19972w m1240a(AbstractC19193k abstractC19193k) {
        if (abstractC19193k instanceof AbstractC19006ae) {
            return new AbstractC19972w.C19974b(((AbstractC19006ae) abstractC19193k).mo2542c(), this.f66295a.f66270b, this.f66295a.f66272d, this.f66295a.f66274f);
        }
        if (!(abstractC19193k instanceof DeserializedClassDescriptor)) {
            return null;
        }
        return ((DeserializedClassDescriptor) abstractC19193k).f66104d;
    }

    /* renamed from: a */
    private static void m1237a(C19868aa c19868aa) {
        for (TypeParameterDescriptor typeParameterDescriptor : c19868aa.m1382a()) {
            typeParameterDescriptor.getUpperBounds();
        }
    }

    /* renamed from: a */
    private final void m1233a(C19934k c19934k, AbstractC19020aq abstractC19020aq, AbstractC19020aq abstractC19020aq2, List<? extends TypeParameterDescriptor> list, List<? extends AbstractC19050ba> list2, KotlinType kotlinType, EnumC19222y enumC19222y, AbstractC19213s abstractC19213s, Map<? extends AbstractC18973a.AbstractC18974a<?>, ?> map, boolean z) {
        c19934k.m1285a(abstractC19020aq, abstractC19020aq2, list, list2, kotlinType, enumC19222y, abstractC19213s, map, m1236a(c19934k, abstractC19020aq, list2, list, kotlinType, z));
    }

    /* renamed from: a */
    private final boolean m1235a(AbstractC19907g abstractC19907g) {
        boolean z;
        if (this.f66295a.f66269a.f66251c.getReleaseCoroutines()) {
            List<C18819h> aq_ = abstractC19907g.aq_();
            if (!(aq_ instanceof Collection) || !aq_.isEmpty()) {
                for (C18819h c18819h : aq_) {
                    if (C18524p.m3850a(c18819h.f64314b, new C18819h.C18822b(1, 3, 0, 4, null)) && c18819h.f64315c == C18702a.C18790u.EnumC18795c.LANGUAGE_VERSION) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            return z;
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m1230a(KotlinType kotlinType) {
        return TypeUtilsKt.contains(kotlinType, C19964a.f66297a);
    }

    /* renamed from: a */
    public final AbstractC19017an m1243a(C18702a.C18754m proto) {
        C19949k m1259a;
        AbstractC18983g abstractC18983g;
        C19189x c19189x;
        C19949k m1259a2;
        C19189x c19189x2;
        KotlinType m1380a;
        C18524p.m3840d(proto, "proto");
        int m1247a = proto.m3367c() ? proto.f64035b : m1247a(proto.f64036c);
        AbstractC19193k abstractC19193k = this.f66295a.f66271c;
        C18702a.C18754m c18754m = proto;
        AbstractC18983g m1239a = m1239a(c18754m, m1247a, EnumC19875b.PROPERTY);
        C19975x c19975x = C19975x.f66329a;
        EnumC19222y m1224a = C19975x.m1224a(C18808b.f64283d.mo3059b(m1247a));
        AbstractC19213s m1220a = C19977y.m1220a(C19975x.f66329a, C18808b.f64282c.mo3059b(m1247a));
        Boolean mo3059b = C18808b.f64302w.mo3059b(m1247a);
        C18524p.m3843b(mo3059b, "IS_VAR.get(flags)");
        boolean booleanValue = mo3059b.booleanValue();
        C18966e m1228b = C19970u.m1228b(this.f66295a.f66270b, proto.f64037d);
        AbstractC19039b.EnumC19040a m1221a = C19977y.m1221a(C19975x.f66329a, C18808b.f64293n.mo3059b(m1247a));
        Boolean mo3059b2 = C18808b.f64266A.mo3059b(m1247a);
        C18524p.m3843b(mo3059b2, "IS_LATEINIT.get(flags)");
        boolean booleanValue2 = mo3059b2.booleanValue();
        Boolean mo3059b3 = C18808b.f64305z.mo3059b(m1247a);
        C18524p.m3843b(mo3059b3, "IS_CONST.get(flags)");
        boolean booleanValue3 = mo3059b3.booleanValue();
        Boolean mo3059b4 = C18808b.f64268C.mo3059b(m1247a);
        C18524p.m3843b(mo3059b4, "IS_EXTERNAL_PROPERTY.get(flags)");
        boolean booleanValue4 = mo3059b4.booleanValue();
        Boolean mo3059b5 = C18808b.f64269D.mo3059b(m1247a);
        C18524p.m3843b(mo3059b5, "IS_DELEGATED.get(flags)");
        boolean booleanValue5 = mo3059b5.booleanValue();
        Boolean mo3059b6 = C18808b.f64270E.mo3059b(m1247a);
        C18524p.m3843b(mo3059b6, "IS_EXPECT_PROPERTY.get(flags)");
        C19933j c19933j = new C19933j(abstractC19193k, null, m1239a, m1224a, m1220a, booleanValue, m1228b, m1221a, booleanValue2, booleanValue3, booleanValue4, booleanValue5, mo3059b6.booleanValue(), proto, this.f66295a.f66270b, this.f66295a.f66272d, this.f66295a.f66273e, this.f66295a.f66274f);
        C19949k c19949k = this.f66295a;
        C19933j c19933j2 = c19933j;
        List<C18702a.C18779r> list = proto.f64040g;
        C18524p.m3843b(list, "proto.typeParameterList");
        m1259a = c19949k.m1259a(c19933j2, list, c19949k.f66270b, c19949k.f66272d, c19949k.f66273e, c19949k.f66277i);
        Boolean mo3059b7 = C18808b.f64303x.mo3059b(m1247a);
        C18524p.m3843b(mo3059b7, "HAS_GETTER.get(flags)");
        boolean booleanValue6 = mo3059b7.booleanValue();
        if (!booleanValue6 || !C18817f.m3053a(proto)) {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            abstractC18983g = AbstractC18983g.C18984a.m2705a();
        } else {
            abstractC18983g = m1238a(c18754m, EnumC19875b.PROPERTY_GETTER);
        }
        KotlinType m1380a2 = m1259a.f66275g.m1380a(C18817f.m3052a(proto, this.f66295a.f66272d));
        List<TypeParameterDescriptor> m1382a = m1259a.f66275g.m1382a();
        AbstractC19020aq m1248a = m1248a();
        C18702a.C18768p m3047b = C18817f.m3047b(proto, this.f66295a.f66272d);
        c19933j.m2627a(m1380a2, m1382a, m1248a, (m3047b == null || (m1380a = m1259a.f66275g.m1380a(m3047b)) == null) ? null : C19762c.m1522a(c19933j, m1380a, abstractC18983g));
        Boolean mo3059b8 = C18808b.f64281b.mo3059b(m1247a);
        C18524p.m3843b(mo3059b8, "HAS_ANNOTATIONS.get(flags)");
        int m3068a = C18808b.m3068a(mo3059b8.booleanValue(), C18808b.f64282c.mo3059b(m1247a), C18808b.f64283d.mo3059b(m1247a));
        if (booleanValue6) {
            int i = proto.m3352p() ? proto.f64044k : m3068a;
            Boolean mo3059b9 = C18808b.f64274I.mo3059b(i);
            C18524p.m3843b(mo3059b9, "IS_NOT_DEFAULT.get(getterFlags)");
            boolean booleanValue7 = mo3059b9.booleanValue();
            Boolean mo3059b10 = C18808b.f64275J.mo3059b(i);
            C18524p.m3843b(mo3059b10, "IS_EXTERNAL_ACCESSOR.get(getterFlags)");
            boolean booleanValue8 = mo3059b10.booleanValue();
            Boolean mo3059b11 = C18808b.f64276K.mo3059b(i);
            C18524p.m3843b(mo3059b11, "IS_INLINE_ACCESSOR.get(getterFlags)");
            boolean booleanValue9 = mo3059b11.booleanValue();
            AbstractC18983g m1239a2 = m1239a(c18754m, i, EnumC19875b.PROPERTY_GETTER);
            if (booleanValue7) {
                C19933j c19933j3 = c19933j;
                C19975x c19975x2 = C19975x.f66329a;
                c19189x2 = new C19189x(c19933j3, m1239a2, C19975x.m1224a(C18808b.f64283d.mo3059b(i)), C19977y.m1220a(C19975x.f66329a, C18808b.f64282c.mo3059b(i)), !booleanValue7, booleanValue8, booleanValue9, c19933j.getKind(), null, AbstractC19026at.f64759a);
            } else {
                c19189x2 = C19762c.m1521a(c19933j, m1239a2);
                C18524p.m3843b(c19189x2, "{\n                DescriptorFactory.createDefaultGetter(property, annotations)\n            }");
            }
            c19189x2.m2536a(c19933j.getReturnType());
            c19189x = c19189x2;
        } else {
            c19189x = null;
        }
        Boolean mo3059b12 = C18808b.f64304y.mo3059b(m1247a);
        C18524p.m3843b(mo3059b12, "HAS_SETTER.get(flags)");
        C19190y c19190y = null;
        if (mo3059b12.booleanValue()) {
            if (proto.m3351q()) {
                m3068a = proto.f64045l;
            }
            Boolean mo3059b13 = C18808b.f64274I.mo3059b(m3068a);
            C18524p.m3843b(mo3059b13, "IS_NOT_DEFAULT.get(setterFlags)");
            boolean booleanValue10 = mo3059b13.booleanValue();
            Boolean mo3059b14 = C18808b.f64275J.mo3059b(m3068a);
            C18524p.m3843b(mo3059b14, "IS_EXTERNAL_ACCESSOR.get(setterFlags)");
            boolean booleanValue11 = mo3059b14.booleanValue();
            Boolean mo3059b15 = C18808b.f64276K.mo3059b(m3068a);
            C18524p.m3843b(mo3059b15, "IS_INLINE_ACCESSOR.get(setterFlags)");
            boolean booleanValue12 = mo3059b15.booleanValue();
            AbstractC18983g m1239a3 = m1239a(c18754m, m3068a, EnumC19875b.PROPERTY_SETTER);
            if (booleanValue10) {
                C19933j c19933j4 = c19933j;
                C19975x c19975x3 = C19975x.f66329a;
                C19190y c19190y2 = new C19190y(c19933j4, m1239a3, C19975x.m1224a(C18808b.f64283d.mo3059b(m3068a)), C19977y.m1220a(C19975x.f66329a, C18808b.f64282c.mo3059b(m3068a)), !booleanValue10, booleanValue11, booleanValue12, c19933j.getKind(), null, AbstractC19026at.f64759a);
                c19190y = c19190y2;
                m1259a2 = m1259a.m1259a(c19190y2, C18297z.f63400a, m1259a.f66270b, m1259a.f66272d, m1259a.f66273e, m1259a.f66277i);
                c19190y2.m2532a((AbstractC19050ba) C18282n.m4115i((List<? extends Object>) m1259a2.f66276h.m1246a(C18282n.m4176a(proto.f64043j), c18754m, EnumC19875b.PROPERTY_SETTER)));
            } else {
                C19933j c19933j5 = c19933j;
                AbstractC18983g.C18984a c18984a2 = AbstractC18983g.f64717a;
                c19190y = C19762c.m1520a(c19933j5, m1239a3, AbstractC18983g.C18984a.m2705a());
                C18524p.m3843b(c19190y, "{\n                DescriptorFactory.createDefaultSetter(\n                    property, annotations,\n                    Annotations.EMPTY /* Otherwise the setter is not default, see DescriptorResolver.resolvePropertySetterDescriptor */\n                )\n            }");
            }
        }
        Boolean mo3059b16 = C18808b.f64267B.mo3059b(m1247a);
        C18524p.m3843b(mo3059b16, "HAS_CONSTANT.get(flags)");
        if (mo3059b16.booleanValue()) {
            c19933j.m2597a(this.f66295a.f66269a.f66249a.mo2308b(new C19968e(proto, c19933j)));
        }
        C19933j c19933j6 = c19933j;
        c19933j.m1287a(c19189x, c19190y, new C19172m(m1242a(proto, false), c19933j6), new C19172m(m1242a(proto, true), c19933j6), m1234a(c19933j, m1259a.f66275g));
        return c19933j6;
    }

    /* renamed from: a */
    public final AbstractC19025as m1244a(C18702a.C18741h proto) {
        AbstractC18983g abstractC18983g;
        C18824i c18824i;
        C19949k m1259a;
        KotlinType m1380a;
        C18524p.m3840d(proto, "proto");
        int m1247a = proto.m3460c() ? proto.f63972b : m1247a(proto.f63973c);
        C18702a.C18741h c18741h = proto;
        AbstractC18983g m1239a = m1239a(c18741h, m1247a, EnumC19875b.FUNCTION);
        if (C18817f.m3055a(proto)) {
            abstractC18983g = m1238a(c18741h, EnumC19875b.FUNCTION);
        } else {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            abstractC18983g = AbstractC18983g.C18984a.m2705a();
        }
        if (C18524p.m3850a(C19756a.m1528b(this.f66295a.f66271c).m2744a(C19970u.m1228b(this.f66295a.f66270b, proto.f63974d)), C19979z.f66341a)) {
            C18824i.C18825a c18825a = C18824i.f64325a;
            c18824i = C18824i.f64326c;
        } else {
            c18824i = this.f66295a.f66273e;
        }
        C19934k c19934k = new C19934k(this.f66295a.f66271c, null, m1239a, C19970u.m1228b(this.f66295a.f66270b, proto.f63974d), C19977y.m1221a(C19975x.f66329a, C18808b.f64293n.mo3059b(m1247a)), proto, this.f66295a.f66270b, this.f66295a.f66272d, c18824i, this.f66295a.f66274f, null, 1024, null);
        C19949k c19949k = this.f66295a;
        C19934k c19934k2 = c19934k;
        List<C18702a.C18779r> list = proto.f63977g;
        C18524p.m3843b(list, "proto.typeParameterList");
        m1259a = c19949k.m1259a(c19934k2, list, c19949k.f66270b, c19949k.f66272d, c19949k.f66273e, c19949k.f66277i);
        C18702a.C18768p m3048b = C18817f.m3048b(proto, this.f66295a.f66272d);
        AbstractC19020aq m1522a = (m3048b == null || (m1380a = m1259a.f66275g.m1380a(m3048b)) == null) ? null : C19762c.m1522a(c19934k, m1380a, abstractC18983g);
        AbstractC19020aq m1248a = m1248a();
        List<TypeParameterDescriptor> m1382a = m1259a.f66275g.m1382a();
        C19963t c19963t = m1259a.f66276h;
        List<C18702a.C18787t> list2 = proto.f63980j;
        C18524p.m3843b(list2, "proto.valueParameterList");
        List<AbstractC19050ba> m1246a = c19963t.m1246a(list2, c18741h, EnumC19875b.FUNCTION);
        KotlinType m1380a2 = m1259a.f66275g.m1380a(C18817f.m3054a(proto, this.f66295a.f66272d));
        C19975x c19975x = C19975x.f66329a;
        EnumC19222y m1224a = C19975x.m1224a(C18808b.f64283d.mo3059b(m1247a));
        AbstractC19213s m1220a = C19977y.m1220a(C19975x.f66329a, C18808b.f64282c.mo3059b(m1247a));
        Map<? extends AbstractC18973a.AbstractC18974a<?>, ?> a = C18247ai.m4257a();
        Boolean mo3059b = C18808b.f64299t.mo3059b(m1247a);
        C18524p.m3843b(mo3059b, "IS_SUSPEND.get(flags)");
        m1233a(c19934k, m1522a, m1248a, m1382a, m1246a, m1380a2, m1224a, m1220a, a, mo3059b.booleanValue());
        Boolean mo3059b2 = C18808b.f64294o.mo3059b(m1247a);
        C18524p.m3843b(mo3059b2, "IS_OPERATOR.get(flags)");
        c19934k.setOperator(mo3059b2.booleanValue());
        Boolean mo3059b3 = C18808b.f64295p.mo3059b(m1247a);
        C18524p.m3843b(mo3059b3, "IS_INFIX.get(flags)");
        c19934k.setInfix(mo3059b3.booleanValue());
        Boolean mo3059b4 = C18808b.f64298s.mo3059b(m1247a);
        C18524p.m3843b(mo3059b4, "IS_EXTERNAL_FUNCTION.get(flags)");
        c19934k.setExternal(mo3059b4.booleanValue());
        Boolean mo3059b5 = C18808b.f64296q.mo3059b(m1247a);
        C18524p.m3843b(mo3059b5, "IS_INLINE.get(flags)");
        c19934k.setInline(mo3059b5.booleanValue());
        Boolean mo3059b6 = C18808b.f64297r.mo3059b(m1247a);
        C18524p.m3843b(mo3059b6, "IS_TAILREC.get(flags)");
        c19934k.setTailrec(mo3059b6.booleanValue());
        Boolean mo3059b7 = C18808b.f64299t.mo3059b(m1247a);
        C18524p.m3843b(mo3059b7, "IS_SUSPEND.get(flags)");
        c19934k.setSuspend(mo3059b7.booleanValue());
        Boolean mo3059b8 = C18808b.f64300u.mo3059b(m1247a);
        C18524p.m3843b(mo3059b8, "IS_EXPECT_FUNCTION.get(flags)");
        c19934k.setExpect(mo3059b8.booleanValue());
        c19934k.setHasStableParameterNames(!C18808b.f64301v.mo3059b(m1247a).booleanValue());
        this.f66295a.f66269a.f66261m.mo1262a(proto, c19934k, this.f66295a.f66272d, m1259a.f66275g);
        return c19934k;
    }

    /* renamed from: a */
    public final AbstractC19033ax m1241a(C18702a.C18776q proto) {
        C19949k m1259a;
        C18702a.C18768p underlyingType;
        C18702a.C18768p expandedType;
        C18524p.m3840d(proto, "proto");
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        List<C18702a.C18704a> list = proto.f64151i;
        C18524p.m3843b(list, "proto.annotationList");
        List<C18702a.C18704a> list2 = list;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (C18702a.C18704a it2 : list2) {
            C19937e c19937e = this.f66296b;
            C18524p.m3843b(it2, "it");
            arrayList.add(c19937e.m1272a(it2, this.f66295a.f66270b));
        }
        C19935l c19935l = new C19935l(this.f66295a.f66269a.f66249a, this.f66295a.f66271c, AbstractC18983g.C18984a.m2704a(arrayList), C19970u.m1228b(this.f66295a.f66270b, proto.f64145c), C19977y.m1220a(C19975x.f66329a, C18808b.f64282c.mo3059b(proto.f64144b)), proto, this.f66295a.f66270b, this.f66295a.f66272d, this.f66295a.f66273e, this.f66295a.f66274f);
        C19949k c19949k = this.f66295a;
        C19935l c19935l2 = c19935l;
        List<C18702a.C18779r> list3 = proto.f64146d;
        C18524p.m3843b(list3, "proto.typeParameterList");
        m1259a = c19949k.m1259a(c19935l2, list3, c19949k.f66270b, c19949k.f66272d, c19949k.f66273e, c19949k.f66277i);
        List<TypeParameterDescriptor> m1382a = m1259a.f66275g.m1382a();
        C19868aa c19868aa = m1259a.f66275g;
        C18818g typeTable = this.f66295a.f66272d;
        C18524p.m3840d(proto, "<this>");
        C18524p.m3840d(typeTable, "typeTable");
        if (proto.m3199g()) {
            underlyingType = proto.f64147e;
            C18524p.m3843b(underlyingType, "underlyingType");
        } else if (!proto.m3198k()) {
            throw new IllegalStateException("No underlyingType in ProtoBuf.TypeAlias".toString());
        } else {
            underlyingType = typeTable.m3043a(proto.f64148f);
        }
        SimpleType m1378a = c19868aa.m1378a(underlyingType, false);
        C19868aa c19868aa2 = m1259a.f66275g;
        C18818g typeTable2 = this.f66295a.f66272d;
        C18524p.m3840d(proto, "<this>");
        C18524p.m3840d(typeTable2, "typeTable");
        if (proto.m3197l()) {
            expandedType = proto.f64149g;
            C18524p.m3843b(expandedType, "expandedType");
        } else if (!proto.m3196m()) {
            throw new IllegalStateException("No expandedType in ProtoBuf.TypeAlias".toString());
        } else {
            expandedType = typeTable2.m3043a(proto.f64150h);
        }
        c19935l.m1283a(m1382a, m1378a, c19868aa2.m1378a(expandedType, false), m1234a(c19935l, m1259a.f66275g));
        return c19935l;
    }

    /* renamed from: a */
    public final AbstractC19065c m1245a(C18702a.C18720c proto, boolean z) {
        C19949k m1259a;
        Boolean bool;
        AbstractC19907g.EnumC19908a enumC19908a;
        C18524p.m3840d(proto, "proto");
        AbstractC19070d abstractC19070d = (AbstractC19070d) this.f66295a.f66271c;
        C18702a.C18720c c18720c = proto;
        C19904d c19904d = new C19904d(abstractC19070d, null, m1239a(c18720c, proto.f63906b, EnumC19875b.FUNCTION), z, AbstractC19039b.EnumC19040a.DECLARATION, proto, this.f66295a.f66270b, this.f66295a.f66272d, this.f66295a.f66273e, this.f66295a.f66274f, null, 1024, null);
        m1259a = r0.m1259a(c19904d, C18297z.f63400a, r0.f66270b, r0.f66272d, r0.f66273e, this.f66295a.f66277i);
        C19963t c19963t = m1259a.f66276h;
        List<C18702a.C18787t> list = proto.f63907c;
        C18524p.m3843b(list, "proto.valueParameterList");
        c19904d.m2588a(c19963t.m1246a(list, c18720c, EnumC19875b.FUNCTION), C19977y.m1220a(C19975x.f66329a, C18808b.f64282c.mo3059b(proto.f63906b)));
        c19904d.setReturnType(abstractC19070d.getDefaultType());
        boolean z2 = true;
        c19904d.setHasStableParameterNames(!C18808b.f64292m.mo3059b(proto.f63906b).booleanValue());
        AbstractC19193k abstractC19193k = this.f66295a.f66271c;
        DeserializedClassDescriptor deserializedClassDescriptor = abstractC19193k instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) abstractC19193k : null;
        C19949k c19949k = deserializedClassDescriptor == null ? null : deserializedClassDescriptor.f66103c;
        if (c19949k == null) {
            bool = null;
        } else {
            C19868aa c19868aa = c19949k.f66275g;
            bool = c19868aa == null ? null : Boolean.valueOf(c19868aa.f66080b);
        }
        if (!C18524p.m3850a(bool, Boolean.TRUE) || !m1235a((AbstractC19907g) c19904d)) {
            z2 = false;
        }
        if (z2) {
            enumC19908a = AbstractC19907g.EnumC19908a.INCOMPATIBLE;
        } else {
            C19904d c19904d2 = c19904d;
            List<AbstractC19050ba> valueParameters = c19904d.getValueParameters();
            C18524p.m3843b(valueParameters, "descriptor.valueParameters");
            List<AbstractC19050ba> list2 = valueParameters;
            List<TypeParameterDescriptor> typeParameters = c19904d.getTypeParameters();
            C18524p.m3843b(typeParameters, "descriptor.typeParameters");
            enumC19908a = m1236a(c19904d2, null, list2, typeParameters, c19904d.getReturnType(), false);
        }
        c19904d.m1335a(enumC19908a);
        return c19904d;
    }
}
