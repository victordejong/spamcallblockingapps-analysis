package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/x.class */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public static final x f38491a = new x();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/x$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f38492a;

        /* renamed from: b  reason: collision with root package name */
        public static final /* synthetic */ int[] f38493b;

        /* renamed from: c  reason: collision with root package name */
        public static final /* synthetic */ int[] f38494c;

        /* renamed from: d  reason: collision with root package name */
        public static final /* synthetic */ int[] f38495d;
        public static final /* synthetic */ int[] e;
        public static final /* synthetic */ int[] f;
        public static final /* synthetic */ int[] g;
        public static final /* synthetic */ int[] h;

        static {
            int[] iArr = new int[a.j.values().length];
            iArr[a.j.FINAL.ordinal()] = 1;
            iArr[a.j.OPEN.ordinal()] = 2;
            iArr[a.j.ABSTRACT.ordinal()] = 3;
            iArr[a.j.SEALED.ordinal()] = 4;
            f38492a = iArr;
            int[] iArr2 = new int[y.values().length];
            iArr2[y.FINAL.ordinal()] = 1;
            iArr2[y.OPEN.ordinal()] = 2;
            iArr2[y.ABSTRACT.ordinal()] = 3;
            iArr2[y.SEALED.ordinal()] = 4;
            f38493b = iArr2;
            int[] iArr3 = new int[a.w.values().length];
            iArr3[a.w.INTERNAL.ordinal()] = 1;
            iArr3[a.w.PRIVATE.ordinal()] = 2;
            iArr3[a.w.PRIVATE_TO_THIS.ordinal()] = 3;
            iArr3[a.w.PROTECTED.ordinal()] = 4;
            iArr3[a.w.PUBLIC.ordinal()] = 5;
            iArr3[a.w.LOCAL.ordinal()] = 6;
            f38494c = iArr3;
            int[] iArr4 = new int[a.b.EnumC0632b.values().length];
            iArr4[a.b.EnumC0632b.CLASS.ordinal()] = 1;
            iArr4[a.b.EnumC0632b.INTERFACE.ordinal()] = 2;
            iArr4[a.b.EnumC0632b.ENUM_CLASS.ordinal()] = 3;
            iArr4[a.b.EnumC0632b.ENUM_ENTRY.ordinal()] = 4;
            iArr4[a.b.EnumC0632b.ANNOTATION_CLASS.ordinal()] = 5;
            iArr4[a.b.EnumC0632b.OBJECT.ordinal()] = 6;
            iArr4[a.b.EnumC0632b.COMPANION_OBJECT.ordinal()] = 7;
            f38495d = iArr4;
            int[] iArr5 = new int[e.values().length];
            iArr5[e.CLASS.ordinal()] = 1;
            iArr5[e.INTERFACE.ordinal()] = 2;
            iArr5[e.ENUM_CLASS.ordinal()] = 3;
            iArr5[e.ENUM_ENTRY.ordinal()] = 4;
            iArr5[e.ANNOTATION_CLASS.ordinal()] = 5;
            iArr5[e.OBJECT.ordinal()] = 6;
            e = iArr5;
            int[] iArr6 = new int[a.r.b.values().length];
            iArr6[a.r.b.IN.ordinal()] = 1;
            iArr6[a.r.b.OUT.ordinal()] = 2;
            iArr6[a.r.b.INV.ordinal()] = 3;
            f = iArr6;
            int[] iArr7 = new int[a.p.C0646a.b.values().length];
            iArr7[a.p.C0646a.b.IN.ordinal()] = 1;
            iArr7[a.p.C0646a.b.OUT.ordinal()] = 2;
            iArr7[a.p.C0646a.b.INV.ordinal()] = 3;
            iArr7[a.p.C0646a.b.STAR.ordinal()] = 4;
            g = iArr7;
            int[] iArr8 = new int[Variance.values().length];
            iArr8[Variance.IN_VARIANCE.ordinal()] = 1;
            iArr8[Variance.OUT_VARIANCE.ordinal()] = 2;
            iArr8[Variance.INVARIANT.ordinal()] = 3;
            h = iArr8;
        }
    }

    private x() {
    }

    public static e a(a.b.EnumC0632b bVar) {
        switch (bVar == null ? -1 : a.f38495d[bVar.ordinal()]) {
            case 1:
                return e.CLASS;
            case 2:
                return e.INTERFACE;
            case 3:
                return e.ENUM_CLASS;
            case 4:
                return e.ENUM_ENTRY;
            case 5:
                return e.ANNOTATION_CLASS;
            case 6:
            case 7:
                return e.OBJECT;
            default:
                return e.CLASS;
        }
    }

    public static y a(a.j jVar) {
        int i = jVar == null ? -1 : a.f38492a[jVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? y.FINAL : y.SEALED : y.ABSTRACT : y.OPEN : y.FINAL;
    }

    public static Variance a(a.p.C0646a.b projection) {
        p.d(projection, "projection");
        int i = a.g[projection.ordinal()];
        if (i == 1) {
            return Variance.IN_VARIANCE;
        }
        if (i == 2) {
            return Variance.OUT_VARIANCE;
        }
        if (i == 3) {
            return Variance.INVARIANT;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        throw new IllegalArgumentException(p.a("Only IN, OUT and INV are supported. Actual argument: ", (Object) projection));
    }

    public static Variance a(a.r.b variance) {
        p.d(variance, "variance");
        int i = a.f[variance.ordinal()];
        if (i == 1) {
            return Variance.IN_VARIANCE;
        }
        if (i == 2) {
            return Variance.OUT_VARIANCE;
        }
        if (i == 3) {
            return Variance.INVARIANT;
        }
        throw new NoWhenBranchMatchedException();
    }
}
