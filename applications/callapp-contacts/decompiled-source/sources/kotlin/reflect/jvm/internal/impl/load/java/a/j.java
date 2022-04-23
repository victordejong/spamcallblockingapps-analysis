package kotlin.reflect.jvm.internal.impl.load.java.a;

import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.java.d.q;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/j.class */
public interface j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f37740a = new j() { // from class: kotlin.reflect.jvm.internal.impl.load.java.a.j.1
        private static /* synthetic */ void a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.load.java.a.j
        public final a a(q qVar, d dVar, KotlinType kotlinType, List<ba> list, List<TypeParameterDescriptor> list2) {
            if (qVar == null) {
                a(0);
            }
            if (dVar == null) {
                a(1);
            }
            if (kotlinType == null) {
                a(2);
            }
            if (list == null) {
                a(3);
            }
            if (list2 == null) {
                a(4);
            }
            return new a(kotlinType, null, list, list2, Collections.emptyList(), false);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.a.j
        public final void a(b bVar, List<String> list) {
            if (bVar == null) {
                a(5);
            }
            if (list == null) {
                a(6);
            }
            throw new UnsupportedOperationException("Should not be called");
        }
    };

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/j$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final KotlinType f37741a;

        /* renamed from: b  reason: collision with root package name */
        public final KotlinType f37742b;

        /* renamed from: c  reason: collision with root package name */
        public final List<ba> f37743c;

        /* renamed from: d  reason: collision with root package name */
        public final List<TypeParameterDescriptor> f37744d;
        public final List<String> e;
        public final boolean f;

        public a(KotlinType kotlinType, KotlinType kotlinType2, List<ba> list, List<TypeParameterDescriptor> list2, List<String> list3, boolean z) {
            if (kotlinType == null) {
                a(0);
            }
            if (list == null) {
                a(1);
            }
            if (list2 == null) {
                a(2);
            }
            if (list3 == null) {
                a(3);
            }
            this.f37741a = kotlinType;
            this.f37742b = kotlinType2;
            this.f37743c = list;
            this.f37744d = list2;
            this.e = list3;
            this.f = z;
        }

        public static /* synthetic */ void a(int i) {
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
            if (!(i == 4 || i == 5 || i == 6 || i == 7)) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw ((i == 4 || i == 5 || i == 6 || i == 7) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }
    }

    a a(q qVar, d dVar, KotlinType kotlinType, List<ba> list, List<TypeParameterDescriptor> list2);

    void a(b bVar, List<String> list);
}
