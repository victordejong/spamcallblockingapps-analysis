package kotlin.reflect.jvm;

import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC18552d;
import kotlin.reflect.AbstractC20111p;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.C18620ab;
import kotlin.reflect.jvm.internal.C20094w;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u001c\u0010��\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\"\u0010��\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u00058FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0003\u0010\b¨\u0006\t"}, m4298d2 = {"jvmErasure", "Lkotlin/reflect/KClass;", "Lkotlin/reflect/KClassifier;", "getJvmErasure", "(Lkotlin/reflect/KClassifier;)Lkotlin/reflect/KClass;", "Lkotlin/reflect/KType;", "getJvmErasure$annotations", "(Lkotlin/reflect/KType;)V", "(Lkotlin/reflect/KType;)Lkotlin/reflect/KClass;", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/a.class */
public final class C18568a {
    /* renamed from: a */
    public static final AbstractC18551c<?> m3827a(KType jvmErasure) {
        AbstractC18551c<?> m3826a;
        C18524p.m3840d(jvmErasure, "$this$jvmErasure");
        AbstractC18552d mo1126a = jvmErasure.mo1126a();
        if (mo1126a == null || (m3826a = m3826a(mo1126a)) == null) {
            throw new C18620ab("Cannot calculate JVM erasure for type: ".concat(String.valueOf(jvmErasure)));
        }
        return m3826a;
    }

    /* renamed from: a */
    public static final AbstractC18551c<?> m3826a(AbstractC18552d jvmErasure) {
        Object obj;
        AbstractC18551c<?> m3827a;
        C18524p.m3840d(jvmErasure, "$this$jvmErasure");
        if (jvmErasure instanceof AbstractC18551c) {
            return (AbstractC18551c) jvmErasure;
        }
        if (!(jvmErasure instanceof AbstractC20111p)) {
            throw new C18620ab("Cannot calculate JVM erasure for type: ".concat(String.valueOf(jvmErasure)));
        }
        List<KType> mo1113a = ((AbstractC20111p) jvmErasure).mo1113a();
        Iterator<T> it2 = mo1113a.iterator();
        while (true) {
            obj = null;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            KType kType = (KType) next;
            Objects.requireNonNull(kType, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
            AbstractC19129g declarationDescriptor = ((C20094w) kType).f66488b.getConstructor().getDeclarationDescriptor();
            if (!(declarationDescriptor instanceof AbstractC19070d)) {
                declarationDescriptor = null;
            }
            AbstractC19070d abstractC19070d = (AbstractC19070d) declarationDescriptor;
            if ((abstractC19070d == null || abstractC19070d.getKind() == EnumC19127e.INTERFACE || abstractC19070d.getKind() == EnumC19127e.ANNOTATION_CLASS) ? false : true) {
                obj = next;
                break;
            }
        }
        KType kType2 = (KType) obj;
        KType kType3 = kType2;
        if (kType2 == null) {
            kType3 = (KType) C18282n.m4121f((List<? extends Object>) mo1113a);
        }
        return (kType3 == null || (m3827a = m3827a(kType3)) == null) ? C18496ac.m3882b(Object.class) : m3827a;
    }
}
