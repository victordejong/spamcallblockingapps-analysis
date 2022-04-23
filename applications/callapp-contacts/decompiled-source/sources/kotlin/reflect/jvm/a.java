package kotlin.reflect.jvm;

import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.KType;
import kotlin.reflect.c;
import kotlin.reflect.d;
import kotlin.reflect.jvm.internal.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u001c\u0010��\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\"\u0010��\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0003\u0010\b¨\u0006\t"}, d2 = {"jvmErasure", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/KClassifier;", "getJvmErasure", "(Lkotlin/reflect/KClassifier;)Lkotlin/reflect/KClass;", "Lkotlin/reflect/KType;", "getJvmErasure$annotations", "(Lkotlin/reflect/KType;)V", "(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;", "kotlin-reflection"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/a.class */
public final class a {
    public static final c<?> a(KType jvmErasure) {
        c<?> a2;
        p.d(jvmErasure, "$this$jvmErasure");
        d a3 = jvmErasure.a();
        if (a3 != null && (a2 = a(a3)) != null) {
            return a2;
        }
        throw new ab("Cannot calculate JVM erasure for type: ".concat(String.valueOf(jvmErasure)));
    }

    public static final c<?> a(d jvmErasure) {
        Object obj;
        c<?> a2;
        p.d(jvmErasure, "$this$jvmErasure");
        if (jvmErasure instanceof c) {
            return (c) jvmErasure;
        }
        if (jvmErasure instanceof kotlin.reflect.p) {
            List<KType> a3 = ((kotlin.reflect.p) jvmErasure).a();
            Iterator<T> it2 = a3.iterator();
            while (true) {
                obj = null;
                g declarationDescriptor = null;
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                KType kType = (KType) next;
                Objects.requireNonNull(kType, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
                declarationDescriptor = ((w) kType).f38615b.getConstructor().getDeclarationDescriptor();
                if (!(declarationDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) declarationDescriptor;
                if ((dVar == null || dVar.getKind() == e.INTERFACE || dVar.getKind() == e.ANNOTATION_CLASS) ? false : true) {
                    obj = next;
                    break;
                }
            }
            KType kType2 = (KType) obj;
            KType kType3 = kType2;
            if (kType2 == null) {
                kType3 = (KType) n.f((List<? extends Object>) a3);
            }
            return (kType3 == null || (a2 = a(kType3)) == null) ? ac.b(Object.class) : a2;
        }
        throw new ab("Cannot calculate JVM erasure for type: ".concat(String.valueOf(jvmErasure)));
    }
}
