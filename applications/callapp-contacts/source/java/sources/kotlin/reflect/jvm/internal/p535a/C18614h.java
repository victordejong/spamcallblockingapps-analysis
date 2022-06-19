package kotlin.reflect.jvm.internal.p535a;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.C18620ab;
import kotlin.reflect.jvm.internal.C18635aj;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.resolve.C19810e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\u001a\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0002H��\u001a6\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\n0\t\"\n\b��\u0010\n*\u0004\u0018\u00010\u000b*\b\u0012\u0004\u0012\u0002H\n0\t2\u0006\u0010\u0007\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\rH��\u001a\u0018\u0010\u000e\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0007\u001a\u00020\u0002H��\u001a\u0018\u0010\u0011\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0007\u001a\u00020\u0002H��\u001a\f\u0010\u0012\u001a\u00020\r*\u00020\u0002H\u0002\u001a\u0014\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010*\u0004\u0018\u00010\u0014H��\u001a\u0012\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010*\u00020\u0001H��\"\u001a\u0010��\u001a\u0004\u0018\u00010\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0015"}, m4298d2 = {"expectedReceiverType", "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "getExpectedReceiverType", "(Lorg/jetbrains/kotlin/descriptors/CallableMemberDescriptor;)Lorg/jetbrains/kotlin/types/KotlinType;", "coerceToExpectedReceiverType", "", "descriptor", "createInlineClassAwareCallerIfNeeded", "Lkotlin/reflect/jvm/internal/calls/Caller;", "M", "Ljava/lang/reflect/Member;", "isDefault", "", "getBoxMethod", "Ljava/lang/reflect/Method;", "Ljava/lang/Class;", "getUnboxMethod", "hasInlineClassReceiver", "toInlineClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.a.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/a/h.class */
public final class C18614h {
    /* renamed from: a */
    public static final Class<?> m3808a(AbstractC19193k abstractC19193k) {
        Class<?> cls;
        AbstractC19070d abstractC19070d;
        if (!(abstractC19193k instanceof AbstractC19070d) || !C19810e.m1444a(abstractC19193k)) {
            cls = null;
        } else {
            Class<?> m3758a = C18635aj.m3758a((AbstractC19070d) abstractC19193k);
            if (m3758a == null) {
                throw new C18620ab("Class object for the class " + abstractC19070d.getName() + " cannot be found (classId=" + C19756a.m1532a((AbstractC19129g) abstractC19193k) + ')');
            }
            cls = m3758a;
        }
        return cls;
    }

    /* renamed from: a */
    public static final Class<?> m3807a(KotlinType toInlineClass) {
        C18524p.m3840d(toInlineClass, "$this$toInlineClass");
        return m3808a(toInlineClass.getConstructor().getDeclarationDescriptor());
    }

    /* renamed from: a */
    public static final Object m3812a(Object obj, AbstractC19039b descriptor) {
        C18524p.m3840d(descriptor, "descriptor");
        if (!(descriptor instanceof AbstractC19017an) || !C19810e.m1446a((AbstractC19052bc) descriptor)) {
            KotlinType m3809a = m3809a(descriptor);
            Object obj2 = obj;
            if (m3809a != null) {
                Class<?> m3807a = m3807a(m3809a);
                obj2 = obj;
                if (m3807a != null) {
                    Method m3813a = m3813a(m3807a, descriptor);
                    obj2 = m3813a == null ? obj : m3813a.invoke(obj, new Object[0]);
                }
            }
            return obj2;
        }
        return obj;
    }

    /* renamed from: a */
    public static final Method m3813a(Class<?> getUnboxMethod, AbstractC19039b descriptor) {
        C18524p.m3840d(getUnboxMethod, "$this$getUnboxMethod");
        C18524p.m3840d(descriptor, "descriptor");
        try {
            Method declaredMethod = getUnboxMethod.getDeclaredMethod("unbox-impl", new Class[0]);
            C18524p.m3843b(declaredMethod, "getDeclaredMethod(\"unbox…FOR_INLINE_CLASS_MEMBERS)");
            return declaredMethod;
        } catch (NoSuchMethodException e) {
            throw new C18620ab("No unbox method found in inline class: " + getUnboxMethod + " (calling " + descriptor + ')');
        }
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC18584d m3811a(AbstractC18584d abstractC18584d, AbstractC19039b abstractC19039b) {
        return m3810a(abstractC18584d, abstractC19039b, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d6, code lost:
        if ((r0 != null && kotlin.reflect.jvm.internal.impl.resolve.C19810e.m1443a(r0)) != false) goto L31;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ef  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <M extends java.lang.reflect.Member> kotlin.reflect.jvm.internal.p535a.AbstractC18584d<M> m3810a(kotlin.reflect.jvm.internal.p535a.AbstractC18584d<? extends M> r6, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.p535a.C18614h.m3810a(kotlin.reflect.jvm.internal.a.d, kotlin.reflect.jvm.internal.impl.descriptors.b, boolean):kotlin.reflect.jvm.internal.a.d");
    }

    /* renamed from: a */
    private static final KotlinType m3809a(AbstractC19039b abstractC19039b) {
        AbstractC19020aq extensionReceiverParameter = abstractC19039b.getExtensionReceiverParameter();
        AbstractC19020aq dispatchReceiverParameter = abstractC19039b.getDispatchReceiverParameter();
        if (extensionReceiverParameter != null) {
            return extensionReceiverParameter.mo2593g();
        }
        if (dispatchReceiverParameter == null) {
            return null;
        }
        if (abstractC19039b instanceof AbstractC19192j) {
            return dispatchReceiverParameter.mo2593g();
        }
        AbstractC19193k containingDeclaration = abstractC19039b.getContainingDeclaration();
        AbstractC19193k abstractC19193k = containingDeclaration;
        if (!(containingDeclaration instanceof AbstractC19070d)) {
            abstractC19193k = null;
        }
        AbstractC19070d abstractC19070d = (AbstractC19070d) abstractC19193k;
        SimpleType simpleType = null;
        if (abstractC19070d != null) {
            simpleType = abstractC19070d.getDefaultType();
        }
        return simpleType;
    }

    /* renamed from: b */
    public static final Method m3806b(Class<?> getBoxMethod, AbstractC19039b descriptor) {
        C18524p.m3840d(getBoxMethod, "$this$getBoxMethod");
        C18524p.m3840d(descriptor, "descriptor");
        try {
            Method declaredMethod = getBoxMethod.getDeclaredMethod("box-impl", m3813a(getBoxMethod, descriptor).getReturnType());
            C18524p.m3843b(declaredMethod, "getDeclaredMethod(\"box\" …d(descriptor).returnType)");
            return declaredMethod;
        } catch (NoSuchMethodException e) {
            throw new C18620ab("No box method found in inline class: " + getBoxMethod + " (calling " + descriptor + ')');
        }
    }
}
