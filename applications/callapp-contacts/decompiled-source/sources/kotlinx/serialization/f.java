package kotlinx.serialization;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.a.i;
import kotlin.jvm.a;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlinx.serialization.a.d;
import kotlinx.serialization.a.e;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0004\"\u0006\b��\u0010\u0006\u0018\u0001H\u0087\b¨\u0006\u0007"}, d2 = {"serializerByTypeToken", "Lkotlinx/serialization/KSerializer;", "", "type", "Ljava/lang/reflect/Type;", "typeTokenOf", "T", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/f.class */
public final class f {
    public static final KSerializer<Object> a(Type type) {
        c cVar;
        while (true) {
            p.c(type, "type");
            if (type instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
                Type eType = genericComponentType;
                if (genericComponentType instanceof WildcardType) {
                    Type[] upperBounds = ((WildcardType) genericComponentType).getUpperBounds();
                    p.a((Object) upperBounds, "it.upperBounds");
                    eType = (Type) i.c(upperBounds);
                }
                p.a((Object) eType, "eType");
                KSerializer<Object> a2 = a(eType);
                if (eType instanceof ParameterizedType) {
                    Type rawType = ((ParameterizedType) eType).getRawType();
                    if (rawType != null) {
                        cVar = a.a((Class) rawType);
                    } else {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<*>");
                    }
                } else if (eType instanceof c) {
                    cVar = (c) eType;
                } else {
                    throw new IllegalStateException("unsupported type in GenericArray: " + ac.b(eType.getClass()));
                }
                if (cVar != null) {
                    return e.a(cVar, a2);
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            } else if (type instanceof Class) {
                Class cls = (Class) type;
                if (!cls.isArray()) {
                    c a3 = a.a(cls);
                    if (a3 != null) {
                        KSerializer<Object> a4 = g.a(a3);
                        if (a4 != null) {
                            return a4;
                        }
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                }
                Class<?> componentType = cls.getComponentType();
                p.a((Object) componentType, "type.componentType");
                KSerializer<Object> a5 = a(componentType);
                c a6 = a.a(componentType);
                if (a6 != null) {
                    return e.a(a6, a5);
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            } else if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type rawType2 = parameterizedType.getRawType();
                if (rawType2 != null) {
                    Class cls2 = (Class) rawType2;
                    Type[] args = parameterizedType.getActualTypeArguments();
                    if (List.class.isAssignableFrom(cls2)) {
                        Type type2 = args[0];
                        p.a((Object) type2, "args[0]");
                        return d.a(a(type2));
                    } else if (Set.class.isAssignableFrom(cls2)) {
                        Type type3 = args[0];
                        p.a((Object) type3, "args[0]");
                        return d.b(a(type3));
                    } else if (Map.class.isAssignableFrom(cls2)) {
                        Type type4 = args[0];
                        p.a((Object) type4, "args[0]");
                        KSerializer<Object> a7 = a(type4);
                        Type type5 = args[1];
                        p.a((Object) type5, "args[1]");
                        return d.a(a7, a(type5));
                    } else if (Map.Entry.class.isAssignableFrom(cls2)) {
                        Type type6 = args[0];
                        p.a((Object) type6, "args[0]");
                        KSerializer<Object> a8 = a(type6);
                        Type type7 = args[1];
                        p.a((Object) type7, "args[1]");
                        return kotlinx.serialization.a.c.a(a8, a(type7));
                    } else {
                        p.a((Object) args, "args");
                        ArrayList arrayList = new ArrayList(args.length);
                        for (Type it2 : args) {
                            p.a((Object) it2, "it");
                            KSerializer<Object> a9 = a(it2);
                            if (a9 != null) {
                                arrayList.add(a9);
                            } else {
                                throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any?>");
                            }
                        }
                        Object[] array = arrayList.toArray(new KSerializer[0]);
                        if (array != null) {
                            KSerializer[] kSerializerArr = (KSerializer[]) array;
                            KSerializer<Object> a10 = q.a(a.a(cls2), (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
                            KSerializer<Object> kSerializer = a10;
                            if (!(a10 instanceof KSerializer)) {
                                kSerializer = null;
                            }
                            KSerializer<Object> kSerializer2 = kSerializer;
                            if (kSerializer == null) {
                                c a11 = a.a(cls2);
                                if (a11 != null) {
                                    kSerializer2 = g.a(a11);
                                    if (kSerializer2 == null) {
                                        throw new IllegalArgumentException("Required value was null.".toString());
                                    }
                                } else {
                                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                                }
                            }
                            return kSerializer2;
                        }
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<*>");
                }
            } else if (type instanceof WildcardType) {
                Type[] upperBounds2 = ((WildcardType) type).getUpperBounds();
                p.a((Object) upperBounds2, "type.upperBounds");
                Object c2 = i.c(upperBounds2);
                p.a(c2, "type.upperBounds.first()");
                type = (Type) c2;
            } else {
                throw new IllegalArgumentException("typeToken should be an instance of Class<?>, GenericArray, ParametrizedType or WildcardType, but actual type is " + type + ' ' + ac.b(type.getClass()));
            }
        }
    }
}
