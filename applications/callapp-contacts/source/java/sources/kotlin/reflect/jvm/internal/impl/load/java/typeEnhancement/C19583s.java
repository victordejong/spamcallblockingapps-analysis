package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18894c;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18896d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18991k;
import kotlin.reflect.jvm.internal.impl.load.java.C19585u;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.checker.SimpleClassicTypeSystemContext;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.s */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s.class */
public final class C19583s {

    /* renamed from: a */
    private static final C19523b f65603a;

    /* renamed from: b */
    private static final C19523b f65604b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.s$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s$a.class */
    public final /* synthetic */ class C19584a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f65605a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f65606b;

        static {
            int[] iArr = new int[EnumC19530f.values().length];
            iArr[EnumC19530f.READ_ONLY.ordinal()] = 1;
            iArr[EnumC19530f.MUTABLE.ordinal()] = 2;
            f65605a = iArr;
            int[] iArr2 = new int[EnumC19531g.values().length];
            iArr2[EnumC19531g.NULLABLE.ordinal()] = 1;
            iArr2[EnumC19531g.NOT_NULL.ordinal()] = 2;
            f65606b = iArr2;
        }
    }

    static {
        C18961b ENHANCED_NULLABILITY_ANNOTATION = C19585u.f65623q;
        C18524p.m3843b(ENHANCED_NULLABILITY_ANNOTATION, "ENHANCED_NULLABILITY_ANNOTATION");
        f65603a = new C19523b(ENHANCED_NULLABILITY_ANNOTATION);
        C18961b ENHANCED_MUTABILITY_ANNOTATION = C19585u.f65624r;
        C18524p.m3843b(ENHANCED_MUTABILITY_ANNOTATION, "ENHANCED_MUTABILITY_ANNOTATION");
        f65604b = new C19523b(ENHANCED_MUTABILITY_ANNOTATION);
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC18983g m1994a(List list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? new C18991k(C18282n.m4118h((Iterable) list)) : (AbstractC18983g) C18282n.m4115i((List<? extends Object>) list);
        }
        throw new IllegalStateException("At least one Annotations object expected".toString());
    }

    /* renamed from: a */
    private static final <T> C19524c<T> m1995a(T t) {
        return new C19524c<>(t, null);
    }

    /* renamed from: a */
    public static final /* synthetic */ C19524c m1993a(AbstractC19129g abstractC19129g, C19528e c19528e, EnumC19579o enumC19579o) {
        if (C19580p.m2000a(enumC19579o) && (abstractC19129g instanceof AbstractC19070d)) {
            C18896d c18896d = C18896d.f64468a;
            EnumC19530f enumC19530f = c19528e.f65523c;
            int i = enumC19530f == null ? -1 : C19584a.f65605a[enumC19530f.ordinal()];
            if (i != 1) {
                if (i == 2 && enumC19579o == EnumC19579o.FLEXIBLE_UPPER) {
                    AbstractC19070d abstractC19070d = (AbstractC19070d) abstractC19129g;
                    if (C18896d.m2894b(abstractC19070d)) {
                        return m1989c(C18896d.m2893c(abstractC19070d));
                    }
                }
            } else if (enumC19579o == EnumC19579o.FLEXIBLE_LOWER) {
                AbstractC19070d mutable = (AbstractC19070d) abstractC19129g;
                if (C18896d.m2895a(mutable)) {
                    C18524p.m3840d(mutable, "mutable");
                    AbstractC19070d abstractC19070d2 = mutable;
                    C18962c m1463c = C19807d.m1463c(abstractC19070d2);
                    C18894c c18894c = C18894c.f64450a;
                    C18961b m2900b = C18894c.m2900b(m1463c);
                    if (m2900b != null) {
                        AbstractC19070d m2830a = C19756a.m1526d(abstractC19070d2).m2830a(m2900b);
                        C18524p.m3843b(m2830a, "descriptor.builtIns.getBuiltInClassByFqName(oppositeClassFqName)");
                        return m1989c(m2830a);
                    }
                    throw new IllegalArgumentException("Given class " + mutable + " is not a mutable collection");
                }
            }
        }
        return m1995a(abstractC19129g);
    }

    /* renamed from: a */
    public static final /* synthetic */ C19524c m1991a(KotlinType kotlinType, C19528e c19528e, EnumC19579o enumC19579o) {
        if (C19580p.m2000a(enumC19579o)) {
            EnumC19531g enumC19531g = c19528e.f65522b;
            int i = enumC19531g == null ? -1 : C19584a.f65606b[enumC19531g.ordinal()];
            if (i == 1) {
                return m1990b(Boolean.TRUE);
            }
            if (i == 2) {
                return m1990b(Boolean.FALSE);
            }
        }
        return m1995a(Boolean.valueOf(kotlinType.isMarkedNullable()));
    }

    /* renamed from: a */
    public static final boolean m1992a(KotlinType kotlinType) {
        C18524p.m3840d(kotlinType, "<this>");
        return C19581q.m1996a(SimpleClassicTypeSystemContext.INSTANCE, kotlinType);
    }

    /* renamed from: b */
    private static final <T> C19524c<T> m1990b(T t) {
        return new C19524c<>(t, f65603a);
    }

    /* renamed from: c */
    private static final <T> C19524c<T> m1989c(T t) {
        return new C19524c<>(t, f65604b);
    }
}
