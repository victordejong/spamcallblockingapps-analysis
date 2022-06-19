package kotlin.reflect.jvm.internal.impl.p553e;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.C18399h;
import kotlin.C20128v;
import kotlin.C20130x;
import kotlin.Lazy;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p532h.C18425p;
import kotlin.properties.AbstractC18544b;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.C18929f;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19016am;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19215u;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.C19015al;
import kotlin.reflect.jvm.internal.impl.descriptors.C19034ay;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.EnumC18980e;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p545c.C18968g;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19775a;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19776b;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19793o;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.AbbreviatedType;
import kotlin.reflect.jvm.internal.impl.types.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnresolvedType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.WrappedType;
import org.apache.commons.lang3.StringUtils;
/* renamed from: kotlin.reflect.jvm.internal.impl.e.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d.class */
public final class C19245d extends AbstractC19230c implements AbstractC19257f {

    /* renamed from: l */
    final C19258g f65047l;

    /* renamed from: m */
    private final Lazy f65048m;

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$a.class */
    final class C19246a implements AbstractC19195m<C20128v, StringBuilder> {

        /* renamed from: a */
        final /* synthetic */ C19245d f65049a;

        /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$a$a.class */
        public final /* synthetic */ class C19247a {

            /* renamed from: a */
            public static final /* synthetic */ int[] f65050a;

            static {
                int[] iArr = new int[EnumC19266l.values().length];
                iArr[EnumC19266l.PRETTY.ordinal()] = 1;
                iArr[EnumC19266l.DEBUG.ordinal()] = 2;
                iArr[EnumC19266l.NONE.ordinal()] = 3;
                f65050a = iArr;
            }
        }

        public C19246a(C19245d this$0) {
            C18524p.m3840d(this$0, "this$0");
            this.f65049a = this$0;
        }

        /* renamed from: a */
        private final void m2385a(AbstractC19016am abstractC19016am, StringBuilder sb, String str) {
            int i = C19247a.f65050a[this.f65049a.m2411e().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                m2376a((AbstractC19219w) abstractC19016am, sb);
                return;
            }
            C19245d.m2435a(this.f65049a, abstractC19016am, sb);
            sb.append(C18524p.m3847a(str, (Object) " for "));
            C19245d c19245d = this.f65049a;
            AbstractC19017an mo2538b = abstractC19016am.mo2538b();
            C18524p.m3843b(mo2538b, "descriptor.correspondingProperty");
            C19245d.m2434a(c19245d, mo2538b, sb);
        }

        /* renamed from: a */
        private void m2376a(AbstractC19219w descriptor, StringBuilder builder) {
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            C19245d.m2428a(this.f65049a, descriptor, builder);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2389a(TypeParameterDescriptor descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            this.f65049a.m2459a(descriptor, builder, true);
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2388a(AbstractC18999ab descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            this.f65049a.m2446a((AbstractC19193k) descriptor, builder, true);
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2387a(AbstractC19006ae descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            C19245d.m2437a(this.f65049a, descriptor, builder);
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2386a(AbstractC19013aj descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            C19245d.m2436a(this.f65049a, descriptor, builder);
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2384a(AbstractC19017an descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            C19245d.m2434a(this.f65049a, descriptor, builder);
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2383a(AbstractC19018ao descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            m2385a(descriptor, builder, "getter");
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2382a(AbstractC19019ap descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            m2385a(descriptor, builder, "setter");
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2381a(AbstractC19020aq descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            builder.append(descriptor.getName());
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2380a(AbstractC19033ax descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            C19245d.m2433a(this.f65049a, descriptor, builder);
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2379a(AbstractC19050ba descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            this.f65049a.m2453a(descriptor, true, builder, true);
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo2378a(AbstractC19070d descriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(builder, "builder");
            C19245d.m2431a(this.f65049a, descriptor, builder);
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ C20128v mo1173a(AbstractC19192j constructorDescriptor, StringBuilder sb) {
            StringBuilder builder = sb;
            C18524p.m3840d(constructorDescriptor, "constructorDescriptor");
            C18524p.m3840d(builder, "builder");
            C19245d.m2430a(this.f65049a, constructorDescriptor, builder);
            return C20128v.f66529a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ C20128v mo2377a(AbstractC19219w abstractC19219w, StringBuilder sb) {
            m2376a(abstractC19219w, sb);
            return C20128v.f66529a;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$b.class */
    public final /* synthetic */ class C19248b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f65051a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f65052b;

        static {
            int[] iArr = new int[EnumC19267m.values().length];
            iArr[EnumC19267m.PLAIN.ordinal()] = 1;
            iArr[EnumC19267m.HTML.ordinal()] = 2;
            f65051a = iArr;
            int[] iArr2 = new int[EnumC19265k.values().length];
            iArr2[EnumC19265k.ALL.ordinal()] = 1;
            iArr2[EnumC19265k.ONLY_NON_SYNTHESIZED.ordinal()] = 2;
            iArr2[EnumC19265k.NONE.ordinal()] = 3;
            f65052b = iArr2;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$c.class */
    public static final class C19249c extends AbstractC18526r implements Function1<TypeProjection, CharSequence> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19249c() {
            super(1);
            C19245d.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(TypeProjection typeProjection) {
            String str;
            TypeProjection it2 = typeProjection;
            C18524p.m3840d(it2, "it");
            if (it2.isStarProjection()) {
                str = "*";
            } else {
                C19245d c19245d = C19245d.this;
                KotlinType type = it2.getType();
                C18524p.m3843b(type, "it.type");
                str = c19245d.mo2425a(type);
                if (it2.getProjectionKind() != Variance.INVARIANT) {
                    str = it2.getProjectionKind() + ' ' + str;
                }
            }
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$d.class */
    public static final class C19250d extends AbstractC18526r implements Function0<C19245d> {

        /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$d$1 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$d$1.class */
        static final class C192511 extends AbstractC18526r implements Function1<AbstractC19257f, C20128v> {

            /* renamed from: a */
            public static final C192511 f65055a = new C192511();

            C192511() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ C20128v invoke(AbstractC19257f abstractC19257f) {
                AbstractC19257f abstractC19257f2 = abstractC19257f;
                C18524p.m3840d(abstractC19257f2, "<this>");
                abstractC19257f2.mo2373a(C18255ap.m4238a((Set) abstractC19257f2.mo2362d(), (Iterable) C18282n.m4176a(C18954j.C18955a.f64591C)));
                abstractC19257f2.mo2372a(EnumC19225a.ALWAYS_PARENTHESIZED);
                return C20128v.f66529a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19250d() {
            super(0);
            C19245d.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C19245d invoke() {
            C19245d c19245d = C19245d.this;
            C192511 changeOptions = C192511.f65055a;
            C18524p.m3840d(changeOptions, "changeOptions");
            C19258g c19258g = c19245d.f65047l;
            C19258g c19258g2 = new C19258g();
            Field[] declaredFields = c19258g.getClass().getDeclaredFields();
            C18524p.m3843b(declaredFields, "this::class.java.declaredFields");
            int length = declaredFields.length;
            int i = 0;
            while (i < length) {
                Field field = declaredFields[i];
                int i2 = i + 1;
                i = i2;
                if ((field.getModifiers() & 8) == 0) {
                    field.setAccessible(true);
                    Object obj = field.get(c19258g);
                    AbstractC18544b abstractC18544b = obj instanceof AbstractC18544b ? (AbstractC18544b) obj : null;
                    i = i2;
                    if (abstractC18544b != null) {
                        String name = field.getName();
                        C18524p.m3843b(name, "field.name");
                        boolean a = C18425p.m3957a(name, "is", false);
                        if (C20130x.f66532a && !(true ^ a)) {
                            throw new AssertionError("Fields named is* are not supported here yet");
                        }
                        AbstractC18551c m3882b = C18496ac.m3882b(C19258g.class);
                        String name2 = field.getName();
                        String name3 = field.getName();
                        C18524p.m3843b(name3, "field.name");
                        field.set(c19258g2, c19258g2.m2374a((C19258g) abstractC18544b.getValue(c19258g, new C18489aa(m3882b, name2, C18524p.m3847a("get", (Object) C18425p.m3953g(name3))))));
                        i = i2;
                    } else {
                        continue;
                    }
                }
            }
            changeOptions.invoke(c19258g2);
            c19258g2.m2360e();
            return new C19245d(c19258g2);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$e.class */
    public static final class C19252e extends AbstractC18526r implements Function1<AbstractC19781g<?>, CharSequence> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19252e() {
            super(1);
            C19245d.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(AbstractC19781g<?> abstractC19781g) {
            AbstractC19781g<?> it2 = abstractC19781g;
            C18524p.m3840d(it2, "it");
            return C19245d.this.m2426a(it2);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$f.class */
    public static final class C19253f extends AbstractC18526r implements Function1<AbstractC19050ba, CharSequence> {

        /* renamed from: a */
        public static final C19253f f65057a = new C19253f();

        C19253f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ CharSequence invoke(AbstractC19050ba abstractC19050ba) {
            return "";
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.d$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/d$g.class */
    public static final class C19254g extends AbstractC18526r implements Function1<KotlinType, CharSequence> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19254g() {
            super(1);
            C19245d.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(KotlinType kotlinType) {
            KotlinType it2 = kotlinType;
            C19245d c19245d = C19245d.this;
            C18524p.m3843b(it2, "it");
            return c19245d.mo2425a(it2);
        }
    }

    public C19245d(C19258g options) {
        C18524p.m3840d(options, "options");
        this.f65047l = options;
        boolean z = options.f65084b;
        if (!C20130x.f66532a || z) {
            this.f65048m = C18399h.m3897a(new C19250d());
            return;
        }
        throw new AssertionError("Assertion failed");
    }

    /* renamed from: A */
    private boolean m2485A() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65100r.getValue(c19258g, C19258g.f65059a[18])).booleanValue();
    }

    /* renamed from: B */
    private AbstractC19230c.AbstractC19243l m2484B() {
        C19258g c19258g = this.f65047l;
        return (AbstractC19230c.AbstractC19243l) c19258g.f65108z.getValue(c19258g, C19258g.f65059a[26]);
    }

    /* renamed from: C */
    private boolean m2483C() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65092j.getValue(c19258g, C19258g.f65059a[8])).booleanValue();
    }

    /* renamed from: D */
    private boolean m2482D() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65102t.getValue(c19258g, C19258g.f65059a[20])).booleanValue();
    }

    /* renamed from: E */
    private final C19245d m2481E() {
        return (C19245d) this.f65048m.mo1102a();
    }

    /* renamed from: F */
    private final String m2480F() {
        int i = C19248b.f65051a[m2390z().ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            return "&rarr;";
        }
        return m2416c("->");
    }

    /* renamed from: a */
    private final String m2479a(String str) {
        int i = C19248b.f65051a[m2390z().ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            if (m2406j()) {
                return str;
            }
            return "<b>" + str + "</b>";
        }
        return str;
    }

    /* renamed from: a */
    private static String m2477a(String str, String str2, String str3, String str4, String str5) {
        if (!C18425p.m3957a(str, str2, false) || !C18425p.m3957a(str3, str4, false)) {
            return null;
        }
        int length = str2.length();
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(length);
        C18524p.m3843b(substring, "(this as java.lang.String).substring(startIndex)");
        int length2 = str4.length();
        Objects.requireNonNull(str3, "null cannot be cast to non-null type java.lang.String");
        String substring2 = str3.substring(length2);
        C18524p.m3843b(substring2, "(this as java.lang.String).substring(startIndex)");
        String m3847a = C18524p.m3847a(str5, (Object) substring);
        if (C18524p.m3850a((Object) substring, (Object) substring2)) {
            return m3847a;
        }
        if (!m2478a(substring, substring2)) {
            return null;
        }
        return C18524p.m3847a(m3847a, (Object) "!");
    }

    /* renamed from: a */
    private String m2465a(List<? extends TypeProjection> typeArguments) {
        C18524p.m3840d(typeArguments, "typeArguments");
        if (typeArguments.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(m2416c("<"));
        m2474a(sb, typeArguments);
        sb.append(m2416c(">"));
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: a */
    private String m2449a(AbstractC19129g klass) {
        C18524p.m3840d(klass, "klass");
        return ErrorUtils.isError(klass) ? klass.getTypeConstructor().toString() : m2405k().mo2493a(klass, this);
    }

    /* renamed from: a */
    public final String m2426a(AbstractC19781g<?> abstractC19781g) {
        if (abstractC19781g instanceof C19776b) {
            return C18282n.m4148a(((C19776b) abstractC19781g).mo1489a(), ", ", "{", "}", 0, (CharSequence) null, new C19252e(), 24);
        }
        if (abstractC19781g instanceof C19775a) {
            return C18425p.m3931a(mo2457a(((C19775a) abstractC19781g).mo1489a(), (EnumC18980e) null), (CharSequence) "@");
        }
        if (!(abstractC19781g instanceof C19793o)) {
            return abstractC19781g.toString();
        }
        C19793o.AbstractC19795b a = ((C19793o) abstractC19781g).mo1489a();
        if (a instanceof C19793o.AbstractC19795b.C19796a) {
            return ((C19793o.AbstractC19795b.C19796a) a).f65975a + "::class";
        } else if (!(a instanceof C19793o.AbstractC19795b.C19797b)) {
            throw new NoWhenBranchMatchedException();
        } else {
            C19793o.AbstractC19795b.C19797b c19797b = (C19793o.AbstractC19795b.C19797b) a;
            String m2746a = c19797b.f65976a.f65964a.m2748f().m2746a();
            C18524p.m3843b(m2746a, "classValue.classId.asSingleFqName().asString()");
            for (int i = 0; i < c19797b.f65976a.f65965b; i++) {
                m2746a = "kotlin.Array<" + m2746a + '>';
            }
            return C18524p.m3847a(m2746a, (Object) "::class");
        }
    }

    /* renamed from: a */
    private String m2424a(TypeConstructor typeConstructor) {
        C18524p.m3840d(typeConstructor, "typeConstructor");
        AbstractC19129g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor ? true : declarationDescriptor instanceof AbstractC19070d ? true : declarationDescriptor instanceof AbstractC19033ax) {
            return m2449a(declarationDescriptor);
        }
        if (declarationDescriptor != null) {
            throw new IllegalStateException(C18524p.m3847a("Unexpected classifier: ", (Object) declarationDescriptor.getClass()).toString());
        }
        return typeConstructor.toString();
    }

    /* renamed from: a */
    private final List<String> m2458a(AbstractC18977c abstractC18977c) {
        ArrayList arrayList;
        AbstractC19065c unsubstitutedPrimaryConstructor;
        Map<C18966e, AbstractC19781g<?>> mo2041c = abstractC18977c.mo2041c();
        C19258g c19258g = this.f65047l;
        AbstractC19070d m1539a = ((Boolean) c19258g.f65065F.getValue(c19258g, C19258g.f65059a[32])).booleanValue() ? C19756a.m1539a(abstractC18977c) : null;
        List<AbstractC19050ba> valueParameters = (m1539a == null || (unsubstitutedPrimaryConstructor = m1539a.getUnsubstitutedPrimaryConstructor()) == null) ? null : unsubstitutedPrimaryConstructor.getValueParameters();
        if (valueParameters == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : valueParameters) {
                if (((AbstractC19050ba) obj).mo2609c()) {
                    arrayList2.add(obj);
                }
            }
            ArrayList<AbstractC19050ba> arrayList3 = arrayList2;
            ArrayList arrayList4 = new ArrayList(C18282n.m4163a((Iterable) arrayList3, 10));
            for (AbstractC19050ba abstractC19050ba : arrayList3) {
                arrayList4.add(abstractC19050ba.getName());
            }
            arrayList = arrayList4;
        }
        ArrayList arrayList5 = arrayList;
        if (arrayList == null) {
            arrayList5 = C18297z.f63400a;
        }
        ArrayList arrayList6 = new ArrayList();
        for (Object obj2 : arrayList5) {
            C18966e it2 = (C18966e) obj2;
            C18524p.m3843b(it2, "it");
            if (true ^ mo2041c.containsKey(it2)) {
                arrayList6.add(obj2);
            }
        }
        ArrayList<C18966e> arrayList7 = arrayList6;
        ArrayList arrayList8 = new ArrayList(C18282n.m4163a((Iterable) arrayList7, 10));
        for (C18966e c18966e : arrayList7) {
            arrayList8.add(C18524p.m3847a(c18966e.m2721a(), (Object) " = ..."));
        }
        ArrayList arrayList9 = arrayList8;
        Set<Map.Entry<C18966e, AbstractC19781g<?>>> entrySet = mo2041c.entrySet();
        ArrayList arrayList10 = new ArrayList(C18282n.m4163a(entrySet, 10));
        Iterator<T> it3 = entrySet.iterator();
        while (it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it3.next();
            C18966e c18966e2 = (C18966e) entry.getKey();
            AbstractC19781g<?> abstractC19781g = (AbstractC19781g) entry.getValue();
            StringBuilder sb = new StringBuilder();
            sb.append(c18966e2.m2721a());
            sb.append(" = ");
            sb.append(!arrayList5.contains(c18966e2) ? m2426a(abstractC19781g) : "...");
            arrayList10.add(sb.toString());
        }
        List sorted = C18282n.m4135b((Collection) arrayList9, (Iterable) arrayList10);
        C18524p.m3840d(sorted, "$this$sorted");
        List list = sorted;
        if (list.size() <= 1) {
            return C18282n.m4118h((Iterable) sorted);
        }
        Object[] array = list.toArray(new Comparable[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Comparable[] comparableArr = (Comparable[]) array;
        Objects.requireNonNull(comparableArr, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Comparable[] sort = comparableArr;
        C18524p.m3840d(sort, "$this$sort");
        if (sort.length > 1) {
            Arrays.sort(sort);
        }
        return C18273i.m4221a(sort);
    }

    /* renamed from: a */
    private static EnumC19222y m2443a(AbstractC19221x abstractC19221x) {
        if (abstractC19221x instanceof AbstractC19070d) {
            return ((AbstractC19070d) abstractC19221x).getKind() == EnumC19127e.INTERFACE ? EnumC19222y.ABSTRACT : EnumC19222y.FINAL;
        }
        AbstractC19193k containingDeclaration = abstractC19221x.getContainingDeclaration();
        AbstractC19070d abstractC19070d = containingDeclaration instanceof AbstractC19070d ? (AbstractC19070d) containingDeclaration : null;
        if (abstractC19070d != null && (abstractC19221x instanceof AbstractC19039b)) {
            AbstractC19039b abstractC19039b = (AbstractC19039b) abstractC19221x;
            Collection<? extends AbstractC19039b> overriddenDescriptors = abstractC19039b.getOverriddenDescriptors();
            C18524p.m3843b(overriddenDescriptors, "this.overriddenDescriptors");
            return (!(overriddenDescriptors.isEmpty() ^ true) || abstractC19070d.getModality() == EnumC19222y.FINAL) ? (abstractC19070d.getKind() != EnumC19127e.INTERFACE || C18524p.m3850a(abstractC19039b.getVisibility(), C19200r.f65002a)) ? EnumC19222y.FINAL : abstractC19039b.getModality() == EnumC19222y.ABSTRACT ? EnumC19222y.ABSTRACT : EnumC19222y.OPEN : EnumC19222y.OPEN;
        }
        return EnumC19222y.FINAL;
    }

    /* renamed from: a */
    private static void m2475a(StringBuilder sb) {
        int length = sb.length();
        if (length == 0 || sb.charAt(length - 1) != ' ') {
            sb.append(' ');
        }
    }

    /* renamed from: a */
    private final void m2474a(StringBuilder sb, List<? extends TypeProjection> list) {
        C18282n.m4150a(list, sb, ", ", null, null, 0, null, new C19249c(), 60);
    }

    /* renamed from: a */
    public final void m2473a(StringBuilder sb, AbstractC18975a abstractC18975a, EnumC18980e enumC18980e) {
        Set<C18961b> set;
        if (!m2400p().contains(EnumC19255e.ANNOTATIONS)) {
            return;
        }
        if (abstractC18975a instanceof KotlinType) {
            set = this.f65047l.mo2362d();
        } else {
            C19258g c19258g = this.f65047l;
            set = (Set) c19258g.f65067H.getValue(c19258g, C19258g.f65059a[34]);
        }
        C19258g c19258g2 = this.f65047l;
        Function1 function1 = (Function1) c19258g2.f65068I.getValue(c19258g2, C19258g.f65059a[36]);
        for (AbstractC18977c abstractC18977c : abstractC18975a.getAnnotations()) {
            if (!C18282n.m4147a((Iterable<? extends C18961b>) set, abstractC18977c.mo2042b()) && !C18524p.m3850a(abstractC18977c.mo2042b(), C18954j.C18955a.f64592D) && (function1 == null || ((Boolean) function1.invoke(abstractC18977c)).booleanValue())) {
                sb.append(mo2457a(abstractC18977c, enumC18980e));
                C19258g c19258g3 = this.f65047l;
                if (((Boolean) c19258g3.f65066G.getValue(c19258g3, C19258g.f65059a[33])).booleanValue()) {
                    sb.append('\n');
                    C18524p.m3843b(sb, "append('\\n')");
                } else {
                    sb.append(StringUtils.SPACE);
                }
            }
        }
    }

    /* renamed from: a */
    private final void m2472a(StringBuilder sb, C19015al c19015al) {
        StringBuilder sb2;
        C19015al c19015al2 = c19015al.f64749c;
        if (c19015al2 == null) {
            sb2 = null;
        } else {
            m2472a(sb, c19015al2);
            sb.append('.');
            C18966e name = c19015al.f64747a.getName();
            C18524p.m3843b(name, "possiblyInnerType.classifierDescriptor.name");
            sb.append(mo2460a(name, false));
            sb2 = sb;
        }
        if (sb2 == null) {
            TypeConstructor typeConstructor = c19015al.f64747a.getTypeConstructor();
            C18524p.m3843b(typeConstructor, "possiblyInnerType.classifierDescriptor.typeConstructor");
            sb.append(m2424a(typeConstructor));
        }
        sb.append(m2465a(c19015al.f64748b));
    }

    /* renamed from: a */
    private final void m2471a(StringBuilder sb, AbbreviatedType abbreviatedType) {
        if (m2390z() == EnumC19267m.HTML) {
            sb.append("<font color=\"808080\"><i>");
        }
        sb.append(" /* = ");
        m2420b(sb, abbreviatedType.getExpandedType());
        sb.append(" */");
        if (m2390z() == EnumC19267m.HTML) {
            sb.append("</i></font>");
        }
    }

    /* renamed from: a */
    private final void m2470a(StringBuilder sb, KotlinType kotlinType) {
        UnwrappedType unwrap = kotlinType.unwrap();
        AbbreviatedType abbreviatedType = unwrap instanceof AbbreviatedType ? (AbbreviatedType) unwrap : null;
        if (abbreviatedType == null) {
            m2420b(sb, kotlinType);
        } else if (m2395u()) {
            m2420b(sb, abbreviatedType.getExpandedType());
        } else {
            m2420b(sb, abbreviatedType.getAbbreviation());
            if (!m2394v()) {
                return;
            }
            m2471a(sb, abbreviatedType);
        }
    }

    /* renamed from: a */
    private final void m2469a(StringBuilder sb, KotlinType kotlinType, TypeConstructor typeConstructor) {
        C18524p.m3840d(kotlinType, "<this>");
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        C19015al m2689a = C19034ay.m2689a(kotlinType, declarationDescriptor instanceof AbstractC19130h ? (AbstractC19130h) declarationDescriptor : null, 0);
        if (m2689a != null) {
            m2472a(sb, m2689a);
            return;
        }
        sb.append(m2424a(typeConstructor));
        sb.append(m2465a(kotlinType.getArguments()));
    }

    /* renamed from: a */
    private final void m2468a(StringBuilder sb, SimpleType simpleType) {
        if (!C18524p.m3850a(simpleType, TypeUtils.CANT_INFER_FUNCTION_PARAM_TYPE)) {
            SimpleType simpleType2 = simpleType;
            if (!TypeUtils.isDontCarePlaceholder(simpleType2)) {
                if (ErrorUtils.isUninferredParameter(simpleType2)) {
                    if (!m2485A()) {
                        sb.append("???");
                        return;
                    }
                    String c18966e = ((ErrorUtils.UninferredParameterTypeConstructor) simpleType.getConstructor()).getTypeParameterDescriptor().getName().toString();
                    C18524p.m3843b(c18966e, "type.constructor as UninferredParameterTypeConstructor).typeParameterDescriptor.name.toString()");
                    sb.append(m2422b(c18966e));
                    return;
                } else if (KotlinTypeKt.isError(simpleType2)) {
                    m2415c(sb, simpleType2);
                    return;
                } else if (m2417b(simpleType2)) {
                    m2412d(sb, simpleType2);
                    return;
                } else {
                    m2415c(sb, simpleType2);
                    return;
                }
            }
        }
        sb.append("???");
    }

    /* renamed from: a */
    private final void m2467a(StringBuilder sb, boolean z, String str) {
        if (z) {
            sb.append(m2479a(str));
            sb.append(StringUtils.SPACE);
        }
    }

    /* renamed from: a */
    private final void m2466a(Collection<? extends AbstractC19050ba> collection, boolean z, StringBuilder sb) {
        C19258g c19258g = this.f65047l;
        int i = C19248b.f65052b[((EnumC19265k) c19258g.f65061B.getValue(c19258g, C19258g.f65059a[28])).ordinal()];
        boolean z2 = true;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
            } else if (!z) {
                z2 = true;
            }
            z2 = false;
        }
        int size = collection.size();
        m2484B().mo2489a(sb);
        int i2 = 0;
        for (AbstractC19050ba abstractC19050ba : collection) {
            m2484B().mo2487a(abstractC19050ba, sb);
            m2453a(abstractC19050ba, z2, sb, false);
            m2484B().mo2488a(abstractC19050ba, i2, size, sb);
            i2++;
        }
        m2484B().mo2486b(sb);
    }

    /* renamed from: a */
    private final void m2464a(List<? extends TypeParameterDescriptor> list, StringBuilder sb) {
        if (m2482D()) {
            return;
        }
        ArrayList arrayList = new ArrayList(0);
        for (TypeParameterDescriptor typeParameterDescriptor : list) {
            List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
            C18524p.m3843b(upperBounds, "typeParameter.upperBounds");
            for (Object obj : C18282n.m4122f((Iterable) upperBounds)) {
                ArrayList arrayList2 = arrayList;
                KotlinType it2 = (KotlinType) obj;
                StringBuilder sb2 = new StringBuilder();
                C18966e name = typeParameterDescriptor.getName();
                C18524p.m3843b(name, "typeParameter.name");
                sb2.append(mo2460a(name, false));
                sb2.append(" : ");
                C18524p.m3843b(it2, "it");
                sb2.append(mo2425a(it2));
                arrayList2.add(sb2.toString());
            }
        }
        if (!(!arrayList.isEmpty())) {
            return;
        }
        sb.append(StringUtils.SPACE);
        sb.append(m2479a("where"));
        sb.append(StringUtils.SPACE);
        C18282n.m4150a(arrayList, sb, ", ", null, null, 0, null, null, 124);
    }

    /* renamed from: a */
    private final void m2463a(List<? extends TypeParameterDescriptor> list, StringBuilder sb, boolean z) {
        if (!m2482D() && (!list.isEmpty())) {
            sb.append(m2416c("<"));
            m2421b(sb, list);
            sb.append(m2416c(">"));
            if (!z) {
                return;
            }
            sb.append(StringUtils.SPACE);
        }
    }

    /* renamed from: a */
    private final void m2462a(C18961b c18961b, String str, StringBuilder sb) {
        sb.append(m2479a(str));
        C18962c m2743b = c18961b.m2743b();
        C18524p.m3843b(m2743b, "fqName.toUnsafe()");
        String mo2461a = mo2461a(m2743b);
        if (mo2461a.length() > 0) {
            sb.append(StringUtils.SPACE);
            sb.append(mo2461a);
        }
    }

    /* renamed from: a */
    public final void m2459a(TypeParameterDescriptor typeParameterDescriptor, StringBuilder sb, boolean z) {
        if (z) {
            sb.append(m2416c("<"));
        }
        if (m2483C()) {
            sb.append("/*");
            sb.append(typeParameterDescriptor.getIndex());
            sb.append("*/ ");
        }
        m2467a(sb, typeParameterDescriptor.isReified(), "reified");
        String label = typeParameterDescriptor.getVariance().getLabel();
        boolean z2 = true;
        m2467a(sb, label.length() > 0, label);
        m2473a(sb, typeParameterDescriptor, (EnumC18980e) null);
        m2446a((AbstractC19193k) typeParameterDescriptor, sb, z);
        int size = typeParameterDescriptor.getUpperBounds().size();
        if ((size > 1 && !z) || size == 1) {
            KotlinType upperBound = typeParameterDescriptor.getUpperBounds().iterator().next();
            if (!AbstractC18940g.m2778q(upperBound)) {
                sb.append(" : ");
                C18524p.m3843b(upperBound, "upperBound");
                sb.append(mo2425a(upperBound));
            }
        } else if (z) {
            for (KotlinType upperBound2 : typeParameterDescriptor.getUpperBounds()) {
                if (!AbstractC18940g.m2778q(upperBound2)) {
                    if (z2) {
                        sb.append(" : ");
                    } else {
                        sb.append(" & ");
                    }
                    C18524p.m3843b(upperBound2, "upperBound");
                    sb.append(mo2425a(upperBound2));
                    z2 = false;
                }
            }
        }
        if (z) {
            sb.append(m2416c(">"));
        }
    }

    /* renamed from: a */
    private final void m2456a(AbstractC18973a abstractC18973a, StringBuilder sb) {
        AbstractC19020aq extensionReceiverParameter;
        C19258g c19258g = this.f65047l;
        if (((Boolean) c19258g.f65062C.getValue(c19258g, C19258g.f65059a[29])).booleanValue() && (extensionReceiverParameter = abstractC18973a.getExtensionReceiverParameter()) != null) {
            sb.append(" on ");
            KotlinType g = extensionReceiverParameter.mo2593g();
            C18524p.m3843b(g, "receiver.type");
            sb.append(mo2425a(g));
        }
    }

    /* renamed from: a */
    private final void m2454a(AbstractC19039b abstractC19039b, StringBuilder sb) {
        if (!C19807d.m1461e(abstractC19039b) || abstractC19039b.getModality() != EnumC19222y.FINAL) {
            if (m2399q() == EnumC19264j.RENDER_OVERRIDE && abstractC19039b.getModality() == EnumC19222y.OPEN && m2455a(abstractC19039b)) {
                return;
            }
            EnumC19222y modality = abstractC19039b.getModality();
            C18524p.m3843b(modality, "callable.modality");
            m2441a(modality, sb, m2443a((AbstractC19221x) abstractC19039b));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ff, code lost:
        if ((r7.f65047l.mo2367b() ? r8.mo2609c() : kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a.m1534a(r8)) != false) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2453a(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba r8, boolean r9, java.lang.StringBuilder r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p553e.C19245d.m2453a(kotlin.reflect.jvm.internal.impl.descriptors.ba, boolean, java.lang.StringBuilder, boolean):void");
    }

    /* renamed from: a */
    private final void m2452a(AbstractC19052bc abstractC19052bc, StringBuilder sb) {
        AbstractC19781g<?> mo2596j;
        if (!m2402n() || (mo2596j = abstractC19052bc.mo2596j()) == null) {
            return;
        }
        sb.append(" = ");
        sb.append(m2416c(m2426a(mo2596j)));
    }

    /* renamed from: a */
    private final void m2451a(AbstractC19052bc abstractC19052bc, StringBuilder sb, boolean z) {
        if (z || !(abstractC19052bc instanceof AbstractC19050ba)) {
            sb.append(m2479a(abstractC19052bc.at_() ? "var" : "val"));
            sb.append(StringUtils.SPACE);
        }
    }

    /* renamed from: a */
    private final void m2450a(AbstractC19052bc abstractC19052bc, boolean z, StringBuilder sb, boolean z2, boolean z3) {
        KotlinType g = abstractC19052bc.mo2593g();
        C18524p.m3843b(g, "variable.type");
        AbstractC19050ba abstractC19050ba = abstractC19052bc instanceof AbstractC19050ba ? (AbstractC19050ba) abstractC19052bc : null;
        KotlinType mo2608d = abstractC19050ba == null ? null : abstractC19050ba.mo2608d();
        KotlinType kotlinType = mo2608d == null ? g : mo2608d;
        m2467a(sb, mo2608d != null, "vararg");
        if (z3 || (z2 && !m2391y())) {
            m2451a(abstractC19052bc, sb, z3);
        }
        if (z) {
            m2446a((AbstractC19193k) abstractC19052bc, sb, z2);
            sb.append(": ");
        }
        sb.append(mo2425a(kotlinType));
        m2452a(abstractC19052bc, sb);
        if (!m2483C() || mo2608d == null) {
            return;
        }
        sb.append(" /*");
        sb.append(mo2425a(g));
        sb.append("*/");
    }

    /* renamed from: a */
    private final void m2448a(AbstractC19130h abstractC19130h, StringBuilder sb) {
        List<TypeParameterDescriptor> declaredTypeParameters = abstractC19130h.getDeclaredTypeParameters();
        C18524p.m3843b(declaredTypeParameters, "classifier.declaredTypeParameters");
        List<TypeParameterDescriptor> parameters = abstractC19130h.getTypeConstructor().getParameters();
        C18524p.m3843b(parameters, "classifier.typeConstructor.parameters");
        if (!m2483C() || !abstractC19130h.isInner() || parameters.size() <= declaredTypeParameters.size()) {
            return;
        }
        sb.append(" /*captured type parameters: ");
        m2421b(sb, parameters.subList(declaredTypeParameters.size(), parameters.size()));
        sb.append("*/");
    }

    /* renamed from: a */
    public final void m2446a(AbstractC19193k abstractC19193k, StringBuilder sb, boolean z) {
        C18966e name = abstractC19193k.getName();
        C18524p.m3843b(name, "descriptor.name");
        sb.append(mo2460a(name, z));
    }

    /* renamed from: a */
    private final void m2444a(AbstractC19219w abstractC19219w, StringBuilder sb) {
        m2467a(sb, abstractC19219w.isSuspend(), "suspend");
    }

    /* renamed from: a */
    private final void m2442a(AbstractC19221x abstractC19221x, StringBuilder sb) {
        m2467a(sb, abstractC19221x.isExternal(), "external");
        m2467a(sb, m2400p().contains(EnumC19255e.EXPECT) && abstractC19221x.isExpect(), "expect");
        m2467a(sb, m2400p().contains(EnumC19255e.ACTUAL) && abstractC19221x.isActual(), "actual");
    }

    /* renamed from: a */
    private final void m2441a(EnumC19222y enumC19222y, StringBuilder sb, EnumC19222y enumC19222y2) {
        C19258g c19258g = this.f65047l;
        if (((Boolean) c19258g.f65096n.getValue(c19258g, C19258g.f65059a[14])).booleanValue() || enumC19222y != enumC19222y2) {
            boolean contains = m2400p().contains(EnumC19255e.MODALITY);
            String name = enumC19222y.name();
            Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = name.toLowerCase();
            C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase()");
            m2467a(sb, contains, lowerCase);
        }
    }

    /* renamed from: a */
    private static /* synthetic */ void m2439a(C19245d c19245d, StringBuilder sb, KotlinType kotlinType) {
        c19245d.m2469a(sb, kotlinType, kotlinType.getConstructor());
    }

    /* renamed from: a */
    public static final /* synthetic */ void m2437a(C19245d c19245d, AbstractC19006ae abstractC19006ae, StringBuilder sb) {
        c19245d.m2462a(abstractC19006ae.mo2542c(), "package-fragment", sb);
        if (c19245d.f65047l.mo2367b()) {
            sb.append(" in ");
            c19245d.m2446a((AbstractC19193k) abstractC19006ae.mo2543b(), sb, false);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m2436a(C19245d c19245d, AbstractC19013aj abstractC19013aj, StringBuilder sb) {
        c19245d.m2462a(abstractC19013aj.mo2571a(), "package", sb);
        if (c19245d.f65047l.mo2367b()) {
            sb.append(" in context of ");
            c19245d.m2446a((AbstractC19193k) abstractC19013aj.mo2569c(), sb, false);
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m2435a(C19245d c19245d, AbstractC19016am abstractC19016am, StringBuilder sb) {
        c19245d.m2442a((AbstractC19221x) abstractC19016am, sb);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m2434a(C19245d c19245d, AbstractC19017an abstractC19017an, StringBuilder sb) {
        if (!c19245d.m2391y()) {
            if (!c19245d.m2392x()) {
                if (c19245d.m2400p().contains(EnumC19255e.ANNOTATIONS)) {
                    c19245d.m2473a(sb, abstractC19017an, (EnumC18980e) null);
                    AbstractC19215u mo2620e = abstractC19017an.mo2620e();
                    if (mo2620e != null) {
                        c19245d.m2473a(sb, mo2620e, EnumC18980e.FIELD);
                    }
                    AbstractC19215u mo2619f = abstractC19017an.mo2619f();
                    if (mo2619f != null) {
                        c19245d.m2473a(sb, mo2619f, EnumC18980e.PROPERTY_DELEGATE_FIELD);
                    }
                    if (c19245d.m2411e() == EnumC19266l.NONE) {
                        AbstractC19018ao mo2635a = abstractC19017an.mo2635a();
                        if (mo2635a != null) {
                            c19245d.m2473a(sb, mo2635a, EnumC18980e.PROPERTY_GETTER);
                        }
                        AbstractC19019ap mo2623b = abstractC19017an.mo2623b();
                        if (mo2623b != null) {
                            c19245d.m2473a(sb, mo2623b, EnumC18980e.PROPERTY_SETTER);
                            List<AbstractC19050ba> valueParameters = mo2623b.getValueParameters();
                            C18524p.m3843b(valueParameters, "setter.valueParameters");
                            AbstractC19050ba it2 = (AbstractC19050ba) C18282n.m4115i((List<? extends Object>) valueParameters);
                            C18524p.m3843b(it2, "it");
                            c19245d.m2473a(sb, it2, EnumC18980e.SETTER_PARAMETER);
                        }
                    }
                }
                AbstractC19213s visibility = abstractC19017an.getVisibility();
                C18524p.m3843b(visibility, "property.visibility");
                c19245d.m2445a(visibility, sb);
                c19245d.m2467a(sb, c19245d.m2400p().contains(EnumC19255e.CONST) && abstractC19017an.ar_(), "const");
                c19245d.m2442a((AbstractC19221x) abstractC19017an, sb);
                AbstractC19017an abstractC19017an2 = abstractC19017an;
                c19245d.m2454a((AbstractC19039b) abstractC19017an2, sb);
                c19245d.m2418b((AbstractC19039b) abstractC19017an2, sb);
                c19245d.m2467a(sb, c19245d.m2400p().contains(EnumC19255e.LATEINIT) && abstractC19017an.mo2604l(), "lateinit");
                c19245d.m2414c(abstractC19017an2, sb);
            }
            c19245d.m2451a((AbstractC19052bc) abstractC19017an, sb, false);
            List<TypeParameterDescriptor> typeParameters = abstractC19017an.getTypeParameters();
            C18524p.m3843b(typeParameters, "property.typeParameters");
            c19245d.m2463a((List<? extends TypeParameterDescriptor>) typeParameters, sb, true);
            c19245d.m2419b((AbstractC18973a) abstractC19017an, sb);
        }
        c19245d.m2446a((AbstractC19193k) abstractC19017an, sb, true);
        sb.append(": ");
        KotlinType g = abstractC19017an.mo2593g();
        C18524p.m3843b(g, "property.type");
        sb.append(c19245d.mo2425a(g));
        c19245d.m2456a((AbstractC18973a) abstractC19017an, sb);
        c19245d.m2452a((AbstractC19052bc) abstractC19017an, sb);
        List<TypeParameterDescriptor> typeParameters2 = abstractC19017an.getTypeParameters();
        C18524p.m3843b(typeParameters2, "property.typeParameters");
        c19245d.m2464a(typeParameters2, sb);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m2433a(C19245d c19245d, AbstractC19033ax abstractC19033ax, StringBuilder sb) {
        c19245d.m2473a(sb, abstractC19033ax, (EnumC18980e) null);
        AbstractC19213s visibility = abstractC19033ax.getVisibility();
        C18524p.m3843b(visibility, "typeAlias.visibility");
        c19245d.m2445a(visibility, sb);
        c19245d.m2442a((AbstractC19221x) abstractC19033ax, sb);
        sb.append(c19245d.m2479a("typealias"));
        sb.append(StringUtils.SPACE);
        c19245d.m2446a((AbstractC19193k) abstractC19033ax, sb, true);
        List<TypeParameterDescriptor> declaredTypeParameters = abstractC19033ax.getDeclaredTypeParameters();
        C18524p.m3843b(declaredTypeParameters, "typeAlias.declaredTypeParameters");
        c19245d.m2463a((List<? extends TypeParameterDescriptor>) declaredTypeParameters, sb, false);
        c19245d.m2448a((AbstractC19130h) abstractC19033ax, sb);
        sb.append(" = ");
        sb.append(c19245d.mo2425a(abstractC19033ax.mo1284a()));
    }

    /* renamed from: a */
    public static final /* synthetic */ void m2431a(C19245d c19245d, AbstractC19070d abstractC19070d, StringBuilder sb) {
        AbstractC19065c unsubstitutedPrimaryConstructor;
        String str;
        boolean z = abstractC19070d.getKind() == EnumC19127e.ENUM_ENTRY;
        if (!c19245d.m2391y()) {
            c19245d.m2473a(sb, abstractC19070d, (EnumC18980e) null);
            if (!z) {
                AbstractC19213s visibility = abstractC19070d.getVisibility();
                C18524p.m3843b(visibility, "klass.visibility");
                c19245d.m2445a(visibility, sb);
            }
            if ((abstractC19070d.getKind() != EnumC19127e.INTERFACE || abstractC19070d.getModality() != EnumC19222y.ABSTRACT) && (!abstractC19070d.getKind().isSingleton() || abstractC19070d.getModality() != EnumC19222y.FINAL)) {
                EnumC19222y modality = abstractC19070d.getModality();
                C18524p.m3843b(modality, "klass.modality");
                c19245d.m2441a(modality, sb, m2443a((AbstractC19221x) abstractC19070d));
            }
            c19245d.m2442a((AbstractC19221x) abstractC19070d, sb);
            c19245d.m2467a(sb, c19245d.m2400p().contains(EnumC19255e.INNER) && abstractC19070d.isInner(), "inner");
            c19245d.m2467a(sb, c19245d.m2400p().contains(EnumC19255e.DATA) && abstractC19070d.isData(), "data");
            c19245d.m2467a(sb, c19245d.m2400p().contains(EnumC19255e.INLINE) && abstractC19070d.isInline(), "inline");
            c19245d.m2467a(sb, c19245d.m2400p().contains(EnumC19255e.VALUE) && abstractC19070d.isValue(), "value");
            c19245d.m2467a(sb, c19245d.m2400p().contains(EnumC19255e.FUN) && abstractC19070d.isFun(), "fun");
            AbstractC19070d classifier = abstractC19070d;
            C18524p.m3840d(classifier, "classifier");
            if (classifier instanceof AbstractC19033ax) {
                str = "typealias";
            } else if (!(classifier instanceof AbstractC19070d)) {
                throw new AssertionError(C18524p.m3847a("Unexpected classifier: ", (Object) classifier));
            } else {
                AbstractC19070d abstractC19070d2 = classifier;
                if (abstractC19070d2.isCompanionObject()) {
                    str = "companion object";
                } else {
                    switch (AbstractC19230c.C19231a.C19232a.f65035a[abstractC19070d2.getKind().ordinal()]) {
                        case 1:
                            str = "class";
                            break;
                        case 2:
                            str = "interface";
                            break;
                        case 3:
                            str = "enum class";
                            break;
                        case 4:
                            str = "object";
                            break;
                        case 5:
                            str = "annotation class";
                            break;
                        case 6:
                            str = "enum entry";
                            break;
                        default:
                            throw new NoWhenBranchMatchedException();
                    }
                }
            }
            sb.append(c19245d.m2479a(str));
        }
        AbstractC19070d abstractC19070d3 = abstractC19070d;
        if (!C19807d.m1459g(abstractC19070d3)) {
            if (!c19245d.m2391y()) {
                m2475a(sb);
            }
            c19245d.m2446a((AbstractC19193k) abstractC19070d3, sb, true);
        } else {
            C19258g c19258g = c19245d.f65047l;
            if (((Boolean) c19258g.f65063D.getValue(c19258g, C19258g.f65059a[30])).booleanValue()) {
                if (c19245d.m2391y()) {
                    sb.append("companion object");
                }
                m2475a(sb);
                AbstractC19193k containingDeclaration = abstractC19070d3.getContainingDeclaration();
                if (containingDeclaration != null) {
                    sb.append("of ");
                    C18966e name = containingDeclaration.getName();
                    C18524p.m3843b(name, "containingDeclaration.name");
                    sb.append(c19245d.mo2460a(name, false));
                }
            }
            if (c19245d.m2483C() || !C18524p.m3850a(abstractC19070d3.getName(), C18968g.f64702c)) {
                if (!c19245d.m2391y()) {
                    m2475a(sb);
                }
                C18966e name2 = abstractC19070d3.getName();
                C18524p.m3843b(name2, "descriptor.name");
                sb.append(c19245d.mo2460a(name2, true));
            }
        }
        if (!z) {
            List<TypeParameterDescriptor> declaredTypeParameters = abstractC19070d.getDeclaredTypeParameters();
            C18524p.m3843b(declaredTypeParameters, "klass.declaredTypeParameters");
            c19245d.m2463a((List<? extends TypeParameterDescriptor>) declaredTypeParameters, sb, false);
            c19245d.m2448a((AbstractC19130h) abstractC19070d, sb);
            if (!abstractC19070d.getKind().isSingleton()) {
                C19258g c19258g2 = c19245d.f65047l;
                if (((Boolean) c19258g2.f65091i.getValue(c19258g2, C19258g.f65059a[7])).booleanValue() && (unsubstitutedPrimaryConstructor = abstractC19070d.getUnsubstitutedPrimaryConstructor()) != null) {
                    sb.append(StringUtils.SPACE);
                    c19245d.m2473a(sb, unsubstitutedPrimaryConstructor, (EnumC18980e) null);
                    AbstractC19213s visibility2 = unsubstitutedPrimaryConstructor.getVisibility();
                    C18524p.m3843b(visibility2, "primaryConstructor.visibility");
                    c19245d.m2445a(visibility2, sb);
                    sb.append(c19245d.m2479a("constructor"));
                    List<AbstractC19050ba> valueParameters = unsubstitutedPrimaryConstructor.getValueParameters();
                    C18524p.m3843b(valueParameters, "primaryConstructor.valueParameters");
                    c19245d.m2466a(valueParameters, unsubstitutedPrimaryConstructor.hasSynthesizedParameterNames(), sb);
                }
            }
            C19258g c19258g3 = c19245d.f65047l;
            if (!((Boolean) c19258g3.f65103u.getValue(c19258g3, C19258g.f65059a[21])).booleanValue() && !AbstractC18940g.m2783n(abstractC19070d.getDefaultType())) {
                Collection<KotlinType> mo53752getSupertypes = abstractC19070d.getTypeConstructor().mo53752getSupertypes();
                C18524p.m3843b(mo53752getSupertypes, "klass.typeConstructor.supertypes");
                if (!mo53752getSupertypes.isEmpty() && (mo53752getSupertypes.size() != 1 || !AbstractC18940g.m2781o(mo53752getSupertypes.iterator().next()))) {
                    m2475a(sb);
                    sb.append(": ");
                    C18282n.m4150a(mo53752getSupertypes, sb, ", ", null, null, 0, null, new C19254g(), 60);
                }
            }
            c19245d.m2464a(declaredTypeParameters, sb);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m2430a(kotlin.reflect.jvm.internal.impl.p553e.C19245d r10, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j r11, java.lang.StringBuilder r12) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p553e.C19245d.m2430a(kotlin.reflect.jvm.internal.impl.e.d, kotlin.reflect.jvm.internal.impl.descriptors.j, java.lang.StringBuilder):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0138, code lost:
        if (r5.m2407i() != false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m2428a(kotlin.reflect.jvm.internal.impl.p553e.C19245d r5, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w r6, java.lang.StringBuilder r7) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p553e.C19245d.m2428a(kotlin.reflect.jvm.internal.impl.e.d, kotlin.reflect.jvm.internal.impl.descriptors.w, java.lang.StringBuilder):void");
    }

    /* renamed from: a */
    private static boolean m2478a(String str, String str2) {
        if (!C18524p.m3850a((Object) str, (Object) C18425p.m3958a(str2, "?", "", false))) {
            if (C18425p.m3954b(str2, "?", false) && C18524p.m3850a((Object) C18524p.m3847a(str, (Object) "?"), (Object) str2)) {
                return true;
            }
            StringBuilder sb = new StringBuilder("(");
            sb.append(str);
            sb.append(")?");
            return C18524p.m3850a((Object) sb.toString(), (Object) str2);
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m2455a(AbstractC19039b abstractC19039b) {
        return !abstractC19039b.getOverriddenDescriptors().isEmpty();
    }

    /* renamed from: a */
    private final boolean m2445a(AbstractC19213s abstractC19213s, StringBuilder sb) {
        if (!m2400p().contains(EnumC19255e.VISIBILITY)) {
            return false;
        }
        C19258g c19258g = this.f65047l;
        AbstractC19213s abstractC19213s2 = abstractC19213s;
        if (((Boolean) c19258g.f65095m.getValue(c19258g, C19258g.f65059a[12])).booleanValue()) {
            abstractC19213s2 = abstractC19213s.mo2500c();
        }
        if (!this.f65047l.m2358f() && C18524p.m3850a(abstractC19213s2, C19200r.f65012k)) {
            return false;
        }
        sb.append(m2479a(abstractC19213s2.mo2501b()));
        sb.append(StringUtils.SPACE);
        return true;
    }

    /* renamed from: b */
    private final String m2422b(String str) {
        int i = C19248b.f65051a[m2390z().ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            return "<font color=red><b>" + str + "</b></font>";
        }
        return str;
    }

    /* renamed from: b */
    private final void m2421b(StringBuilder sb, List<? extends TypeParameterDescriptor> list) {
        Iterator<? extends TypeParameterDescriptor> it2 = list.iterator();
        while (it2.hasNext()) {
            m2459a(it2.next(), sb, false);
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
    }

    /* renamed from: b */
    private final void m2420b(StringBuilder sb, KotlinType kotlinType) {
        if ((kotlinType instanceof WrappedType) && this.f65047l.mo2367b() && !((WrappedType) kotlinType).isComputed()) {
            sb.append("<Not computed yet>");
            return;
        }
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            sb.append(((FlexibleType) unwrap).render(this, this));
        } else if (!(unwrap instanceof SimpleType)) {
        } else {
            m2468a(sb, (SimpleType) unwrap);
        }
    }

    /* renamed from: b */
    private final void m2419b(AbstractC18973a abstractC18973a, StringBuilder sb) {
        AbstractC19020aq extensionReceiverParameter = abstractC18973a.getExtensionReceiverParameter();
        if (extensionReceiverParameter != null) {
            m2473a(sb, extensionReceiverParameter, EnumC18980e.RECEIVER);
            KotlinType g = extensionReceiverParameter.mo2593g();
            C18524p.m3843b(g, "receiver.type");
            String mo2425a = mo2425a(g);
            String str = mo2425a;
            if (m2417b(g)) {
                str = mo2425a;
                if (!TypeUtils.isNullableType(g)) {
                    str = "(" + mo2425a + ')';
                }
            }
            sb.append(str);
            sb.append(".");
        }
    }

    /* renamed from: b */
    private final void m2418b(AbstractC19039b abstractC19039b, StringBuilder sb) {
        if (m2400p().contains(EnumC19255e.OVERRIDE) && m2455a(abstractC19039b) && m2399q() != EnumC19264j.RENDER_OPEN) {
            m2467a(sb, true, "override");
            if (!m2483C()) {
                return;
            }
            sb.append("/*");
            sb.append(abstractC19039b.getOverriddenDescriptors().size());
            sb.append("*/ ");
        }
    }

    /* renamed from: b */
    private static boolean m2417b(KotlinType kotlinType) {
        boolean z;
        if (C18929f.m2855c(kotlinType)) {
            List<TypeProjection> arguments = kotlinType.getArguments();
            if (!(arguments instanceof Collection) || !arguments.isEmpty()) {
                for (TypeProjection typeProjection : arguments) {
                    if (typeProjection.isStarProjection()) {
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

    /* renamed from: c */
    private final String m2416c(String str) {
        return m2390z().escape(str);
    }

    /* renamed from: c */
    private final void m2415c(StringBuilder sb, KotlinType kotlinType) {
        m2473a(sb, kotlinType, (EnumC18980e) null);
        if (KotlinTypeKt.isError(kotlinType)) {
            if ((kotlinType instanceof UnresolvedType) && m2397s()) {
                sb.append(((UnresolvedType) kotlinType).getPresentableName());
            } else if (!(kotlinType instanceof ErrorType) || m2401o()) {
                sb.append(kotlinType.getConstructor().toString());
            } else {
                sb.append(((ErrorType) kotlinType).getPresentableName());
            }
            sb.append(m2465a(kotlinType.getArguments()));
        } else {
            m2439a(this, sb, kotlinType);
        }
        if (kotlinType.isMarkedNullable()) {
            sb.append("?");
        }
        if (SpecialTypesKt.isDefinitelyNotNullType(kotlinType)) {
            sb.append("!!");
        }
    }

    /* renamed from: c */
    private final void m2414c(AbstractC19039b abstractC19039b, StringBuilder sb) {
        if (m2400p().contains(EnumC19255e.MEMBER_KIND) && m2483C() && abstractC19039b.getKind() != AbstractC19039b.EnumC19040a.DECLARATION) {
            sb.append("/*");
            String name = abstractC19039b.getKind().name();
            Objects.requireNonNull(name, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = name.toLowerCase();
            C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase()");
            sb.append(lowerCase);
            sb.append("*/ ");
        }
    }

    /* renamed from: c */
    private static boolean m2413c(KotlinType kotlinType) {
        return C18929f.m2856b(kotlinType) || !kotlinType.getAnnotations().mo1275a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ea, code lost:
        if (r0.isMarkedNullable() != false) goto L41;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m2412d(java.lang.StringBuilder r6, kotlin.reflect.jvm.internal.impl.types.KotlinType r7) {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p553e.C19245d.m2412d(java.lang.StringBuilder, kotlin.reflect.jvm.internal.impl.types.KotlinType):void");
    }

    /* renamed from: f */
    private boolean m2410f() {
        C19258g c19258g = this.f65047l;
        C18524p.m3840d(c19258g, "this");
        return c19258g.mo2375a().getIncludeAnnotationArguments();
    }

    /* renamed from: g */
    private boolean m2409g() {
        C19258g c19258g = this.f65047l;
        C18524p.m3840d(c19258g, "this");
        return c19258g.mo2375a().getIncludeEmptyAnnotationArguments();
    }

    /* renamed from: h */
    private boolean m2408h() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65099q.getValue(c19258g, C19258g.f65059a[17])).booleanValue();
    }

    /* renamed from: i */
    private boolean m2407i() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65069J.getValue(c19258g, C19258g.f65059a[38])).booleanValue();
    }

    /* renamed from: j */
    private boolean m2406j() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65076Q.getValue(c19258g, C19258g.f65059a[46])).booleanValue();
    }

    /* renamed from: k */
    private AbstractC19226b m2405k() {
        C19258g c19258g = this.f65047l;
        return (AbstractC19226b) c19258g.f65085c.getValue(c19258g, C19258g.f65059a[0]);
    }

    /* renamed from: l */
    private Function1<AbstractC19050ba, String> m2404l() {
        C19258g c19258g = this.f65047l;
        return (Function1) c19258g.f65105w.getValue(c19258g, C19258g.f65059a[23]);
    }

    /* renamed from: m */
    private boolean m2403m() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65073N.getValue(c19258g, C19258g.f65059a[42])).booleanValue();
    }

    /* renamed from: n */
    private boolean m2402n() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65101s.getValue(c19258g, C19258g.f65059a[19])).booleanValue();
    }

    /* renamed from: o */
    private boolean m2401o() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65077R.getValue(c19258g, C19258g.f65059a[47])).booleanValue();
    }

    /* renamed from: p */
    private Set<EnumC19255e> m2400p() {
        C19258g c19258g = this.f65047l;
        return (Set) c19258g.f65088f.getValue(c19258g, C19258g.f65059a[3]);
    }

    /* renamed from: q */
    private EnumC19264j m2399q() {
        C19258g c19258g = this.f65047l;
        return (EnumC19264j) c19258g.f65107y.getValue(c19258g, C19258g.f65059a[25]);
    }

    /* renamed from: r */
    private boolean m2398r() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65074O.getValue(c19258g, C19258g.f65059a[43])).booleanValue();
    }

    /* renamed from: s */
    private boolean m2397s() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65075P.getValue(c19258g, C19258g.f65059a[45])).booleanValue();
    }

    /* renamed from: t */
    private boolean m2396t() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65098p.getValue(c19258g, C19258g.f65059a[16])).booleanValue();
    }

    /* renamed from: u */
    private boolean m2395u() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65072M.getValue(c19258g, C19258g.f65059a[41])).booleanValue();
    }

    /* renamed from: v */
    private boolean m2394v() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65071L.getValue(c19258g, C19258g.f65059a[40])).booleanValue();
    }

    /* renamed from: w */
    private boolean m2393w() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65106x.getValue(c19258g, C19258g.f65059a[24])).booleanValue();
    }

    /* renamed from: x */
    private boolean m2392x() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65090h.getValue(c19258g, C19258g.f65059a[5])).booleanValue();
    }

    /* renamed from: y */
    private boolean m2391y() {
        C19258g c19258g = this.f65047l;
        return ((Boolean) c19258g.f65089g.getValue(c19258g, C19258g.f65059a[4])).booleanValue();
    }

    /* renamed from: z */
    private EnumC19267m m2390z() {
        C19258g c19258g = this.f65047l;
        return (EnumC19267m) c19258g.f65060A.getValue(c19258g, C19258g.f65059a[27]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c
    /* renamed from: a */
    public final String mo2476a(String lowerRendered, String upperRendered, AbstractC18940g builtIns) {
        String b;
        String b2;
        C18524p.m3840d(lowerRendered, "lowerRendered");
        C18524p.m3840d(upperRendered, "upperRendered");
        C18524p.m3840d(builtIns, "builtIns");
        if (m2478a(lowerRendered, upperRendered)) {
            if (!C18425p.m3957a(upperRendered, "(", false)) {
                return C18524p.m3847a(lowerRendered, (Object) "!");
            }
            return "(" + lowerRendered + ")!";
        }
        AbstractC19226b m2405k = m2405k();
        AbstractC19070d m2830a = builtIns.m2830a(C18954j.C18955a.f64604P);
        if (m2830a == null) {
            AbstractC18940g.m2819b(33);
        }
        C18524p.m3843b(m2830a, "builtIns.collection");
        AbstractC19070d abstractC19070d = m2830a;
        C19245d c19245d = this;
        b = C18425p.m3921b(m2405k.mo2493a(abstractC19070d, c19245d), "Collection", r0);
        String m3847a = C18524p.m3847a(b, (Object) "Mutable");
        String m2477a = m2477a(lowerRendered, m3847a, upperRendered, b, b + "(Mutable)");
        if (m2477a != null) {
            return m2477a;
        }
        String m2477a2 = m2477a(lowerRendered, C18524p.m3847a(b, (Object) "MutableMap.MutableEntry"), upperRendered, C18524p.m3847a(b, (Object) "Map.Entry"), C18524p.m3847a(b, (Object) "(Mutable)Map.(Mutable)Entry"));
        if (m2477a2 != null) {
            return m2477a2;
        }
        AbstractC19226b m2405k2 = m2405k();
        AbstractC19070d m2835a = builtIns.m2835a("Array");
        C18524p.m3843b(m2835a, "builtIns.array");
        b2 = C18425p.m3921b(m2405k2.mo2493a(m2835a, c19245d), "Array", r0);
        String m2477a3 = m2477a(lowerRendered, C18524p.m3847a(b2, (Object) m2416c("Array<")), upperRendered, C18524p.m3847a(b2, (Object) m2416c("Array<out ")), C18524p.m3847a(b2, (Object) m2416c("Array<(out) ")));
        if (m2477a3 != null) {
            return m2477a3;
        }
        return "(" + lowerRendered + ".." + upperRendered + ')';
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c
    /* renamed from: a */
    public final String mo2461a(C18962c fqName) {
        C18524p.m3840d(fqName, "fqName");
        List<C18966e> m2725g = fqName.m2725g();
        C18524p.m3843b(m2725g, "fqName.pathSegments()");
        return m2416c(C19270n.m2353a(m2725g));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c
    /* renamed from: a */
    public final String mo2460a(C18966e name, boolean z) {
        C18524p.m3840d(name, "name");
        String m2416c = m2416c(C19270n.m2351a(name));
        String str = m2416c;
        if (m2406j()) {
            str = m2416c;
            if (m2390z() == EnumC19267m.HTML) {
                str = m2416c;
                if (z) {
                    str = "<b>" + m2416c + "</b>";
                }
            }
        }
        return str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c
    /* renamed from: a */
    public final String mo2457a(AbstractC18977c annotation, EnumC18980e enumC18980e) {
        C18524p.m3840d(annotation, "annotation");
        StringBuilder sb = new StringBuilder();
        sb.append('@');
        if (enumC18980e != null) {
            sb.append(C18524p.m3847a(enumC18980e.getRenderName(), (Object) ":"));
        }
        KotlinType mo2043a = annotation.mo2043a();
        sb.append(mo2425a(mo2043a));
        if (m2410f()) {
            List<String> m2458a = m2458a(annotation);
            if (m2409g() || (!m2458a.isEmpty())) {
                C18282n.m4150a(m2458a, sb, ", ", "(", ")", 0, null, null, 112);
            }
        }
        if (m2483C() && (KotlinTypeKt.isError(mo2043a) || (mo2043a.getConstructor().getDeclarationDescriptor() instanceof C19001ad.C19003b))) {
            sb.append(" /* annotation class not found */");
        }
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c
    /* renamed from: a */
    public final String mo2447a(AbstractC19193k declarationDescriptor) {
        C18524p.m3840d(declarationDescriptor, "declarationDescriptor");
        StringBuilder sb = new StringBuilder();
        declarationDescriptor.accept(new C19246a(this), sb);
        C19258g c19258g = this.f65047l;
        if (((Boolean) c19258g.f65086d.getValue(c19258g, C19258g.f65059a[1])).booleanValue() && !(declarationDescriptor instanceof AbstractC19006ae) && !(declarationDescriptor instanceof AbstractC19013aj)) {
            if (declarationDescriptor instanceof AbstractC18999ab) {
                sb.append(" is a module");
            } else {
                AbstractC19193k containingDeclaration = declarationDescriptor.getContainingDeclaration();
                if (containingDeclaration != null && !(containingDeclaration instanceof AbstractC18999ab)) {
                    sb.append(StringUtils.SPACE);
                    String str = "defined in";
                    C18524p.m3840d("defined in", "message");
                    int i = C19248b.f65051a[m2390z().ordinal()];
                    if (i != 1) {
                        if (i != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        str = "<i>defined in</i>";
                    }
                    sb.append(str);
                    sb.append(StringUtils.SPACE);
                    C18962c m1463c = C19807d.m1463c(containingDeclaration);
                    C18524p.m3843b(m1463c, "getFqName(containingDeclaration)");
                    sb.append(m1463c.f64691a.isEmpty() ? "root package" : mo2461a(m1463c));
                    C19258g c19258g2 = this.f65047l;
                    if (((Boolean) c19258g2.f65087e.getValue(c19258g2, C19258g.f65059a[2])).booleanValue() && (containingDeclaration instanceof AbstractC19006ae) && (declarationDescriptor instanceof AbstractC19196n)) {
                        ((AbstractC19196n) declarationDescriptor).getSource().mo1859a();
                    }
                }
            }
        }
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c
    /* renamed from: a */
    public final String mo2425a(KotlinType type) {
        C18524p.m3840d(type, "type");
        StringBuilder sb = new StringBuilder();
        C19258g c19258g = this.f65047l;
        m2470a(sb, (KotlinType) ((Function1) c19258g.f65104v.getValue(c19258g, C19258g.f65059a[22])).invoke(type));
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c
    /* renamed from: a */
    public final String mo2423a(TypeProjection typeProjection) {
        C18524p.m3840d(typeProjection, "typeProjection");
        StringBuilder sb = new StringBuilder();
        m2474a(sb, C18282n.m4176a(typeProjection));
        String sb2 = sb.toString();
        C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final EnumC19225a mo2375a() {
        return this.f65047l.mo2375a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2373a(Set<C18961b> set) {
        C18524p.m3840d(set, "<set-?>");
        this.f65047l.mo2373a(set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2372a(EnumC19225a enumC19225a) {
        C18524p.m3840d(enumC19225a, "<set-?>");
        this.f65047l.mo2372a(enumC19225a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2371a(AbstractC19226b abstractC19226b) {
        C18524p.m3840d(abstractC19226b, "<set-?>");
        this.f65047l.mo2371a(abstractC19226b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2370a(EnumC19265k enumC19265k) {
        C18524p.m3840d(enumC19265k, "<set-?>");
        this.f65047l.mo2370a(enumC19265k);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2369a(EnumC19267m enumC19267m) {
        C18524p.m3840d(enumC19267m, "<set-?>");
        this.f65047l.mo2369a(enumC19267m);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: a */
    public final void mo2368a(boolean z) {
        this.f65047l.mo2368a(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: b */
    public final void mo2366b(Set<? extends EnumC19255e> set) {
        C18524p.m3840d(set, "<set-?>");
        this.f65047l.mo2366b(set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: b */
    public final void mo2365b(boolean z) {
        this.f65047l.mo2365b(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: b */
    public final boolean mo2367b() {
        return this.f65047l.mo2367b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: c */
    public final void mo2363c(boolean z) {
        this.f65047l.mo2363c(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: c */
    public final boolean mo2364c() {
        return this.f65047l.mo2364c();
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: d */
    public final Set<C18961b> mo2362d() {
        return this.f65047l.mo2362d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: d */
    public final void mo2361d(boolean z) {
        this.f65047l.mo2361d(z);
    }

    /* renamed from: e */
    public final EnumC19266l m2411e() {
        C19258g c19258g = this.f65047l;
        return (EnumC19266l) c19258g.f65064E.getValue(c19258g, C19258g.f65059a[31]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: e */
    public final void mo2359e(boolean z) {
        this.f65047l.mo2359e(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: f */
    public final void mo2357f(boolean z) {
        this.f65047l.mo2357f(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: g */
    public final void mo2356g(boolean z) {
        this.f65047l.mo2356g(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p553e.AbstractC19257f
    /* renamed from: h */
    public final void mo2355h(boolean z) {
        this.f65047l.mo2355h(z);
    }
}
