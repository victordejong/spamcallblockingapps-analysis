package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.x */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/x.class */
public final class C19975x {

    /* renamed from: a */
    public static final C19975x f66329a = new C19975x();

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.x$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/x$a.class */
    public final /* synthetic */ class C19976a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f66330a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f66331b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f66332c;

        /* renamed from: d */
        public static final /* synthetic */ int[] f66333d;

        /* renamed from: e */
        public static final /* synthetic */ int[] f66334e;

        /* renamed from: f */
        public static final /* synthetic */ int[] f66335f;

        /* renamed from: g */
        public static final /* synthetic */ int[] f66336g;

        /* renamed from: h */
        public static final /* synthetic */ int[] f66337h;

        static {
            int[] iArr = new int[C18702a.EnumC18746j.values().length];
            iArr[C18702a.EnumC18746j.FINAL.ordinal()] = 1;
            iArr[C18702a.EnumC18746j.OPEN.ordinal()] = 2;
            iArr[C18702a.EnumC18746j.ABSTRACT.ordinal()] = 3;
            iArr[C18702a.EnumC18746j.SEALED.ordinal()] = 4;
            f66330a = iArr;
            int[] iArr2 = new int[EnumC19222y.values().length];
            iArr2[EnumC19222y.FINAL.ordinal()] = 1;
            iArr2[EnumC19222y.OPEN.ordinal()] = 2;
            iArr2[EnumC19222y.ABSTRACT.ordinal()] = 3;
            iArr2[EnumC19222y.SEALED.ordinal()] = 4;
            f66331b = iArr2;
            int[] iArr3 = new int[C18702a.EnumC18800w.values().length];
            iArr3[C18702a.EnumC18800w.INTERNAL.ordinal()] = 1;
            iArr3[C18702a.EnumC18800w.PRIVATE.ordinal()] = 2;
            iArr3[C18702a.EnumC18800w.PRIVATE_TO_THIS.ordinal()] = 3;
            iArr3[C18702a.EnumC18800w.PROTECTED.ordinal()] = 4;
            iArr3[C18702a.EnumC18800w.PUBLIC.ordinal()] = 5;
            iArr3[C18702a.EnumC18800w.LOCAL.ordinal()] = 6;
            f66332c = iArr3;
            int[] iArr4 = new int[C18702a.C18715b.EnumC18718b.values().length];
            iArr4[C18702a.C18715b.EnumC18718b.CLASS.ordinal()] = 1;
            iArr4[C18702a.C18715b.EnumC18718b.INTERFACE.ordinal()] = 2;
            iArr4[C18702a.C18715b.EnumC18718b.ENUM_CLASS.ordinal()] = 3;
            iArr4[C18702a.C18715b.EnumC18718b.ENUM_ENTRY.ordinal()] = 4;
            iArr4[C18702a.C18715b.EnumC18718b.ANNOTATION_CLASS.ordinal()] = 5;
            iArr4[C18702a.C18715b.EnumC18718b.OBJECT.ordinal()] = 6;
            iArr4[C18702a.C18715b.EnumC18718b.COMPANION_OBJECT.ordinal()] = 7;
            f66333d = iArr4;
            int[] iArr5 = new int[EnumC19127e.values().length];
            iArr5[EnumC19127e.CLASS.ordinal()] = 1;
            iArr5[EnumC19127e.INTERFACE.ordinal()] = 2;
            iArr5[EnumC19127e.ENUM_CLASS.ordinal()] = 3;
            iArr5[EnumC19127e.ENUM_ENTRY.ordinal()] = 4;
            iArr5[EnumC19127e.ANNOTATION_CLASS.ordinal()] = 5;
            iArr5[EnumC19127e.OBJECT.ordinal()] = 6;
            f66334e = iArr5;
            int[] iArr6 = new int[C18702a.C18779r.EnumC18782b.values().length];
            iArr6[C18702a.C18779r.EnumC18782b.IN.ordinal()] = 1;
            iArr6[C18702a.C18779r.EnumC18782b.OUT.ordinal()] = 2;
            iArr6[C18702a.C18779r.EnumC18782b.INV.ordinal()] = 3;
            f66335f = iArr6;
            int[] iArr7 = new int[C18702a.C18768p.C18770a.EnumC18773b.values().length];
            iArr7[C18702a.C18768p.C18770a.EnumC18773b.IN.ordinal()] = 1;
            iArr7[C18702a.C18768p.C18770a.EnumC18773b.OUT.ordinal()] = 2;
            iArr7[C18702a.C18768p.C18770a.EnumC18773b.INV.ordinal()] = 3;
            iArr7[C18702a.C18768p.C18770a.EnumC18773b.STAR.ordinal()] = 4;
            f66336g = iArr7;
            int[] iArr8 = new int[Variance.values().length];
            iArr8[Variance.IN_VARIANCE.ordinal()] = 1;
            iArr8[Variance.OUT_VARIANCE.ordinal()] = 2;
            iArr8[Variance.INVARIANT.ordinal()] = 3;
            f66337h = iArr8;
        }
    }

    private C19975x() {
    }

    /* renamed from: a */
    public static EnumC19127e m1225a(C18702a.C18715b.EnumC18718b enumC18718b) {
        switch (enumC18718b == null ? -1 : C19976a.f66333d[enumC18718b.ordinal()]) {
            case 1:
                return EnumC19127e.CLASS;
            case 2:
                return EnumC19127e.INTERFACE;
            case 3:
                return EnumC19127e.ENUM_CLASS;
            case 4:
                return EnumC19127e.ENUM_ENTRY;
            case 5:
                return EnumC19127e.ANNOTATION_CLASS;
            case 6:
            case 7:
                return EnumC19127e.OBJECT;
            default:
                return EnumC19127e.CLASS;
        }
    }

    /* renamed from: a */
    public static EnumC19222y m1224a(C18702a.EnumC18746j enumC18746j) {
        int i = enumC18746j == null ? -1 : C19976a.f66330a[enumC18746j.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? EnumC19222y.FINAL : EnumC19222y.SEALED : EnumC19222y.ABSTRACT : EnumC19222y.OPEN : EnumC19222y.FINAL;
    }

    /* renamed from: a */
    public static Variance m1223a(C18702a.C18768p.C18770a.EnumC18773b projection) {
        C18524p.m3840d(projection, "projection");
        int i = C19976a.f66336g[projection.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Variance.OUT_VARIANCE;
            }
            if (i == 3) {
                return Variance.INVARIANT;
            }
            if (i == 4) {
                throw new IllegalArgumentException(C18524p.m3847a("Only IN, OUT and INV are supported. Actual argument: ", (Object) projection));
            }
            throw new NoWhenBranchMatchedException();
        }
        return Variance.IN_VARIANCE;
    }

    /* renamed from: a */
    public static Variance m1222a(C18702a.C18779r.EnumC18782b variance) {
        C18524p.m3840d(variance, "variance");
        int i = C19976a.f66335f[variance.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Variance.OUT_VARIANCE;
            }
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            return Variance.INVARIANT;
        }
        return Variance.IN_VARIANCE;
    }
}
