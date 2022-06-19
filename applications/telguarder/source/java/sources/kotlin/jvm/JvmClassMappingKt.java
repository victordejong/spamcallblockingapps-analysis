package kotlin.jvm;

import java.lang.annotation.Annotation;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��,\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a\u001f\u0010\u0018\u001a\u00020\u0019\"\n\b��\u0010\u0002\u0018\u0001*\u00020\r*\u0006\u0012\u0002\b\u00030\u001a¢\u0006\u0002\u0010\u001b\"'\u0010��\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00028F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"-\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00018G¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"&\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\"\b\b��\u0010\u0002*\u00020\r*\u0002H\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\n\u0010\u000e\";\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00010\u0007\"\b\b��\u0010\u0002*\u00020\r*\b\u0012\u0004\u0012\u0002H\u00020\u00018Ç\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"+\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\"\b\b��\u0010\u0002*\u00020\r*\b\u0012\u0004\u0012\u0002H\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000b\"-\u0010\u0013\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0007\"\b\b��\u0010\u0002*\u00020\r*\b\u0012\u0004\u0012\u0002H\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000b\"+\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\r*\b\u0012\u0004\u0012\u0002H\u00020\u00078G¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, m400d2 = {"annotationClass", "Lkotlin/reflect/KClass;", "T", "", "getAnnotationClass", "(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;", "java", "Ljava/lang/Class;", "getJavaClass$annotations", "(Lkotlin/reflect/KClass;)V", "getJavaClass", "(Lkotlin/reflect/KClass;)Ljava/lang/Class;", "javaClass", "", "(Ljava/lang/Object;)Ljava/lang/Class;", "getRuntimeClassOfKClassInstance$annotations", "getRuntimeClassOfKClassInstance", "javaObjectType", "getJavaObjectType", "javaPrimitiveType", "getJavaPrimitiveType", "kotlin", "getKotlinClass", "(Ljava/lang/Class;)Lkotlin/reflect/KClass;", "isArrayOf", "", "", "([Ljava/lang/Object;)Z", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/jvm/JvmClassMappingKt.class */
public final class JvmClassMappingKt {
    public static final <T extends Annotation> KClass<? extends T> getAnnotationClass(T annotationClass) {
        Intrinsics.checkNotNullParameter(annotationClass, "$this$annotationClass");
        KClass<? extends T> kotlinClass = getKotlinClass(annotationClass.annotationType());
        Objects.requireNonNull(kotlinClass, "null cannot be cast to non-null type kotlin.reflect.KClass<out T>");
        return kotlinClass;
    }

    public static final <T> Class<T> getJavaClass(T javaClass) {
        Intrinsics.checkNotNullParameter(javaClass, "$this$javaClass");
        Class<T> cls = (Class<T>) javaClass.getClass();
        Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<T>");
        return cls;
    }

    public static final <T> Class<T> getJavaClass(KClass<T> java) {
        Intrinsics.checkNotNullParameter(java, "$this$java");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) java).getJClass();
        Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<T>");
        return cls;
    }

    public static /* synthetic */ void getJavaClass$annotations(KClass kClass) {
    }

    public static final <T> Class<T> getJavaObjectType(KClass<T> javaObjectType) {
        Intrinsics.checkNotNullParameter(javaObjectType, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) javaObjectType).getJClass();
        if (!cls.isPrimitive()) {
            Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<T>");
            return cls;
        }
        String name = cls.getName();
        if (name != null) {
            switch (name.hashCode()) {
                case -1325958191:
                    if (name.equals("double")) {
                        cls = Double.class;
                        break;
                    }
                    break;
                case 104431:
                    if (name.equals("int")) {
                        cls = Integer.class;
                        break;
                    }
                    break;
                case 3039496:
                    if (name.equals("byte")) {
                        cls = Byte.class;
                        break;
                    }
                    break;
                case 3052374:
                    if (name.equals("char")) {
                        cls = Character.class;
                        break;
                    }
                    break;
                case 3327612:
                    if (name.equals("long")) {
                        cls = Long.class;
                        break;
                    }
                    break;
                case 3625364:
                    if (name.equals("void")) {
                        cls = Void.class;
                        break;
                    }
                    break;
                case 64711720:
                    if (name.equals("boolean")) {
                        cls = Boolean.class;
                        break;
                    }
                    break;
                case 97526364:
                    if (name.equals("float")) {
                        cls = Float.class;
                        break;
                    }
                    break;
                case 109413500:
                    if (name.equals("short")) {
                        cls = Short.class;
                        break;
                    }
                    break;
            }
        }
        Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<T>");
        return cls;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final <T> Class<T> getJavaPrimitiveType(KClass<T> javaPrimitiveType) {
        Class<T> cls;
        Intrinsics.checkNotNullParameter(javaPrimitiveType, "$this$javaPrimitiveType");
        Class<T> cls2 = (Class<T>) ((ClassBasedDeclarationContainer) javaPrimitiveType).getJClass();
        if (cls2.isPrimitive()) {
            Objects.requireNonNull(cls2, "null cannot be cast to non-null type java.lang.Class<T>");
            return cls2;
        }
        String name = cls2.getName();
        if (name != null) {
            switch (name.hashCode()) {
                case -2056817302:
                    if (name.equals("java.lang.Integer")) {
                        cls = Integer.TYPE;
                        break;
                    }
                    break;
                case -527879800:
                    if (name.equals("java.lang.Float")) {
                        cls = Float.TYPE;
                        break;
                    }
                    break;
                case -515992664:
                    if (name.equals("java.lang.Short")) {
                        cls = Short.TYPE;
                        break;
                    }
                    break;
                case 155276373:
                    if (name.equals("java.lang.Character")) {
                        cls = Character.TYPE;
                        break;
                    }
                    break;
                case 344809556:
                    if (name.equals("java.lang.Boolean")) {
                        cls = Boolean.TYPE;
                        break;
                    }
                    break;
                case 398507100:
                    if (name.equals("java.lang.Byte")) {
                        cls = Byte.TYPE;
                        break;
                    }
                    break;
                case 398795216:
                    if (name.equals("java.lang.Long")) {
                        cls = Long.TYPE;
                        break;
                    }
                    break;
                case 399092968:
                    if (name.equals("java.lang.Void")) {
                        cls = Void.TYPE;
                        break;
                    }
                    break;
                case 761287205:
                    if (name.equals("java.lang.Double")) {
                        cls = Double.TYPE;
                        break;
                    }
                    break;
            }
            return cls;
        }
        cls = null;
        return cls;
    }

    public static final <T> KClass<T> getKotlinClass(Class<T> kotlin2) {
        Intrinsics.checkNotNullParameter(kotlin2, "$this$kotlin");
        return Reflection.getOrCreateKotlinClass(kotlin2);
    }

    public static final <T> Class<KClass<T>> getRuntimeClassOfKClassInstance(KClass<T> javaClass) {
        Intrinsics.checkNotNullParameter(javaClass, "$this$javaClass");
        Class<KClass<T>> cls = (Class<KClass<T>>) javaClass.getClass();
        Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<kotlin.reflect.KClass<T>>");
        return cls;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use 'java' property to get Java class corresponding to this Kotlin class or cast this instance to Any if you really want to get the runtime Java class of this implementation of KClass.", replaceWith = @ReplaceWith(expression = "(this as Any).javaClass", imports = {}))
    public static /* synthetic */ void getRuntimeClassOfKClassInstance$annotations(KClass kClass) {
    }

    public static final /* synthetic */ <T> boolean isArrayOf(Object[] isArrayOf) {
        Intrinsics.checkNotNullParameter(isArrayOf, "$this$isArrayOf");
        Intrinsics.reifiedOperationMarker(4, "T");
        return Object.class.isAssignableFrom(isArrayOf.getClass().getComponentType());
    }
}
