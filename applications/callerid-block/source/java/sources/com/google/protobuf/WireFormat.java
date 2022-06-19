package com.google.protobuf;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/WireFormat.class */
public final class WireFormat {

    /* renamed from: a */
    static final int f11002a = m2922c(1, 3);

    /* renamed from: b */
    static final int f11003b = m2922c(1, 4);

    /* renamed from: c */
    static final int f11004c = m2922c(2, 0);

    /* renamed from: d */
    static final int f11005d = m2922c(3, 2);

    /* JADX WARN: Init of enum d can be incorrect */
    /* JADX WARN: Init of enum e can be incorrect */
    /* JADX WARN: Init of enum f can be incorrect */
    /* JADX WARN: Init of enum g can be incorrect */
    /* JADX WARN: Init of enum h can be incorrect */
    /* JADX WARN: Init of enum k can be incorrect */
    /* JADX WARN: Init of enum l can be incorrect */
    /* JADX WARN: Init of enum n can be incorrect */
    /* JADX WARN: Init of enum p can be incorrect */
    /* JADX WARN: Init of enum q can be incorrect */
    /* JADX WARN: Init of enum r can be incorrect */
    /* JADX WARN: Init of enum s can be incorrect */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/WireFormat$FieldType.class */
    public enum FieldType {
        DOUBLE(JavaType.DOUBLE, 1),
        FLOAT(JavaType.FLOAT, 5),
        INT64(r0, 0),
        UINT64(r0, 0),
        INT32(r0, 0),
        FIXED64(r0, 1),
        FIXED32(r0, 5),
        BOOL(JavaType.BOOLEAN, 0),
        STRING(JavaType.STRING, 2) { // from class: com.google.protobuf.WireFormat.FieldType.1
            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        GROUP(r0, 3) { // from class: com.google.protobuf.WireFormat.FieldType.2
            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        MESSAGE(r0, 2) { // from class: com.google.protobuf.WireFormat.FieldType.3
            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        BYTES(JavaType.BYTE_STRING, 2) { // from class: com.google.protobuf.WireFormat.FieldType.4
            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        UINT32(r0, 0),
        ENUM(JavaType.ENUM, 0),
        SFIXED32(r0, 5),
        SFIXED64(r0, 1),
        SINT32(r0, 0),
        SINT64(r0, 0);
        
        private final JavaType javaType;
        private final int wireType;

        static {
            JavaType javaType = JavaType.LONG;
            JavaType javaType2 = JavaType.INT;
            JavaType javaType3 = JavaType.MESSAGE;
        }

        FieldType(JavaType javaType, int i) {
            this.javaType = javaType;
            this.wireType = i;
        }

        public JavaType getJavaType() {
            return this.javaType;
        }

        public int getWireType() {
            return this.wireType;
        }

        public boolean isPackable() {
            return true;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/WireFormat$JavaType.class */
    public enum JavaType {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(ByteString.f10869b),
        ENUM(null),
        MESSAGE(null);
        
        private final Object defaultDefault;

        JavaType(Object obj) {
            this.defaultDefault = obj;
        }

        Object getDefaultDefault() {
            return this.defaultDefault;
        }
    }

    /* renamed from: a */
    public static int m2924a(int i) {
        return i >>> 3;
    }

    /* renamed from: b */
    public static int m2923b(int i) {
        return i & 7;
    }

    /* renamed from: c */
    public static int m2922c(int i, int i2) {
        return (i << 3) | i2;
    }
}
