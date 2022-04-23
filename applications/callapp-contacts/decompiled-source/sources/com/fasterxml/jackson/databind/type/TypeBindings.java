package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.reflect.TypeVariable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/type/TypeBindings.class */
public class TypeBindings implements Serializable {
    private static final TypeBindings EMPTY;
    private static final String[] NO_STRINGS;
    private static final JavaType[] NO_TYPES;
    private final int _hashCode;
    private final String[] _names;
    private final JavaType[] _types;
    private final String[] _unboundVariables;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/type/TypeBindings$AsKey.class */
    static final class AsKey {
        private final int _hash;
        private final JavaType[] _params;
        private final Class<?> _raw;

        public AsKey(Class<?> cls, JavaType[] javaTypeArr, int i) {
            this._raw = cls;
            this._params = javaTypeArr;
            this._hash = i;
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            AsKey asKey = (AsKey) obj;
            if (!(this._hash == asKey._hash && this._raw == asKey._raw)) {
                return false;
            }
            JavaType[] javaTypeArr = asKey._params;
            int length = this._params.length;
            if (length != javaTypeArr.length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (!this._params[i].equals(javaTypeArr[i])) {
                    return false;
                }
            }
            return true;
        }

        public final int hashCode() {
            return this._hash;
        }

        public final String toString() {
            return this._raw.getName() + "<>";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash.class */
    public static class TypeParamStash {
        private static final TypeVariable<?>[] VARS_ABSTRACT_LIST = AbstractList.class.getTypeParameters();
        private static final TypeVariable<?>[] VARS_COLLECTION = Collection.class.getTypeParameters();
        private static final TypeVariable<?>[] VARS_ITERABLE = Iterable.class.getTypeParameters();
        private static final TypeVariable<?>[] VARS_LIST = List.class.getTypeParameters();
        private static final TypeVariable<?>[] VARS_ARRAY_LIST = ArrayList.class.getTypeParameters();
        private static final TypeVariable<?>[] VARS_MAP = Map.class.getTypeParameters();
        private static final TypeVariable<?>[] VARS_HASH_MAP = HashMap.class.getTypeParameters();
        private static final TypeVariable<?>[] VARS_LINKED_HASH_MAP = LinkedHashMap.class.getTypeParameters();

        TypeParamStash() {
        }

        public static TypeVariable<?>[] paramsFor1(Class<?> cls) {
            return cls == Collection.class ? VARS_COLLECTION : cls == List.class ? VARS_LIST : cls == ArrayList.class ? VARS_ARRAY_LIST : cls == AbstractList.class ? VARS_ABSTRACT_LIST : cls == Iterable.class ? VARS_ITERABLE : cls.getTypeParameters();
        }

        public static TypeVariable<?>[] paramsFor2(Class<?> cls) {
            return cls == Map.class ? VARS_MAP : cls == HashMap.class ? VARS_HASH_MAP : cls == LinkedHashMap.class ? VARS_LINKED_HASH_MAP : cls.getTypeParameters();
        }
    }

    static {
        String[] strArr = new String[0];
        NO_STRINGS = strArr;
        JavaType[] javaTypeArr = new JavaType[0];
        NO_TYPES = javaTypeArr;
        EMPTY = new TypeBindings(strArr, javaTypeArr, null);
    }

    private TypeBindings(String[] strArr, JavaType[] javaTypeArr, String[] strArr2) {
        String[] strArr3 = strArr == null ? NO_STRINGS : strArr;
        this._names = strArr3;
        JavaType[] javaTypeArr2 = javaTypeArr == null ? NO_TYPES : javaTypeArr;
        this._types = javaTypeArr2;
        if (strArr3.length == javaTypeArr2.length) {
            int length = javaTypeArr2.length;
            int i = 1;
            for (int i2 = 0; i2 < length; i2++) {
                i += this._types[i2].hashCode();
            }
            this._unboundVariables = strArr2;
            this._hashCode = i;
            return;
        }
        throw new IllegalArgumentException("Mismatching names (" + strArr3.length + "), types (" + javaTypeArr2.length + ")");
    }

    public static TypeBindings create(Class<?> cls, JavaType javaType) {
        TypeVariable<?>[] paramsFor1 = TypeParamStash.paramsFor1(cls);
        int length = paramsFor1 == null ? 0 : paramsFor1.length;
        if (length == 1) {
            return new TypeBindings(new String[]{paramsFor1[0].getName()}, new JavaType[]{javaType}, null);
        }
        throw new IllegalArgumentException("Cannot create TypeBindings for class " + cls.getName() + " with 1 type parameter: class expects " + length);
    }

    public static TypeBindings create(Class<?> cls, JavaType javaType, JavaType javaType2) {
        TypeVariable<?>[] paramsFor2 = TypeParamStash.paramsFor2(cls);
        int length = paramsFor2 == null ? 0 : paramsFor2.length;
        if (length == 2) {
            return new TypeBindings(new String[]{paramsFor2[0].getName(), paramsFor2[1].getName()}, new JavaType[]{javaType, javaType2}, null);
        }
        throw new IllegalArgumentException("Cannot create TypeBindings for class " + cls.getName() + " with 2 type parameters: class expects " + length);
    }

    public static TypeBindings create(Class<?> cls, List<JavaType> list) {
        return create(cls, (list == null || list.isEmpty()) ? NO_TYPES : (JavaType[]) list.toArray(NO_TYPES));
    }

    public static TypeBindings create(Class<?> cls, JavaType[] javaTypeArr) {
        JavaType[] javaTypeArr2;
        String[] strArr;
        int i = 0;
        if (javaTypeArr == null) {
            javaTypeArr2 = NO_TYPES;
        } else {
            int length = javaTypeArr.length;
            if (length == 1) {
                return create(cls, javaTypeArr[0]);
            }
            if (length == 2) {
                return create(cls, javaTypeArr[0], javaTypeArr[1]);
            }
            javaTypeArr2 = javaTypeArr;
        }
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters != null && typeParameters.length != 0) {
            int length2 = typeParameters.length;
            String[] strArr2 = new String[length2];
            while (true) {
                strArr = strArr2;
                if (i >= length2) {
                    break;
                }
                strArr2[i] = typeParameters[i].getName();
                i++;
            }
        } else {
            strArr = NO_STRINGS;
        }
        if (strArr.length == javaTypeArr2.length) {
            return new TypeBindings(strArr, javaTypeArr2, null);
        }
        StringBuilder sb = new StringBuilder("Cannot create TypeBindings for class ");
        sb.append(cls.getName());
        sb.append(" with ");
        sb.append(javaTypeArr2.length);
        sb.append(" type parameter");
        sb.append(javaTypeArr2.length == 1 ? "" : "s");
        sb.append(": class expects ");
        sb.append(strArr.length);
        throw new IllegalArgumentException(sb.toString());
    }

    public static TypeBindings create(List<String> list, List<JavaType> list2) {
        return (list == null || list.isEmpty() || list2 == null || list2.isEmpty()) ? EMPTY : new TypeBindings((String[]) list.toArray(NO_STRINGS), (JavaType[]) list2.toArray(NO_TYPES), null);
    }

    public static TypeBindings createIfNeeded(Class<?> cls, JavaType javaType) {
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        int length = typeParameters == null ? 0 : typeParameters.length;
        if (length == 0) {
            return EMPTY;
        }
        if (length == 1) {
            return new TypeBindings(new String[]{typeParameters[0].getName()}, new JavaType[]{javaType}, null);
        }
        throw new IllegalArgumentException("Cannot create TypeBindings for class " + cls.getName() + " with 1 type parameter: class expects " + length);
    }

    public static TypeBindings createIfNeeded(Class<?> cls, JavaType[] javaTypeArr) {
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters == null || typeParameters.length == 0) {
            return EMPTY;
        }
        JavaType[] javaTypeArr2 = javaTypeArr;
        if (javaTypeArr == null) {
            javaTypeArr2 = NO_TYPES;
        }
        int length = typeParameters.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = typeParameters[i].getName();
        }
        if (length == javaTypeArr2.length) {
            return new TypeBindings(strArr, javaTypeArr2, null);
        }
        StringBuilder sb = new StringBuilder("Cannot create TypeBindings for class ");
        sb.append(cls.getName());
        sb.append(" with ");
        sb.append(javaTypeArr2.length);
        sb.append(" type parameter");
        sb.append(javaTypeArr2.length == 1 ? "" : "s");
        sb.append(": class expects ");
        sb.append(length);
        throw new IllegalArgumentException(sb.toString());
    }

    public static TypeBindings emptyBindings() {
        return EMPTY;
    }

    public Object asKey(Class<?> cls) {
        return new AsKey(cls, this._types, this._hashCode);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!ClassUtil.hasClass(obj, getClass())) {
            return false;
        }
        TypeBindings typeBindings = (TypeBindings) obj;
        int length = this._types.length;
        if (length != typeBindings.size()) {
            return false;
        }
        JavaType[] javaTypeArr = typeBindings._types;
        for (int i = 0; i < length; i++) {
            if (!javaTypeArr[i].equals(this._types[i])) {
                return false;
            }
        }
        return true;
    }

    public JavaType findBoundType(String str) {
        int length = this._names.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(this._names[i])) {
                JavaType javaType = this._types[i];
                JavaType javaType2 = javaType;
                if (javaType instanceof ResolvedRecursiveType) {
                    JavaType selfReferencedType = ((ResolvedRecursiveType) javaType).getSelfReferencedType();
                    javaType2 = javaType;
                    if (selfReferencedType != null) {
                        javaType2 = selfReferencedType;
                    }
                }
                return javaType2;
            }
        }
        return null;
    }

    public String getBoundName(int i) {
        if (i < 0) {
            return null;
        }
        String[] strArr = this._names;
        if (i >= strArr.length) {
            return null;
        }
        return strArr[i];
    }

    public JavaType getBoundType(int i) {
        if (i < 0) {
            return null;
        }
        JavaType[] javaTypeArr = this._types;
        if (i >= javaTypeArr.length) {
            return null;
        }
        return javaTypeArr[i];
    }

    public List<JavaType> getTypeParameters() {
        JavaType[] javaTypeArr = this._types;
        return javaTypeArr.length == 0 ? Collections.emptyList() : Arrays.asList(javaTypeArr);
    }

    public boolean hasUnbound(String str) {
        int i;
        String[] strArr = this._unboundVariables;
        if (strArr == null) {
            return false;
        }
        int length = strArr.length;
        do {
            i = length - 1;
            if (i < 0) {
                return false;
            }
            length = i;
        } while (!str.equals(this._unboundVariables[i]));
        return true;
    }

    public int hashCode() {
        return this._hashCode;
    }

    public boolean isEmpty() {
        return this._types.length == 0;
    }

    protected Object readResolve() {
        String[] strArr = this._names;
        return (strArr == null || strArr.length == 0) ? EMPTY : this;
    }

    public int size() {
        return this._types.length;
    }

    public String toString() {
        if (this._types.length == 0) {
            return "<>";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('<');
        int length = this._types.length;
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(this._types[i].getGenericSignature());
        }
        sb.append('>');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType[] typeParameterArray() {
        return this._types;
    }

    public TypeBindings withUnboundVariable(String str) {
        String[] strArr = this._unboundVariables;
        int length = strArr == null ? 0 : strArr.length;
        String[] strArr2 = length == 0 ? new String[1] : (String[]) Arrays.copyOf(strArr, length + 1);
        strArr2[length] = str;
        return new TypeBindings(this._names, this._types, strArr2);
    }
}
