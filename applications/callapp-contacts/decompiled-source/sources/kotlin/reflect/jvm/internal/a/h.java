package kotlin.reflect.jvm.internal.a;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.ab;
import kotlin.reflect.jvm.internal.aj;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.bc;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.resolve.e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\u001a\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0002H��\u001a6\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\n0\t\"\n\b��\u0010\n*\u0004\u0018\u00010\u000b*\b\u0012\u0004\u0012\u0002H\n0\t2\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\rH��\u001a\u0018\u0010\u000e\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0007\u001a\u00020\u0002H��\u001a\u0018\u0010\u0011\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0007\u001a\u00020\u0002H��\u001a\f\u0010\u0012\u001a\u00020\r*\u00020\u0002H\u0002\u001a\u0014\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010*\u0004\u0018\u00010\u0014H��\u001a\u0012\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010*\u00020\u0001H��\"\u001a\u0010��\u001a\u0004\u0018\u00010\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0015"}, d2 = {"expectedReceiverType", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "getExpectedReceiverType", "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;)Lorg/jetbrains/kotlin/types/KotlinType;", "coerceToExpectedReceiverType", "", "descriptor", "createInlineClassAwareCallerIfNeeded", "Lkotlin/reflect/jvm/internal/calls/Caller;", "M", "Ljava/lang/reflect/Member;", "isDefault", "", "getBoxMethod", "Ljava/lang/reflect/Method;", "Ljava/lang/Class;", "getUnboxMethod", "hasInlineClassReceiver", "toInlineClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;", "kotlin-reflection"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/h.class */
public final class h {
    public static final Class<?> a(k kVar) {
        Class<?> cls;
        if (!(kVar instanceof d) || !e.a(kVar)) {
            cls = null;
        } else {
            d dVar = (d) kVar;
            Class<?> a2 = aj.a(dVar);
            if (a2 != null) {
                cls = a2;
            } else {
                throw new ab("Class object for the class " + dVar.getName() + " cannot be found (classId=" + a.a((g) kVar) + ')');
            }
        }
        return cls;
    }

    public static final Class<?> a(KotlinType toInlineClass) {
        p.d(toInlineClass, "$this$toInlineClass");
        return a(toInlineClass.getConstructor().getDeclarationDescriptor());
    }

    public static final Object a(Object obj, b descriptor) {
        p.d(descriptor, "descriptor");
        if ((descriptor instanceof an) && e.a((bc) descriptor)) {
            return obj;
        }
        KotlinType a2 = a(descriptor);
        Object obj2 = obj;
        if (a2 != null) {
            Class<?> a3 = a(a2);
            obj2 = obj;
            if (a3 != null) {
                Method a4 = a(a3, descriptor);
                obj2 = a4 == null ? obj : a4.invoke(obj, new Object[0]);
            }
        }
        return obj2;
    }

    public static final Method a(Class<?> getUnboxMethod, b descriptor) {
        p.d(getUnboxMethod, "$this$getUnboxMethod");
        p.d(descriptor, "descriptor");
        try {
            Method declaredMethod = getUnboxMethod.getDeclaredMethod("unbox-impl", new Class[0]);
            p.b(declaredMethod, "getDeclaredMethod(\"unbox…FOR_INLINE_CLASS_MEMBERS)");
            return declaredMethod;
        } catch (NoSuchMethodException e) {
            throw new ab("No unbox method found in inline class: " + getUnboxMethod + " (calling " + descriptor + ')');
        }
    }

    public static /* synthetic */ d a(d dVar, b bVar) {
        return a(dVar, bVar, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d6, code lost:
        if ((r0 != null && kotlin.reflect.jvm.internal.impl.resolve.e.a(r0)) != false) goto L_0x00d9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <M extends java.lang.reflect.Member> kotlin.reflect.jvm.internal.a.d<M> a(kotlin.reflect.jvm.internal.a.d<? extends M> r6, kotlin.reflect.jvm.internal.impl.descriptors.b r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.a.h.a(kotlin.reflect.jvm.internal.a.d, kotlin.reflect.jvm.internal.impl.descriptors.b, boolean):kotlin.reflect.jvm.internal.a.d");
    }

    private static final KotlinType a(b bVar) {
        aq extensionReceiverParameter = bVar.getExtensionReceiverParameter();
        aq dispatchReceiverParameter = bVar.getDispatchReceiverParameter();
        if (extensionReceiverParameter != null) {
            return extensionReceiverParameter.g();
        }
        SimpleType simpleType = null;
        if (dispatchReceiverParameter == null) {
            return null;
        }
        if (bVar instanceof j) {
            return dispatchReceiverParameter.g();
        }
        k containingDeclaration = bVar.getContainingDeclaration();
        k kVar = containingDeclaration;
        if (!(containingDeclaration instanceof d)) {
            kVar = null;
        }
        d dVar = (d) kVar;
        if (dVar != null) {
            simpleType = dVar.getDefaultType();
        }
        return simpleType;
    }

    public static final Method b(Class<?> getBoxMethod, b descriptor) {
        p.d(getBoxMethod, "$this$getBoxMethod");
        p.d(descriptor, "descriptor");
        try {
            Method declaredMethod = getBoxMethod.getDeclaredMethod("box-impl", a(getBoxMethod, descriptor).getReturnType());
            p.b(declaredMethod, "getDeclaredMethod(\"box\" …d(descriptor).returnType)");
            return declaredMethod;
        } catch (NoSuchMethodException e) {
            throw new ab("No box method found in inline class: " + getBoxMethod + " (calling " + descriptor + ')');
        }
    }
}
