package com.google.protobuf;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.List;
/* JADX WARN: Init of enum A can be incorrect */
/* JADX WARN: Init of enum B can be incorrect */
/* JADX WARN: Init of enum C can be incorrect */
/* JADX WARN: Init of enum D can be incorrect */
/* JADX WARN: Init of enum E can be incorrect */
/* JADX WARN: Init of enum F can be incorrect */
/* JADX WARN: Init of enum G can be incorrect */
/* JADX WARN: Init of enum H can be incorrect */
/* JADX WARN: Init of enum I can be incorrect */
/* JADX WARN: Init of enum J can be incorrect */
/* JADX WARN: Init of enum K can be incorrect */
/* JADX WARN: Init of enum L can be incorrect */
/* JADX WARN: Init of enum M can be incorrect */
/* JADX WARN: Init of enum N can be incorrect */
/* JADX WARN: Init of enum O can be incorrect */
/* JADX WARN: Init of enum P can be incorrect */
/* JADX WARN: Init of enum Q can be incorrect */
/* JADX WARN: Init of enum R can be incorrect */
/* JADX WARN: Init of enum S can be incorrect */
/* JADX WARN: Init of enum T can be incorrect */
/* JADX WARN: Init of enum U can be incorrect */
/* JADX WARN: Init of enum V can be incorrect */
/* JADX WARN: Init of enum W can be incorrect */
/* JADX WARN: Init of enum X can be incorrect */
/* JADX WARN: Init of enum Y can be incorrect */
/* JADX WARN: Init of enum b can be incorrect */
/* JADX WARN: Init of enum c can be incorrect */
/* JADX WARN: Init of enum d can be incorrect */
/* JADX WARN: Init of enum e can be incorrect */
/* JADX WARN: Init of enum f can be incorrect */
/* JADX WARN: Init of enum g can be incorrect */
/* JADX WARN: Init of enum h can be incorrect */
/* JADX WARN: Init of enum i can be incorrect */
/* JADX WARN: Init of enum j can be incorrect */
/* JADX WARN: Init of enum k can be incorrect */
/* JADX WARN: Init of enum l can be incorrect */
/* JADX WARN: Init of enum m can be incorrect */
/* JADX WARN: Init of enum n can be incorrect */
/* JADX WARN: Init of enum o can be incorrect */
/* JADX WARN: Init of enum p can be incorrect */
/* JADX WARN: Init of enum q can be incorrect */
/* JADX WARN: Init of enum r can be incorrect */
/* JADX WARN: Init of enum s can be incorrect */
/* JADX WARN: Init of enum t can be incorrect */
/* JADX WARN: Init of enum u can be incorrect */
/* JADX WARN: Init of enum v can be incorrect */
/* JADX WARN: Init of enum w can be incorrect */
/* JADX WARN: Init of enum x can be incorrect */
/* JADX WARN: Init of enum y can be incorrect */
/* JADX WARN: Init of enum z can be incorrect */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/FieldType.class */
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
    

    /* renamed from: a0 */
    private static final FieldType[] f10915a0;

    /* renamed from: b0 */
    private static final Type[] f10917b0 = new Type[0];
    private final Collection collection;
    private final Class<?> elementType;

    /* renamed from: id */
    private final int f10943id;
    private final JavaType javaType;
    private final boolean primitiveScalar;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/FieldType$Collection.class */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.protobuf.FieldType$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/FieldType$a.class */
    public static /* synthetic */ class C2549a {

        /* renamed from: a */
        static final /* synthetic */ int[] f10949a;

        /* renamed from: b */
        static final /* synthetic */ int[] f10950b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[JavaType.values().length];
            f10950b = iArr;
            try {
                iArr[JavaType.BYTE_STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10950b[JavaType.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10950b[JavaType.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[Collection.values().length];
            f10949a = iArr2;
            try {
                iArr2[Collection.MAP.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10949a[Collection.VECTOR.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10949a[Collection.SCALAR.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    static {
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
        FieldType[] values = values();
        f10915a0 = new FieldType[values.length];
        for (FieldType fieldType : values) {
            f10915a0[fieldType.f10943id] = fieldType;
        }
    }

    FieldType(int i, Collection collection, JavaType javaType) {
        int i2;
        this.f10943id = i;
        this.collection = collection;
        this.javaType = javaType;
        int i3 = C2549a.f10949a[collection.ordinal()];
        boolean z = true;
        this.elementType = (i3 == 1 || i3 == 2) ? javaType.getBoxedType() : null;
        this.primitiveScalar = (collection != Collection.SCALAR || (i2 = C2549a.f10950b[javaType.ordinal()]) == 1 || i2 == 2 || i2 == 3) ? false : z;
    }

    /* renamed from: a */
    private static Type m3048a(Class<?> cls) {
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

    /* renamed from: e */
    private static Type m3047e(Class<?> cls, Type[] typeArr) {
        boolean z;
        while (true) {
            int i = 0;
            if (cls == List.class) {
                if (typeArr.length != 1) {
                    throw new RuntimeException("Unable to identify parameter type for List<T>");
                }
                return typeArr[0];
            }
            Type m3048a = m3048a(cls);
            if (!(m3048a instanceof ParameterizedType)) {
                typeArr = f10917b0;
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
                ParameterizedType parameterizedType = (ParameterizedType) m3048a;
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
                            throw new RuntimeException("Unable to find replacement for " + type);
                        }
                    }
                }
                cls = (Class) parameterizedType.getRawType();
                typeArr = actualTypeArguments;
            }
        }
    }

    public static FieldType forId(int i) {
        if (i >= 0) {
            FieldType[] fieldTypeArr = f10915a0;
            if (i < fieldTypeArr.length) {
                return fieldTypeArr[i];
            }
            return null;
        }
        return null;
    }

    /* renamed from: h */
    private boolean m3046h(Field field) {
        Class<?> type = field.getType();
        if (!this.javaType.getType().isAssignableFrom(type)) {
            return false;
        }
        Type[] typeArr = f10917b0;
        if (field.getGenericType() instanceof ParameterizedType) {
            typeArr = ((ParameterizedType) field.getGenericType()).getActualTypeArguments();
        }
        Type m3047e = m3047e(type, typeArr);
        if (m3047e instanceof Class) {
            return this.elementType.isAssignableFrom((Class) m3047e);
        }
        return true;
    }

    public JavaType getJavaType() {
        return this.javaType;
    }

    /* renamed from: id */
    public int m3045id() {
        return this.f10943id;
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
        return Collection.VECTOR.equals(this.collection) ? m3046h(field) : this.javaType.getType().isAssignableFrom(field.getType());
    }
}
