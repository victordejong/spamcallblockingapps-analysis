package com.google.protobuf;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* JADX WARN: Init of enum BOOL can be incorrect */
/* JADX WARN: Init of enum BOOL_LIST can be incorrect */
/* JADX WARN: Init of enum BOOL_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum BYTES can be incorrect */
/* JADX WARN: Init of enum BYTES_LIST can be incorrect */
/* JADX WARN: Init of enum DOUBLE can be incorrect */
/* JADX WARN: Init of enum DOUBLE_LIST can be incorrect */
/* JADX WARN: Init of enum DOUBLE_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum ENUM can be incorrect */
/* JADX WARN: Init of enum ENUM_LIST can be incorrect */
/* JADX WARN: Init of enum ENUM_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum FIXED32 can be incorrect */
/* JADX WARN: Init of enum FIXED32_LIST can be incorrect */
/* JADX WARN: Init of enum FIXED32_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum FIXED64 can be incorrect */
/* JADX WARN: Init of enum FIXED64_LIST can be incorrect */
/* JADX WARN: Init of enum FIXED64_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum FLOAT can be incorrect */
/* JADX WARN: Init of enum FLOAT_LIST can be incorrect */
/* JADX WARN: Init of enum FLOAT_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum GROUP can be incorrect */
/* JADX WARN: Init of enum GROUP_LIST can be incorrect */
/* JADX WARN: Init of enum INT32 can be incorrect */
/* JADX WARN: Init of enum INT32_LIST can be incorrect */
/* JADX WARN: Init of enum INT32_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum INT64 can be incorrect */
/* JADX WARN: Init of enum INT64_LIST can be incorrect */
/* JADX WARN: Init of enum INT64_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum MESSAGE can be incorrect */
/* JADX WARN: Init of enum MESSAGE_LIST can be incorrect */
/* JADX WARN: Init of enum SFIXED32 can be incorrect */
/* JADX WARN: Init of enum SFIXED32_LIST can be incorrect */
/* JADX WARN: Init of enum SFIXED32_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum SFIXED64 can be incorrect */
/* JADX WARN: Init of enum SFIXED64_LIST can be incorrect */
/* JADX WARN: Init of enum SFIXED64_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum SINT32 can be incorrect */
/* JADX WARN: Init of enum SINT32_LIST can be incorrect */
/* JADX WARN: Init of enum SINT32_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum SINT64 can be incorrect */
/* JADX WARN: Init of enum SINT64_LIST can be incorrect */
/* JADX WARN: Init of enum SINT64_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum STRING can be incorrect */
/* JADX WARN: Init of enum STRING_LIST can be incorrect */
/* JADX WARN: Init of enum UINT32 can be incorrect */
/* JADX WARN: Init of enum UINT32_LIST can be incorrect */
/* JADX WARN: Init of enum UINT32_LIST_PACKED can be incorrect */
/* JADX WARN: Init of enum UINT64 can be incorrect */
/* JADX WARN: Init of enum UINT64_LIST can be incorrect */
/* JADX WARN: Init of enum UINT64_LIST_PACKED can be incorrect */
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/FieldType.class */
public enum FieldType {
    DOUBLE(0, r0, r0),
    FLOAT(1, r0, r0),
    INT64(2, r0, r0),
    UINT64(3, r0, r0),
    INT32(4, r0, r0),
    FIXED64(5, r0, r0),
    FIXED32(6, r0, r0),
    BOOL(7, r0, r0),
    STRING(8, r0, r0),
    MESSAGE(9, r0, r0),
    BYTES(10, r0, r0),
    UINT32(11, r0, r0),
    ENUM(12, r0, r0),
    SFIXED32(13, r0, r0),
    SFIXED64(14, r0, r0),
    SINT32(15, r0, r0),
    SINT64(16, r0, r0),
    GROUP(17, r0, r0),
    DOUBLE_LIST(18, r0, r0),
    FLOAT_LIST(19, r0, r0),
    INT64_LIST(20, r0, r0),
    UINT64_LIST(21, r0, r0),
    INT32_LIST(22, r0, r0),
    FIXED64_LIST(23, r0, r0),
    FIXED32_LIST(24, r0, r0),
    BOOL_LIST(25, r0, r0),
    STRING_LIST(26, r0, r0),
    MESSAGE_LIST(27, r0, r0),
    BYTES_LIST(28, r0, r0),
    UINT32_LIST(29, r0, r0),
    ENUM_LIST(30, r0, r0),
    SFIXED32_LIST(31, r0, r0),
    SFIXED64_LIST(32, r0, r0),
    SINT32_LIST(33, r0, r0),
    SINT64_LIST(34, r0, r0),
    DOUBLE_LIST_PACKED(35, r0, r0),
    FLOAT_LIST_PACKED(36, r0, r0),
    INT64_LIST_PACKED(37, r0, r0),
    UINT64_LIST_PACKED(38, r0, r0),
    INT32_LIST_PACKED(39, r0, r0),
    FIXED64_LIST_PACKED(40, r0, r0),
    FIXED32_LIST_PACKED(41, r0, r0),
    BOOL_LIST_PACKED(42, r0, r0),
    UINT32_LIST_PACKED(43, r0, r0),
    ENUM_LIST_PACKED(44, r0, r0),
    SFIXED32_LIST_PACKED(45, r0, r0),
    SFIXED64_LIST_PACKED(46, r0, r0),
    SINT32_LIST_PACKED(47, r0, JavaType.INT),
    SINT64_LIST_PACKED(48, r0, r0),
    GROUP_LIST(49, r0, r0),
    MAP(50, Collection.MAP, JavaType.VOID);
    
    private final Collection collection;
    private final Class<?> elementType;

    /* renamed from: id */
    private final int f7125id;
    private final JavaType javaType;
    private final boolean primitiveScalar;
    private static final Type[] EMPTY_TYPES = new Type[0];
    private static final FieldType[] VALUES = new FieldType[51];

    /* renamed from: com.google.protobuf.FieldType$1 */
    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/FieldType$1.class */
    public static /* synthetic */ class C22011 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$FieldType$Collection;
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$JavaType;

        static {
            JavaType.values();
            int[] iArr = new int[10];
            $SwitchMap$com$google$protobuf$JavaType = iArr;
            try {
                JavaType javaType = JavaType.BYTE_STRING;
                iArr[7] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$google$protobuf$JavaType;
                JavaType javaType2 = JavaType.MESSAGE;
                iArr2[9] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$google$protobuf$JavaType;
                JavaType javaType3 = JavaType.STRING;
                iArr3[6] = 3;
            } catch (NoSuchFieldError e3) {
            }
            Collection.values();
            int[] iArr4 = new int[4];
            $SwitchMap$com$google$protobuf$FieldType$Collection = iArr4;
            try {
                Collection collection = Collection.MAP;
                iArr4[3] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$google$protobuf$FieldType$Collection;
                Collection collection2 = Collection.VECTOR;
                iArr5[1] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$google$protobuf$FieldType$Collection;
                Collection collection3 = Collection.SCALAR;
                iArr6[0] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/FieldType$Collection.class */
    public enum Collection {
        SCALAR(false),
        VECTOR(true),
        PACKED_VECTOR(true),
        MAP(false);
        
        private final boolean isList;

        Collection(boolean z) {
            this.isList = z;
        }

        public boolean isList() {
            return this.isList;
        }
    }

    static {
        FieldType[] values;
        Collection collection = Collection.SCALAR;
        JavaType javaType = JavaType.DOUBLE;
        JavaType javaType2 = JavaType.FLOAT;
        JavaType javaType3 = JavaType.LONG;
        JavaType javaType4 = JavaType.INT;
        JavaType javaType5 = JavaType.BOOLEAN;
        JavaType javaType6 = JavaType.STRING;
        JavaType javaType7 = JavaType.MESSAGE;
        JavaType javaType8 = JavaType.BYTE_STRING;
        JavaType javaType9 = JavaType.ENUM;
        Collection collection2 = Collection.VECTOR;
        Collection collection3 = Collection.PACKED_VECTOR;
        JavaType javaType10 = JavaType.LONG;
        for (FieldType fieldType : values()) {
            VALUES[fieldType.f7125id] = fieldType;
        }
    }

    FieldType(int i, Collection collection, JavaType javaType) {
        int ordinal;
        this.f7125id = i;
        this.collection = collection;
        this.javaType = javaType;
        int ordinal2 = collection.ordinal();
        boolean z = true;
        if (ordinal2 == 1) {
            this.elementType = javaType.getBoxedType();
        } else if (ordinal2 != 3) {
            this.elementType = null;
        } else {
            this.elementType = javaType.getBoxedType();
        }
        this.primitiveScalar = (collection != Collection.SCALAR || (ordinal = javaType.ordinal()) == 6 || ordinal == 7 || ordinal == 9) ? false : z;
    }

    public static FieldType forId(int i) {
        if (i >= 0) {
            FieldType[] fieldTypeArr = VALUES;
            if (i < fieldTypeArr.length) {
                return fieldTypeArr[i];
            }
            return null;
        }
        return null;
    }

    private static Type getGenericSuperList(Class<?> cls) {
        Type[] genericInterfaces;
        for (Type type : cls.getGenericInterfaces()) {
            if ((type instanceof ParameterizedType) && List.class.isAssignableFrom((Class) ((ParameterizedType) type).getRawType())) {
                return type;
            }
        }
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof ParameterizedType) || !List.class.isAssignableFrom((Class) ((ParameterizedType) genericSuperclass).getRawType())) {
            return null;
        }
        return genericSuperclass;
    }

    private static Type getListParameter(Class<?> cls, Type[] typeArr) {
        boolean z;
        while (true) {
            int i = 0;
            if (cls == List.class) {
                if (typeArr.length != 1) {
                    throw new RuntimeException("Unable to identify parameter type for List<T>");
                }
                return typeArr[0];
            }
            Type genericSuperList = getGenericSuperList(cls);
            if (!(genericSuperList instanceof ParameterizedType)) {
                typeArr = EMPTY_TYPES;
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                while (true) {
                    if (i >= length) {
                        cls = cls.getSuperclass();
                        break;
                    }
                    Class<?> cls2 = interfaces[i];
                    if (List.class.isAssignableFrom(cls2)) {
                        cls = cls2;
                        break;
                    }
                    i++;
                }
            } else {
                ParameterizedType parameterizedType = (ParameterizedType) genericSuperList;
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i2 = 0; i2 < actualTypeArguments.length; i2++) {
                    Type type = actualTypeArguments[i2];
                    if (type instanceof TypeVariable) {
                        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
                        if (typeArr.length != typeParameters.length) {
                            throw new RuntimeException("Type array mismatch");
                        }
                        int i3 = 0;
                        while (true) {
                            if (i3 >= typeParameters.length) {
                                z = false;
                                break;
                            } else if (type == typeParameters[i3]) {
                                actualTypeArguments[i2] = typeArr[i3];
                                z = true;
                                break;
                            } else {
                                i3++;
                            }
                        }
                        if (!z) {
                            throw new RuntimeException(C22128a.m8713F2("Unable to find replacement for ", type));
                        }
                    }
                }
                cls = (Class) parameterizedType.getRawType();
                typeArr = actualTypeArguments;
            }
        }
    }

    private boolean isValidForList(Field field) {
        Class<?> type = field.getType();
        if (!this.javaType.getType().isAssignableFrom(type)) {
            return false;
        }
        Type[] typeArr = EMPTY_TYPES;
        if (field.getGenericType() instanceof ParameterizedType) {
            typeArr = ((ParameterizedType) field.getGenericType()).getActualTypeArguments();
        }
        Type listParameter = getListParameter(type, typeArr);
        if (listParameter instanceof Class) {
            return this.elementType.isAssignableFrom((Class) listParameter);
        }
        return true;
    }

    public JavaType getJavaType() {
        return this.javaType;
    }

    /* renamed from: id */
    public int m38288id() {
        return this.f7125id;
    }

    public boolean isList() {
        return this.collection.isList();
    }

    public boolean isMap() {
        return this.collection == Collection.MAP;
    }

    public boolean isPacked() {
        return Collection.PACKED_VECTOR.equals(this.collection);
    }

    public boolean isPrimitiveScalar() {
        return this.primitiveScalar;
    }

    public boolean isScalar() {
        return this.collection == Collection.SCALAR;
    }

    public boolean isValidForField(Field field) {
        return Collection.VECTOR.equals(this.collection) ? isValidForList(field) : this.javaType.getType().isAssignableFrom(field.getType());
    }
}
