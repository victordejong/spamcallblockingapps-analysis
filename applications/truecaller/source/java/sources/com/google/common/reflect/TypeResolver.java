package com.google.common.reflect;

import com.google.common.base.Function;
import com.google.common.collect.RegularImmutableMap;
import com.google.common.reflect.Types;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/common/reflect/TypeResolver.class */
public final class TypeResolver {
    public final TypeTable typeTable;

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/TypeResolver$TypeTable.class */
    public static class TypeTable {
        /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.reflect.GenericDeclaration] */
        public Type resolveInternal(TypeVariable<?> typeVariable, TypeTable typeTable) {
            Type type = (Type) RegularImmutableMap.EMPTY.get(new TypeVariableKey(typeVariable));
            if (type == null) {
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length == 0) {
                    return typeVariable;
                }
                Type[] resolveTypes = new TypeResolver(typeTable, null).resolveTypes(bounds);
                return (!Types.NativeTypeVariableEquals.NATIVE_TYPE_VARIABLE_ONLY || !Arrays.equals(bounds, resolveTypes)) ? Types.newArtificialTypeVariable(typeVariable.getGenericDeclaration(), typeVariable.getName(), resolveTypes) : typeVariable;
            }
            return new TypeResolver(typeTable, null).resolveType(type);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/common/reflect/TypeResolver$TypeVariableKey.class */
    public static final class TypeVariableKey {
        public final TypeVariable<?> var;

        public TypeVariableKey(TypeVariable<?> typeVariable) {
            Objects.requireNonNull(typeVariable);
            this.var = typeVariable;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof TypeVariableKey) {
                TypeVariable<?> typeVariable = ((TypeVariableKey) obj).var;
                z = false;
                if (this.var.getGenericDeclaration().equals(typeVariable.getGenericDeclaration())) {
                    z = false;
                    if (this.var.getName().equals(typeVariable.getName())) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.var.getGenericDeclaration(), this.var.getName()});
        }

        public String toString() {
            return this.var.toString();
        }
    }

    public TypeResolver() {
        this.typeTable = new TypeTable();
    }

    public TypeResolver(TypeTable typeTable, 1 r5) {
        this.typeTable = typeTable;
    }

    public Type resolveType(Type type) {
        Types.ParameterizedTypeImpl parameterizedTypeImpl;
        Objects.requireNonNull(type);
        if (type instanceof TypeVariable) {
            TypeTable typeTable = this.typeTable;
            TypeVariable<?> typeVariable = (TypeVariable) type;
            return typeTable.resolveInternal(typeVariable, new TypeTable.1(typeVariable, typeTable));
        } else if (!(type instanceof ParameterizedType)) {
            if (type instanceof GenericArrayType) {
                return Types.newArrayType(resolveType(((GenericArrayType) type).getGenericComponentType()));
            }
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new Types.WildcardTypeImpl(resolveTypes(wildcardType.getLowerBounds()), resolveTypes(wildcardType.getUpperBounds()));
        } else {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type ownerType = parameterizedType.getOwnerType();
            Type resolveType = ownerType == null ? null : resolveType(ownerType);
            Type resolveType2 = resolveType(parameterizedType.getRawType());
            Type[] resolveTypes = resolveTypes(parameterizedType.getActualTypeArguments());
            Class<?> cls = (Class) resolveType2;
            Function<Type, String> function = Types.TYPE_NAME;
            if (resolveType == null) {
                parameterizedTypeImpl = new Types.ParameterizedTypeImpl(Types.ClassOwnership.JVM_BEHAVIOR.getOwnerType(cls), cls, resolveTypes);
            } else {
                Objects.requireNonNull(resolveTypes);
                C26232y.checkArgument(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
                parameterizedTypeImpl = new Types.ParameterizedTypeImpl(resolveType, cls, resolveTypes);
            }
            return parameterizedTypeImpl;
        }
    }

    public final Type[] resolveTypes(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = resolveType(typeArr[i]);
        }
        return typeArr2;
    }
}
