package kotlin.jvm;

import kotlin.Metadata;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\u001a!\u0010\u0004\u001a\u00020\u0003\"\n\b��\u0010\u0001\u0018\u0001*\u00020��*\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005\")\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00028��0\u0007\"\b\b��\u0010\u0001*\u00020\u0006*\u00028��8F@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\t\"/\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000b\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u00028��0\u00078G@\u0006¢\u0006\f\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\r\"(\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028��0\u000b\"\b\b��\u0010\u0001*\u00020��*\u00028��8Æ\u0002@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\u0011\"=\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00070\u000b\"\b\b��\u0010\u0001*\u00020��*\b\u0012\u0004\u0012\u00028��0\u00078Ç\u0002@\u0007X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0013\u0010\r\"-\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028��0\u000b\"\b\b��\u0010\u0001*\u00020��*\b\u0012\u0004\u0012\u00028��0\u00078F@\u0006¢\u0006\u0006\u001a\u0004\b\u0015\u0010\r\"/\u0010\u0018\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u000b\"\b\b��\u0010\u0001*\u00020��*\b\u0012\u0004\u0012\u00028��0\u00078F@\u0006¢\u0006\u0006\u001a\u0004\b\u0017\u0010\r\"-\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u0007\"\b\b��\u0010\u0001*\u00020��*\b\u0012\u0004\u0012\u00028��0\u000b8G@\u0006¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"", "T", "", "", "isArrayOf", "([Ljava/lang/Object;)Z", "", "Lkotlin/reflect/KClass;", "getAnnotationClass", "(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;", "annotationClass", "Ljava/lang/Class;", "getJavaClass", "(Lkotlin/reflect/KClass;)Ljava/lang/Class;", "getJavaClass$annotations", "(Lkotlin/reflect/KClass;)V", "java", "(Ljava/lang/Object;)Ljava/lang/Class;", "javaClass", "getRuntimeClassOfKClassInstance", "getRuntimeClassOfKClassInstance$annotations", "getJavaObjectType", "javaObjectType", "getJavaPrimitiveType", "javaPrimitiveType", "getKotlinClass", "(Ljava/lang/Class;)Lkotlin/reflect/KClass;", "kotlin", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/JvmClassMappingKt.class */
public final class JvmClassMappingKt {
    @JvmName
    @NotNull
    /* renamed from: a */
    public static final <T> Class<T> m1866a(@NotNull KClass<T> java) {
        Intrinsics.m1830e(java, "$this$java");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) java).mo1811c();
        if (cls != null) {
            return cls;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<T>");
    }

    @NotNull
    /* renamed from: b */
    public static final <T> Class<T> m1865b(@NotNull KClass<T> javaObjectType) {
        Intrinsics.m1830e(javaObjectType, "$this$javaObjectType");
        Class<T> cls = (Class<T>) ((ClassBasedDeclarationContainer) javaObjectType).mo1811c();
        if (cls.isPrimitive()) {
            String name = cls.getName();
            if (name != null) {
                switch (name.hashCode()) {
                    case -1325958191:
                        if (name.equals("double")) {
                            cls = (Class<T>) Double.class;
                            break;
                        }
                        break;
                    case 104431:
                        if (name.equals("int")) {
                            cls = (Class<T>) Integer.class;
                            break;
                        }
                        break;
                    case 3039496:
                        if (name.equals("byte")) {
                            cls = (Class<T>) Byte.class;
                            break;
                        }
                        break;
                    case 3052374:
                        if (name.equals("char")) {
                            cls = (Class<T>) Character.class;
                            break;
                        }
                        break;
                    case 3327612:
                        if (name.equals("long")) {
                            cls = (Class<T>) Long.class;
                            break;
                        }
                        break;
                    case 3625364:
                        if (name.equals("void")) {
                            cls = (Class<T>) Void.class;
                            break;
                        }
                        break;
                    case 64711720:
                        if (name.equals("boolean")) {
                            cls = (Class<T>) Boolean.class;
                            break;
                        }
                        break;
                    case 97526364:
                        if (name.equals("float")) {
                            cls = (Class<T>) Float.class;
                            break;
                        }
                        break;
                    case 109413500:
                        if (name.equals("short")) {
                            cls = (Class<T>) Short.class;
                            break;
                        }
                        break;
                }
            }
            if (cls != null) {
                return cls;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<T>");
        } else if (cls != null) {
            return cls;
        } else {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.Class<T>");
        }
    }

    @JvmName
    @NotNull
    /* renamed from: c */
    public static final <T> KClass<T> m1864c(@NotNull Class<T> kotlin2) {
        Intrinsics.m1830e(kotlin2, "$this$kotlin");
        return Reflection.m1809b(kotlin2);
    }
}
