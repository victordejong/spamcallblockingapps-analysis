package com.google.protobuf;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/WireFormat.class */
public final class WireFormat {
    public static final int FIXED32_SIZE = 4;
    public static final int FIXED64_SIZE = 8;
    public static final int MAX_VARINT32_SIZE = 5;
    public static final int MAX_VARINT64_SIZE = 10;
    public static final int MAX_VARINT_SIZE = 10;
    public static final int MESSAGE_SET_ITEM = 1;
    public static final int MESSAGE_SET_MESSAGE = 3;
    public static final int MESSAGE_SET_TYPE_ID = 2;
    public static final int TAG_TYPE_BITS = 3;
    public static final int TAG_TYPE_MASK = 7;
    public static final int WIRETYPE_END_GROUP = 4;
    public static final int WIRETYPE_FIXED32 = 5;
    public static final int WIRETYPE_FIXED64 = 1;
    public static final int WIRETYPE_LENGTH_DELIMITED = 2;
    public static final int WIRETYPE_START_GROUP = 3;
    public static final int WIRETYPE_VARINT = 0;
    public static final int MESSAGE_SET_ITEM_TAG = makeTag(1, 3);
    public static final int MESSAGE_SET_ITEM_END_TAG = makeTag(1, 4);
    public static final int MESSAGE_SET_TYPE_ID_TAG = makeTag(2, 0);
    public static final int MESSAGE_SET_MESSAGE_TAG = makeTag(3, 2);

    /* renamed from: com.google.protobuf.WireFormat$1 */
    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/WireFormat$1.class */
    public static /* synthetic */ class C22071 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            FieldType.values();
            int[] iArr = new int[18];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                FieldType fieldType = FieldType.DOUBLE;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType2 = FieldType.FLOAT;
                iArr2[1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType3 = FieldType.INT64;
                iArr3[2] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType4 = FieldType.UINT64;
                iArr4[3] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType5 = FieldType.INT32;
                iArr5[4] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType6 = FieldType.FIXED64;
                iArr6[5] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                int[] iArr7 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType7 = FieldType.FIXED32;
                iArr7[6] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                int[] iArr8 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType8 = FieldType.BOOL;
                iArr8[7] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                int[] iArr9 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType9 = FieldType.BYTES;
                iArr9[11] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                int[] iArr10 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType10 = FieldType.UINT32;
                iArr10[12] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                int[] iArr11 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType11 = FieldType.SFIXED32;
                iArr11[14] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                int[] iArr12 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType12 = FieldType.SFIXED64;
                iArr12[15] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                int[] iArr13 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType13 = FieldType.SINT32;
                iArr13[16] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                int[] iArr14 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType14 = FieldType.SINT64;
                iArr14[17] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                int[] iArr15 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType15 = FieldType.STRING;
                iArr15[8] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                int[] iArr16 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType16 = FieldType.GROUP;
                iArr16[9] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                int[] iArr17 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType17 = FieldType.MESSAGE;
                iArr17[10] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                int[] iArr18 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                FieldType fieldType18 = FieldType.ENUM;
                iArr18[13] = 18;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/WireFormat$FieldType.class */
    public static class FieldType extends Enum<FieldType> {
        private static final /* synthetic */ FieldType[] $VALUES;
        public static final FieldType BOOL;
        public static final FieldType BYTES;
        public static final FieldType DOUBLE;
        public static final FieldType ENUM;
        public static final FieldType FIXED32;
        public static final FieldType FIXED64;
        public static final FieldType FLOAT;
        public static final FieldType GROUP;
        public static final FieldType INT32;
        public static final FieldType INT64;
        public static final FieldType MESSAGE;
        public static final FieldType SFIXED32;
        public static final FieldType SFIXED64;
        public static final FieldType SINT32;
        public static final FieldType SINT64;
        public static final FieldType STRING;
        public static final FieldType UINT32;
        public static final FieldType UINT64;
        private final JavaType javaType;
        private final int wireType;

        static {
            FieldType fieldType = new FieldType("DOUBLE", 0, JavaType.DOUBLE, 1);
            DOUBLE = fieldType;
            FieldType fieldType2 = new FieldType("FLOAT", 1, JavaType.FLOAT, 5);
            FLOAT = fieldType2;
            JavaType javaType = JavaType.LONG;
            FieldType fieldType3 = new FieldType("INT64", 2, javaType, 0);
            INT64 = fieldType3;
            FieldType fieldType4 = new FieldType("UINT64", 3, javaType, 0);
            UINT64 = fieldType4;
            JavaType javaType2 = JavaType.INT;
            FieldType fieldType5 = new FieldType("INT32", 4, javaType2, 0);
            INT32 = fieldType5;
            FieldType fieldType6 = new FieldType("FIXED64", 5, javaType, 1);
            FIXED64 = fieldType6;
            FieldType fieldType7 = new FieldType("FIXED32", 6, javaType2, 5);
            FIXED32 = fieldType7;
            FieldType fieldType8 = new FieldType("BOOL", 7, JavaType.BOOLEAN, 0);
            BOOL = fieldType8;
            FieldType fieldType9 = new 1("STRING", 8, JavaType.STRING, 2);
            STRING = fieldType9;
            JavaType javaType3 = JavaType.MESSAGE;
            FieldType fieldType10 = new 2("GROUP", 9, javaType3, 3);
            GROUP = fieldType10;
            FieldType fieldType11 = new 3("MESSAGE", 10, javaType3, 2);
            MESSAGE = fieldType11;
            FieldType fieldType12 = new 4("BYTES", 11, JavaType.BYTE_STRING, 2);
            BYTES = fieldType12;
            FieldType fieldType13 = new FieldType("UINT32", 12, javaType2, 0);
            UINT32 = fieldType13;
            FieldType fieldType14 = new FieldType("ENUM", 13, JavaType.ENUM, 0);
            ENUM = fieldType14;
            FieldType fieldType15 = new FieldType("SFIXED32", 14, javaType2, 5);
            SFIXED32 = fieldType15;
            FieldType fieldType16 = new FieldType("SFIXED64", 15, javaType, 1);
            SFIXED64 = fieldType16;
            FieldType fieldType17 = new FieldType("SINT32", 16, javaType2, 0);
            SINT32 = fieldType17;
            FieldType fieldType18 = new FieldType("SINT64", 17, javaType, 0);
            SINT64 = fieldType18;
            $VALUES = new FieldType[]{fieldType, fieldType2, fieldType3, fieldType4, fieldType5, fieldType6, fieldType7, fieldType8, fieldType9, fieldType10, fieldType11, fieldType12, fieldType13, fieldType14, fieldType15, fieldType16, fieldType17, fieldType18};
        }

        private FieldType(String str, int i, JavaType javaType, int i2) {
            super(str, i);
            this.javaType = javaType;
            this.wireType = i2;
        }

        public /* synthetic */ FieldType(String str, int i, JavaType javaType, int i2, C22071 c22071) {
            this(str, i, javaType, i2);
        }

        public static FieldType valueOf(String str) {
            return (FieldType) Enum.valueOf(FieldType.class, str);
        }

        public static FieldType[] values() {
            return (FieldType[]) $VALUES.clone();
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

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/WireFormat$JavaType.class */
    public enum JavaType {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(ByteString.EMPTY),
        ENUM(null),
        MESSAGE(null);
        
        private final Object defaultDefault;

        JavaType(Object obj) {
            this.defaultDefault = obj;
        }

        public Object getDefaultDefault() {
            return this.defaultDefault;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/WireFormat$Utf8Validation.class */
    public static abstract class Utf8Validation extends Enum<Utf8Validation> {
        private static final /* synthetic */ Utf8Validation[] $VALUES;
        public static final Utf8Validation LAZY;
        public static final Utf8Validation LOOSE;
        public static final Utf8Validation STRICT;

        static {
            Utf8Validation utf8Validation = new 1("LOOSE", 0);
            LOOSE = utf8Validation;
            Utf8Validation utf8Validation2 = new 2("STRICT", 1);
            STRICT = utf8Validation2;
            Utf8Validation utf8Validation3 = new 3("LAZY", 2);
            LAZY = utf8Validation3;
            $VALUES = new Utf8Validation[]{utf8Validation, utf8Validation2, utf8Validation3};
        }

        private Utf8Validation(String str, int i) {
            super(str, i);
        }

        public /* synthetic */ Utf8Validation(String str, int i, C22071 c22071) {
            this(str, i);
        }

        public static Utf8Validation valueOf(String str) {
            return (Utf8Validation) Enum.valueOf(Utf8Validation.class, str);
        }

        public static Utf8Validation[] values() {
            return (Utf8Validation[]) $VALUES.clone();
        }

        public abstract Object readString(CodedInputStream codedInputStream) throws IOException;
    }

    private WireFormat() {
    }

    public static int getTagFieldNumber(int i) {
        return i >>> 3;
    }

    public static int getTagWireType(int i) {
        return i & 7;
    }

    public static int makeTag(int i, int i2) {
        return (i << 3) | i2;
    }

    public static Object readPrimitiveField(CodedInputStream codedInputStream, FieldType fieldType, Utf8Validation utf8Validation) throws IOException {
        switch (fieldType.ordinal()) {
            case 0:
                return Double.valueOf(codedInputStream.readDouble());
            case 1:
                return Float.valueOf(codedInputStream.readFloat());
            case 2:
                return Long.valueOf(codedInputStream.readInt64());
            case 3:
                return Long.valueOf(codedInputStream.readUInt64());
            case 4:
                return Integer.valueOf(codedInputStream.readInt32());
            case 5:
                return Long.valueOf(codedInputStream.readFixed64());
            case 6:
                return Integer.valueOf(codedInputStream.readFixed32());
            case 7:
                return Boolean.valueOf(codedInputStream.readBool());
            case 8:
                return utf8Validation.readString(codedInputStream);
            case 9:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 10:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 11:
                return codedInputStream.readBytes();
            case 12:
                return Integer.valueOf(codedInputStream.readUInt32());
            case 13:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            case 14:
                return Integer.valueOf(codedInputStream.readSFixed32());
            case 15:
                return Long.valueOf(codedInputStream.readSFixed64());
            case 16:
                return Integer.valueOf(codedInputStream.readSInt32());
            case 17:
                return Long.valueOf(codedInputStream.readSInt64());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }
}
