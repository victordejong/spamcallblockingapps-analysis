package kotlin.jvm;

import java.lang.annotation.Annotation;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.AbstractC18514g;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a\u001f\u0010\u0018\u001a\u00020\u0019\"\n\b��\u0010\u0002\u0018\u0001*\u00020\r*\u0006\u0012\u0002\b\u00030\u001a¢\u0006\u0002\u0010\u001b\"'\u0010��\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00028F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"-\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00018G¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"&\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\"\b\b��\u0010\u0002*\u00020\r*\u0002H\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\n\u0010\u000e\";\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00010\u0007\"\b\b��\u0010\u0002*\u00020\r*\b\u0012\u0004\u0012\u0002H\u00020\u00018Ç\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000b\"+\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007\"\b\b��\u0010\u0002*\u00020\r*\b\u0012\u0004\u0012\u0002H\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000b\"-\u0010\u0013\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0007\"\b\b��\u0010\u0002*\u00020\r*\b\u0012\u0004\u0012\u0002H\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000b\"+\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\r*\b\u0012\u0004\u0012\u0002H\u00020\u00078G¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, m4298d2 = {"annotationClass", "Lkotlin/reflect/KClass;", "T", "", "getAnnotationClass", "(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;", "java", "Ljava/lang/Class;", "getJavaClass$annotations", "(Lkotlin/reflect/KClass;)V", "getJavaClass", "(Lkotlin/reflect/KClass;)Ljava/lang/Class;", "javaClass", "", "(Ljava/lang/Object;)Ljava/lang/Class;", "getRuntimeClassOfKClassInstance$annotations", "getRuntimeClassOfKClassInstance", "javaObjectType", "getJavaObjectType", "javaPrimitiveType", "getJavaPrimitiveType", "kotlin", "getKotlinClass", "(Ljava/lang/Class;)Lkotlin/reflect/KClass;", "isArrayOf", "", "", "([Ljava/lang/Object;)Z", "kotlin-stdlib"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.jvm.a */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/a.class */
public final class C18458a {
    /* renamed from: a */
    public static final <T> Class<T> m3893a(AbstractC18551c<T> java) {
        C18524p.m3840d(java, "$this$java");
        Class<T> cls = (Class<T>) ((AbstractC18514g) java).mo1163a();
        Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<T>");
        return cls;
    }

    /* renamed from: a */
    public static final <T> AbstractC18551c<T> m3895a(Class<T> kotlin2) {
        C18524p.m3840d(kotlin2, "$this$kotlin");
        return C18496ac.m3882b(kotlin2);
    }

    /* renamed from: a */
    public static final <T extends Annotation> AbstractC18551c<? extends T> m3894a(T annotationClass) {
        C18524p.m3840d(annotationClass, "$this$annotationClass");
        Class<? extends Annotation> annotationType = annotationClass.annotationType();
        C18524p.m3843b(annotationType, "(this as java.lang.annot…otation).annotationType()");
        AbstractC18551c<? extends T> m3895a = m3895a(annotationType);
        Objects.requireNonNull(m3895a, "null cannot be cast to non-null type kotlin.reflect.KClass<out T>");
        return m3895a;
    }

    /* renamed from: b */
    public static final <T> Class<T> m3892b(AbstractC18551c<T> javaPrimitiveType) {
        C18524p.m3840d(javaPrimitiveType, "$this$javaPrimitiveType");
        Class<T> cls = (Class<T>) ((AbstractC18514g) javaPrimitiveType).mo1163a();
        if (cls.isPrimitive()) {
            Objects.requireNonNull(cls, "null cannot be cast to non-null type java.lang.Class<T>");
            return cls;
        }
        String name = cls.getName();
        if (name == null) {
            return null;
        }
        switch (name.hashCode()) {
            case -2056817302:
                if (!name.equals("java.lang.Integer")) {
                    return null;
                }
                return Integer.TYPE;
            case -527879800:
                if (!name.equals("java.lang.Float")) {
                    return null;
                }
                return Float.TYPE;
            case -515992664:
                if (!name.equals("java.lang.Short")) {
                    return null;
                }
                return Short.TYPE;
            case 155276373:
                if (!name.equals("java.lang.Character")) {
                    return null;
                }
                return Character.TYPE;
            case 344809556:
                if (!name.equals("java.lang.Boolean")) {
                    return null;
                }
                return Boolean.TYPE;
            case 398507100:
                if (!name.equals("java.lang.Byte")) {
                    return null;
                }
                return Byte.TYPE;
            case 398795216:
                if (!name.equals("java.lang.Long")) {
                    return null;
                }
                return Long.TYPE;
            case 399092968:
                if (!name.equals("java.lang.Void")) {
                    return null;
                }
                return Void.TYPE;
            case 761287205:
                if (!name.equals("java.lang.Double")) {
                    return null;
                }
                return Double.TYPE;
            default:
                return null;
        }
    }

    /* renamed from: c */
    public static final <T> Class<T> m3891c(AbstractC18551c<T> javaObjectType) {
        C18524p.m3840d(javaObjectType, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((AbstractC18514g) javaObjectType).mo1163a();
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
}
