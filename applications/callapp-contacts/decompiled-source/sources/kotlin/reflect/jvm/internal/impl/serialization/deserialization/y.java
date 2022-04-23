package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/y.class */
public final class y {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/y$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f38496a;

        /* renamed from: b  reason: collision with root package name */
        public static final /* synthetic */ int[] f38497b;

        /* renamed from: c  reason: collision with root package name */
        public static final /* synthetic */ int[] f38498c;

        static {
            int[] iArr = new int[a.i.values().length];
            iArr[a.i.DECLARATION.ordinal()] = 1;
            iArr[a.i.FAKE_OVERRIDE.ordinal()] = 2;
            iArr[a.i.DELEGATION.ordinal()] = 3;
            iArr[a.i.SYNTHESIZED.ordinal()] = 4;
            f38496a = iArr;
            int[] iArr2 = new int[b.a.values().length];
            iArr2[b.a.DECLARATION.ordinal()] = 1;
            iArr2[b.a.FAKE_OVERRIDE.ordinal()] = 2;
            iArr2[b.a.DELEGATION.ordinal()] = 3;
            iArr2[b.a.SYNTHESIZED.ordinal()] = 4;
            f38497b = iArr2;
            int[] iArr3 = new int[a.w.values().length];
            iArr3[a.w.INTERNAL.ordinal()] = 1;
            iArr3[a.w.PRIVATE.ordinal()] = 2;
            iArr3[a.w.PRIVATE_TO_THIS.ordinal()] = 3;
            iArr3[a.w.PROTECTED.ordinal()] = 4;
            iArr3[a.w.PUBLIC.ordinal()] = 5;
            iArr3[a.w.LOCAL.ordinal()] = 6;
            f38498c = iArr3;
        }
    }

    public static final b.a a(x xVar, a.i iVar) {
        p.d(xVar, "<this>");
        int i = iVar == null ? -1 : a.f38496a[iVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? b.a.DECLARATION : b.a.SYNTHESIZED : b.a.DELEGATION : b.a.FAKE_OVERRIDE : b.a.DECLARATION;
    }

    public static final s a(x xVar, a.w wVar) {
        p.d(xVar, "<this>");
        switch (wVar == null ? -1 : a.f38498c[wVar.ordinal()]) {
            case 1:
                s INTERNAL = r.f37593d;
                p.b(INTERNAL, "INTERNAL");
                return INTERNAL;
            case 2:
                s PRIVATE = r.f37590a;
                p.b(PRIVATE, "PRIVATE");
                return PRIVATE;
            case 3:
                s PRIVATE_TO_THIS = r.f37591b;
                p.b(PRIVATE_TO_THIS, "PRIVATE_TO_THIS");
                return PRIVATE_TO_THIS;
            case 4:
                s PROTECTED = r.f37592c;
                p.b(PROTECTED, "PROTECTED");
                return PROTECTED;
            case 5:
                s PUBLIC = r.e;
                p.b(PUBLIC, "PUBLIC");
                return PUBLIC;
            case 6:
                s LOCAL = r.f;
                p.b(LOCAL, "LOCAL");
                return LOCAL;
            default:
                s PRIVATE2 = r.f37590a;
                p.b(PRIVATE2, "PRIVATE");
                return PRIVATE2;
        }
    }
}
