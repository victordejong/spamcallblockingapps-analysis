package com.google.protobuf;

import java.io.IOException;
import p131c.p161d.p367h.AbstractC6327j;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/WireFormat.class */
public final class WireFormat {

    /* renamed from: a */
    public static final int f31157a = m6840a(1, 3);

    /* renamed from: b */
    public static final int f31158b = m6840a(1, 4);

    /* renamed from: c */
    public static final int f31159c = m6840a(2, 0);

    /* renamed from: d */
    public static final int f31160d = m6840a(3, 2);

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/WireFormat$FieldType.class */
    public enum FieldType {
        DOUBLE(JavaType.DOUBLE, 1),
        FLOAT(JavaType.FLOAT, 5),
        INT64(JavaType.LONG, 0),
        UINT64(JavaType.LONG, 0),
        INT32(JavaType.INT, 0),
        FIXED64(JavaType.LONG, 1),
        FIXED32(JavaType.INT, 5),
        BOOL(JavaType.BOOLEAN, 0),
        STRING(JavaType.STRING, 2) { // from class: com.google.protobuf.WireFormat.FieldType.1
            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        GROUP(JavaType.MESSAGE, 3) { // from class: com.google.protobuf.WireFormat.FieldType.2
            @Override // com.google.protobuf.WireFormat.FieldType
            public boolean isPackable() {
                return false;
            }
        },
        MESSAGE(JavaType.MESSAGE, 2) { // from class: com.google.protobuf.WireFormat.FieldType.3
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
        UINT32(JavaType.INT, 0),
        ENUM(JavaType.ENUM, 0),
        SFIXED32(JavaType.INT, 5),
        SFIXED64(JavaType.LONG, 1),
        SINT32(JavaType.INT, 0),
        SINT64(JavaType.LONG, 0);
        
        public final JavaType javaType;
        public final int wireType;

        FieldType(JavaType javaType, int i) {
            this.javaType = javaType;
            this.wireType = i;
        }

        /* synthetic */ FieldType(JavaType javaType, int i, C7972a aVar) {
            this(javaType, i);
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
        BOOLEAN(false),
        STRING(""),
        BYTE_STRING(ByteString.EMPTY),
        ENUM(null),
        MESSAGE(null);
        
        public final Object defaultDefault;

        JavaType(Object obj) {
            this.defaultDefault = obj;
        }

        public Object getDefaultDefault() {
            return this.defaultDefault;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/WireFormat$Utf8Validation.class */
    public enum Utf8Validation {
        LOOSE { // from class: com.google.protobuf.WireFormat.Utf8Validation.1
            @Override // com.google.protobuf.WireFormat.Utf8Validation
            public Object readString(AbstractC6327j jVar) throws IOException {
                return jVar.mo21398p();
            }
        },
        STRICT { // from class: com.google.protobuf.WireFormat.Utf8Validation.2
            @Override // com.google.protobuf.WireFormat.Utf8Validation
            public Object readString(AbstractC6327j jVar) throws IOException {
                return jVar.mo21397q();
            }
        },
        LAZY { // from class: com.google.protobuf.WireFormat.Utf8Validation.3
            @Override // com.google.protobuf.WireFormat.Utf8Validation
            public Object readString(AbstractC6327j jVar) throws IOException {
                return jVar.mo21412d();
            }
        };

        /* synthetic */ Utf8Validation(C7972a aVar) {
            this();
        }

        public abstract Object readString(AbstractC6327j jVar) throws IOException;
    }

    /* renamed from: com.google.protobuf.WireFormat$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/WireFormat$a.class */
    public static /* synthetic */ class C7972a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31161a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00dd -> B:91:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00e1 -> B:85:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e5 -> B:63:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e9 -> B:59:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00ed -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f5 -> B:81:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f9 -> B:75:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00fd -> B:89:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0101 -> B:83:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0105 -> B:61:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0109 -> B:57:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x010d -> B:69:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0111 -> B:65:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0115 -> B:79:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0119 -> B:73:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x011d -> B:87:0x00d0). Please submit an issue!!! */
        static {
            int[] iArr = new int[FieldType.values().length];
            f31161a = iArr;
            try {
                iArr[FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31161a[FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31161a[FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31161a[FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31161a[FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31161a[FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31161a[FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31161a[FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31161a[FieldType.BYTES.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f31161a[FieldType.UINT32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f31161a[FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f31161a[FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f31161a[FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f31161a[FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f31161a[FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f31161a[FieldType.GROUP.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f31161a[FieldType.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f31161a[FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    /* renamed from: a */
    public static int m6841a(int i) {
        return i >>> 3;
    }

    /* renamed from: a */
    public static int m6840a(int i, int i2) {
        return (i << 3) | i2;
    }

    /* renamed from: b */
    public static int m6839b(int i) {
        return i & 7;
    }
}
