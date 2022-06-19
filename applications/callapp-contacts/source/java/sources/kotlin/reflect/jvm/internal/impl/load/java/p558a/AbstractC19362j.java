package kotlin.reflect.jvm.internal.impl.load.java.p558a;

import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19408q;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/j.class */
public interface AbstractC19362j {

    /* renamed from: a */
    public static final AbstractC19362j f65266a = new AbstractC19362j() { // from class: kotlin.reflect.jvm.internal.impl.load.java.a.j.1
        /* renamed from: a */
        private static /* synthetic */ void m2268a(int i) {
            Object[] objArr = new Object[3];
            switch (i) {
                case 1:
                    objArr[0] = "owner";
                    break;
                case 2:
                    objArr[0] = "returnType";
                    break;
                case 3:
                    objArr[0] = "valueParameters";
                    break;
                case 4:
                    objArr[0] = "typeParameters";
                    break;
                case 5:
                    objArr[0] = "descriptor";
                    break;
                case 6:
                    objArr[0] = "signatureErrors";
                    break;
                default:
                    objArr[0] = "method";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$1";
            if (i == 5 || i == 6) {
                objArr[2] = "reportSignatureErrors";
            } else {
                objArr[2] = "resolvePropagatedSignature";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19362j
        /* renamed from: a */
        public final C19364a mo2266a(AbstractC19408q abstractC19408q, AbstractC19070d abstractC19070d, KotlinType kotlinType, List<AbstractC19050ba> list, List<TypeParameterDescriptor> list2) {
            if (abstractC19408q == null) {
                m2268a(0);
            }
            if (abstractC19070d == null) {
                m2268a(1);
            }
            if (kotlinType == null) {
                m2268a(2);
            }
            if (list == null) {
                m2268a(3);
            }
            if (list2 == null) {
                m2268a(4);
            }
            return new C19364a(kotlinType, null, list, list2, Collections.emptyList(), false);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19362j
        /* renamed from: a */
        public final void mo2267a(AbstractC19039b abstractC19039b, List<String> list) {
            if (abstractC19039b == null) {
                m2268a(5);
            }
            if (list == null) {
                m2268a(6);
            }
            throw new UnsupportedOperationException("Should not be called");
        }
    };

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.j$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/j$a.class */
    public static final class C19364a {

        /* renamed from: a */
        public final KotlinType f65267a;

        /* renamed from: b */
        public final KotlinType f65268b;

        /* renamed from: c */
        public final List<AbstractC19050ba> f65269c;

        /* renamed from: d */
        public final List<TypeParameterDescriptor> f65270d;

        /* renamed from: e */
        public final List<String> f65271e;

        /* renamed from: f */
        public final boolean f65272f;

        public C19364a(KotlinType kotlinType, KotlinType kotlinType2, List<AbstractC19050ba> list, List<TypeParameterDescriptor> list2, List<String> list3, boolean z) {
            if (kotlinType == null) {
                m2265a(0);
            }
            if (list == null) {
                m2265a(1);
            }
            if (list2 == null) {
                m2265a(2);
            }
            if (list3 == null) {
                m2265a(3);
            }
            this.f65267a = kotlinType;
            this.f65268b = kotlinType2;
            this.f65269c = list;
            this.f65270d = list2;
            this.f65271e = list3;
            this.f65272f = z;
        }

        /* renamed from: a */
        public static /* synthetic */ void m2265a(int i) {
            String str = (i == 4 || i == 5 || i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 4 || i == 5 || i == 6 || i == 7) ? 2 : 3];
            switch (i) {
                case 1:
                    objArr[0] = "valueParameters";
                    break;
                case 2:
                    objArr[0] = "typeParameters";
                    break;
                case 3:
                    objArr[0] = "signatureErrors";
                    break;
                case 4:
                case 5:
                case 6:
                case 7:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
                    break;
                default:
                    objArr[0] = "returnType";
                    break;
            }
            if (i == 4) {
                objArr[1] = "getReturnType";
            } else if (i == 5) {
                objArr[1] = "getValueParameters";
            } else if (i == 6) {
                objArr[1] = "getTypeParameters";
            } else if (i != 7) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator$PropagatedSignature";
            } else {
                objArr[1] = "getErrors";
            }
            if (i != 4 && i != 5 && i != 6 && i != 7) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw ((i == 4 || i == 5 || i == 6 || i == 7) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }
    }

    /* renamed from: a */
    C19364a mo2266a(AbstractC19408q abstractC19408q, AbstractC19070d abstractC19070d, KotlinType kotlinType, List<AbstractC19050ba> list, List<TypeParameterDescriptor> list2);

    /* renamed from: a */
    void mo2267a(AbstractC19039b abstractC19039b, List<String> list);
}
