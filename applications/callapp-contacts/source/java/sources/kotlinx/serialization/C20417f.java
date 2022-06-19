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
import kotlin.jvm.C18458a;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.p571a.C20331c;
import kotlinx.serialization.p571a.C20332d;
import kotlinx.serialization.p571a.C20333e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0004\"\u0006\b��\u0010\u0006\u0018\u0001H\u0087\b¨\u0006\u0007"}, m4298d2 = {"serializerByTypeToken", "Lkotlinx/serialization/KSerializer;", "", "type", "Ljava/lang/reflect/Type;", "typeTokenOf", "T", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.f */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/f.class */
public final class C20417f {
    /* renamed from: a */
    public static final KSerializer<Object> m691a(Type type) {
        AbstractC18551c abstractC18551c;
        while (true) {
            Type type2 = type;
            C18524p.m3841c(type2, "type");
            if (type instanceof GenericArrayType) {
                Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
                Type type3 = genericComponentType;
                if (genericComponentType instanceof WildcardType) {
                    Type[] upperBounds = ((WildcardType) genericComponentType).getUpperBounds();
                    C18524p.m3849a((Object) upperBounds, "it.upperBounds");
                    type3 = (Type) C18273i.m4189c(upperBounds);
                }
                Type eType = type3;
                C18524p.m3849a((Object) eType, "eType");
                KSerializer<Object> m691a = m691a(type3);
                if (type3 instanceof ParameterizedType) {
                    Type rawType = ((ParameterizedType) type3).getRawType();
                    if (rawType == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<*>");
                    }
                    abstractC18551c = C18458a.m3895a((Class) rawType);
                } else if (!(type3 instanceof AbstractC18551c)) {
                    throw new IllegalStateException("unsupported type in GenericArray: " + C18496ac.m3882b(type3.getClass()));
                } else {
                    abstractC18551c = (AbstractC18551c) type3;
                }
                if (abstractC18551c == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                }
                return C20333e.m731a(abstractC18551c, m691a);
            } else if (type instanceof Class) {
                Class cls = (Class) type;
                if (!cls.isArray()) {
                    AbstractC18551c m3895a = C18458a.m3895a(cls);
                    if (m3895a == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                    }
                    KSerializer<Object> m690a = C20418g.m690a(m3895a);
                    if (m690a == null) {
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    return m690a;
                }
                Class<?> componentType = cls.getComponentType();
                C18524p.m3849a((Object) componentType, "type.componentType");
                KSerializer<Object> m691a2 = m691a(componentType);
                AbstractC18551c m3895a2 = C18458a.m3895a(componentType);
                if (m3895a2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                }
                return C20333e.m731a(m3895a2, m691a2);
            } else if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type rawType2 = parameterizedType.getRawType();
                if (rawType2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<*>");
                }
                Class cls2 = (Class) rawType2;
                Type[] args = parameterizedType.getActualTypeArguments();
                if (List.class.isAssignableFrom(cls2)) {
                    Type type4 = args[0];
                    C18524p.m3849a((Object) type4, "args[0]");
                    return C20332d.m743a(m691a(type4));
                } else if (Set.class.isAssignableFrom(cls2)) {
                    Type type5 = args[0];
                    C18524p.m3849a((Object) type5, "args[0]");
                    return C20332d.m741b(m691a(type5));
                } else if (Map.class.isAssignableFrom(cls2)) {
                    Type type6 = args[0];
                    C18524p.m3849a((Object) type6, "args[0]");
                    KSerializer<Object> m691a3 = m691a(type6);
                    Type type7 = args[1];
                    C18524p.m3849a((Object) type7, "args[1]");
                    return C20332d.m742a(m691a3, m691a(type7));
                } else if (Map.Entry.class.isAssignableFrom(cls2)) {
                    Type type8 = args[0];
                    C18524p.m3849a((Object) type8, "args[0]");
                    KSerializer<Object> m691a4 = m691a(type8);
                    Type type9 = args[1];
                    C18524p.m3849a((Object) type9, "args[1]");
                    return C20331c.m744a(m691a4, m691a(type9));
                } else {
                    C18524p.m3849a((Object) args, "args");
                    ArrayList arrayList = new ArrayList(args.length);
                    for (Type it2 : args) {
                        C18524p.m3849a((Object) it2, "it");
                        KSerializer<Object> m691a5 = m691a(it2);
                        if (m691a5 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<kotlin.Any?>");
                        }
                        arrayList.add(m691a5);
                    }
                    Object[] array = arrayList.toArray(new KSerializer[0]);
                    if (array == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                    KSerializer[] kSerializerArr = (KSerializer[]) array;
                    KSerializer<Object> m653a = C20459q.m653a(C18458a.m3895a(cls2), (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
                    KSerializer<Object> kSerializer = m653a;
                    if (!(m653a instanceof KSerializer)) {
                        kSerializer = null;
                    }
                    KSerializer<Object> kSerializer2 = kSerializer;
                    if (kSerializer == null) {
                        AbstractC18551c m3895a3 = C18458a.m3895a(cls2);
                        if (m3895a3 == null) {
                            throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                        }
                        kSerializer2 = C20418g.m690a(m3895a3);
                        if (kSerializer2 == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                    }
                    return kSerializer2;
                }
            } else if (!(type instanceof WildcardType)) {
                throw new IllegalArgumentException("typeToken should be an instance of Class<?>, GenericArray, ParametrizedType or WildcardType, but actual type is " + type + ' ' + C18496ac.m3882b(type.getClass()));
            } else {
                Type[] upperBounds2 = ((WildcardType) type).getUpperBounds();
                C18524p.m3849a((Object) upperBounds2, "type.upperBounds");
                Object c = C18273i.m4189c(upperBounds2);
                C18524p.m3849a(c, "type.upperBounds.first()");
                type = (Type) c;
            }
        }
    }
}
