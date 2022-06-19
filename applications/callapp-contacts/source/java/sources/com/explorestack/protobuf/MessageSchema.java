package com.explorestack.protobuf;

import com.explorestack.protobuf.ArrayDecoders;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.MapEntryLite;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.Writer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MessageSchema.class */
public final class MessageSchema<T> implements Schema<T> {
    private static final int ENFORCE_UTF8_MASK = 536870912;
    private static final int FIELD_TYPE_MASK = 267386880;
    private static final int INTS_PER_FIELD = 3;
    private static final int OFFSET_BITS = 20;
    private static final int OFFSET_MASK = 1048575;
    static final int ONEOF_TYPE_OFFSET = 51;
    private static final int REQUIRED_MASK = 268435456;
    private final int[] buffer;
    private final int checkInitializedCount;
    private final MessageLite defaultInstance;
    private final ExtensionSchema<?> extensionSchema;
    private final boolean hasExtensions;
    private final int[] intArray;
    private final ListFieldSchema listFieldSchema;
    private final boolean lite;
    private final MapFieldSchema mapFieldSchema;
    private final int maxFieldNumber;
    private final int minFieldNumber;
    private final NewInstanceSchema newInstanceSchema;
    private final Object[] objects;
    private final boolean proto3;
    private final int repeatedFieldOffsetStart;
    private final UnknownFieldSchema<?, ?> unknownFieldSchema;
    private final boolean useCachedSizeField;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final Unsafe UNSAFE = UnsafeUtil.getUnsafe();

    /* renamed from: com.explorestack.protobuf.MessageSchema$1 */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MessageSchema$1.class */
    public static /* synthetic */ class C97741 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00d1 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d5 -> B:78:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d9 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00dd -> B:86:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e1 -> B:82:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e5 -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ed -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f1 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f5 -> B:76:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f9 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00fd -> B:84:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0101 -> B:80:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0105 -> B:58:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0109 -> B:54:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x010d -> B:66:0x00c4). Please submit an issue!!! */
        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
        }
    }

    private MessageSchema(int[] iArr, Object[] objArr, int i, int i2, MessageLite messageLite, boolean z, boolean z2, int[] iArr2, int i3, int i4, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        this.buffer = iArr;
        this.objects = objArr;
        this.minFieldNumber = i;
        this.maxFieldNumber = i2;
        this.lite = messageLite instanceof GeneratedMessageLite;
        this.proto3 = z;
        this.hasExtensions = extensionSchema != null && extensionSchema.hasExtensions(messageLite);
        this.useCachedSizeField = z2;
        this.intArray = iArr2;
        this.checkInitializedCount = i3;
        this.repeatedFieldOffsetStart = i4;
        this.newInstanceSchema = newInstanceSchema;
        this.listFieldSchema = listFieldSchema;
        this.unknownFieldSchema = unknownFieldSchema;
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
        this.mapFieldSchema = mapFieldSchema;
    }

    private boolean arePresentForEquals(T t, T t2, int i) {
        return isFieldPresent(t, i) == isFieldPresent(t2, i);
    }

    private static <T> boolean booleanAt(T t, long j) {
        return UnsafeUtil.getBoolean(t, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v39, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v45, types: [int] */
    private <K, V> int decodeMapEntry(byte[] bArr, int i, int i2, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map, ArrayDecoders.Registers registers) throws IOException {
        int decodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
        int i3 = registers.int1;
        if (i3 < 0 || i3 > i2 - decodeVarint32) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i4 = decodeVarint32 + i3;
        K k = metadata.defaultKey;
        V v = metadata.defaultValue;
        while (decodeVarint32 < i4) {
            int i5 = decodeVarint32 + 1;
            byte b = bArr[decodeVarint32];
            if (b < 0) {
                i5 = ArrayDecoders.decodeVarint32(b, bArr, i5, registers);
                b = registers.int1;
            }
            int i6 = b >>> 3;
            int i7 = b & 7;
            if (i6 != 1) {
                if (i6 == 2 && i7 == metadata.valueType.getWireType()) {
                    decodeVarint32 = decodeMapEntryValue(bArr, i5, i2, metadata.valueType, metadata.defaultValue.getClass(), registers);
                    v = registers.object1;
                }
                decodeVarint32 = ArrayDecoders.skipField(b, bArr, i5, i2, registers);
            } else if (i7 == metadata.keyType.getWireType()) {
                decodeVarint32 = decodeMapEntryValue(bArr, i5, i2, metadata.keyType, null, registers);
                k = registers.object1;
            } else {
                decodeVarint32 = ArrayDecoders.skipField(b, bArr, i5, i2, registers);
            }
        }
        if (decodeVarint32 != i4) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        map.put(k, v);
        return i4;
    }

    private int decodeMapEntryValue(byte[] bArr, int i, int i2, WireFormat.FieldType fieldType, Class<?> cls, ArrayDecoders.Registers registers) throws IOException {
        int i3;
        switch (C97741.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                i3 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Boolean.valueOf(registers.long1 != 0);
                break;
            case 2:
                i3 = ArrayDecoders.decodeBytes(bArr, i, registers);
                break;
            case 3:
                registers.object1 = Double.valueOf(ArrayDecoders.decodeDouble(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                registers.object1 = Integer.valueOf(ArrayDecoders.decodeFixed32(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                registers.object1 = Long.valueOf(ArrayDecoders.decodeFixed64(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                registers.object1 = Float.valueOf(ArrayDecoders.decodeFloat(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                registers.object1 = Integer.valueOf(registers.int1);
                break;
            case 12:
            case 13:
                i3 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Long.valueOf(registers.long1);
                break;
            case 14:
                i3 = ArrayDecoders.decodeMessageField(Protobuf.getInstance().schemaFor((Class) cls), bArr, i, i2, registers);
                break;
            case 15:
                i3 = ArrayDecoders.decodeVarint32(bArr, i, registers);
                registers.object1 = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                break;
            case 16:
                i3 = ArrayDecoders.decodeVarint64(bArr, i, registers);
                registers.object1 = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                break;
            case 17:
                i3 = ArrayDecoders.decodeStringRequireUtf8(bArr, i, registers);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    private static <T> double doubleAt(T t, long j) {
        return UnsafeUtil.getDouble(t, j);
    }

    private boolean equals(T t, T t2, int i) {
        int typeAndOffsetAt = typeAndOffsetAt(i);
        long offset = offset(typeAndOffsetAt);
        switch (type(typeAndOffsetAt)) {
            case 0:
                return arePresentForEquals(t, t2, i) && Double.doubleToLongBits(UnsafeUtil.getDouble(t, offset)) == Double.doubleToLongBits(UnsafeUtil.getDouble(t2, offset));
            case 1:
                return arePresentForEquals(t, t2, i) && Float.floatToIntBits(UnsafeUtil.getFloat(t, offset)) == Float.floatToIntBits(UnsafeUtil.getFloat(t2, offset));
            case 2:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 3:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 4:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 5:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 6:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 7:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getBoolean(t, offset) == UnsafeUtil.getBoolean(t2, offset);
            case 8:
                return arePresentForEquals(t, t2, i) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 9:
                return arePresentForEquals(t, t2, i) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 10:
                return arePresentForEquals(t, t2, i) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 11:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 12:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 13:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 14:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 15:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getInt(t, offset) == UnsafeUtil.getInt(t2, offset);
            case 16:
                return arePresentForEquals(t, t2, i) && UnsafeUtil.getLong(t, offset) == UnsafeUtil.getLong(t2, offset);
            case 17:
                return arePresentForEquals(t, t2, i) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 50:
                return SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                return isOneofCaseEqual(t, t2, i) && SchemaUtil.safeEquals(UnsafeUtil.getObject(t, offset), UnsafeUtil.getObject(t2, offset));
            default:
                return true;
        }
    }

    private final <UT, UB> UB filterMapUnknownEnumValues(Object obj, int i, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        Internal.EnumVerifier enumFieldVerifier;
        int numberAt = numberAt(i);
        Object object = UnsafeUtil.getObject(obj, offset(typeAndOffsetAt(i)));
        if (object != null && (enumFieldVerifier = getEnumFieldVerifier(i)) != null) {
            return (UB) filterUnknownEnumMap(i, numberAt, this.mapFieldSchema.forMutableMapData(object), enumFieldVerifier, ub, unknownFieldSchema);
        }
        return ub;
    }

    private final <K, V, UT, UB> UB filterUnknownEnumMap(int i, int i2, Map<K, V> map, Internal.EnumVerifier enumVerifier, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        MapEntryLite.Metadata<?, ?> forMapMetadata = this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i));
        Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (!enumVerifier.isInRange(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = unknownFieldSchema.newBuilder();
                }
                ByteString.CodedBuilder newCodedBuilder = ByteString.newCodedBuilder(MapEntryLite.computeSerializedSize(forMapMetadata, next.getKey(), next.getValue()));
                try {
                    MapEntryLite.writeTo(newCodedBuilder.getCodedOutput(), forMapMetadata, next.getKey(), next.getValue());
                    unknownFieldSchema.addLengthDelimited(ub2, i2, newCodedBuilder.build());
                    it2.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private static <T> float floatAt(T t, long j) {
        return UnsafeUtil.getFloat(t, j);
    }

    private Internal.EnumVerifier getEnumFieldVerifier(int i) {
        return (Internal.EnumVerifier) this.objects[((i / 3) * 2) + 1];
    }

    private Object getMapFieldDefaultEntry(int i) {
        return this.objects[(i / 3) * 2];
    }

    private Schema getMessageFieldSchema(int i) {
        int i2 = (i / 3) * 2;
        Schema schema = (Schema) this.objects[i2];
        if (schema != null) {
            return schema;
        }
        Schema<T> schemaFor = Protobuf.getInstance().schemaFor((Class) ((Class) this.objects[i2 + 1]));
        this.objects[i2] = schemaFor;
        return schemaFor;
    }

    public static UnknownFieldSetLite getMutableUnknownFields(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        UnknownFieldSetLite unknownFieldSetLite2 = unknownFieldSetLite;
        if (unknownFieldSetLite == UnknownFieldSetLite.getDefaultInstance()) {
            unknownFieldSetLite2 = UnknownFieldSetLite.newInstance();
            generatedMessageLite.unknownFields = unknownFieldSetLite2;
        }
        return unknownFieldSetLite2;
    }

    private int getSerializedSizeProto2(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int computeBoolSize;
        int i8;
        int i9;
        int i10;
        int i11;
        Unsafe unsafe = UNSAFE;
        int i12 = -1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            int i16 = i15;
            if (i13 >= this.buffer.length) {
                int unknownFieldsSerializedSize = i14 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t);
                int i17 = unknownFieldsSerializedSize;
                if (this.hasExtensions) {
                    i17 = unknownFieldsSerializedSize + this.extensionSchema.getExtensions(t).getSerializedSize();
                }
                return i17;
            }
            int typeAndOffsetAt = typeAndOffsetAt(i13);
            int numberAt = numberAt(i13);
            int type = type(typeAndOffsetAt);
            if (type <= 17) {
                i4 = this.buffer[i13 + 2];
                int i18 = OFFSET_MASK & i4;
                i2 = i12;
                if (i18 != i12) {
                    i16 = unsafe.getInt(t, i18);
                    i2 = i18;
                }
                i = 1 << (i4 >>> 20);
                i3 = i16;
            } else {
                i4 = (!this.useCachedSizeField || type < FieldType.DOUBLE_LIST_PACKED.m23818id() || type > FieldType.SINT64_LIST_PACKED.m23818id()) ? 0 : this.buffer[i13 + 2] & OFFSET_MASK;
                i = 0;
                i3 = i16;
                i2 = i12;
            }
            long offset = offset(typeAndOffsetAt);
            switch (type) {
                case 0:
                    i5 = i14;
                    if ((i3 & i) == 0) {
                        break;
                    } else {
                        i6 = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        i5 = i14 + i6;
                        break;
                    }
                case 1:
                    i5 = i14;
                    if ((i3 & i) == 0) {
                        break;
                    } else {
                        i6 = CodedOutputStream.computeFloatSize(numberAt, BitmapDescriptorFactory.HUE_RED);
                        i5 = i14 + i6;
                        break;
                    }
                case 2:
                    i5 = i14;
                    if ((i3 & i) == 0) {
                        break;
                    } else {
                        i6 = CodedOutputStream.computeInt64Size(numberAt, unsafe.getLong(t, offset));
                        i5 = i14 + i6;
                        break;
                    }
                case 3:
                    i5 = i14;
                    if ((i3 & i) == 0) {
                        break;
                    } else {
                        i6 = CodedOutputStream.computeUInt64Size(numberAt, unsafe.getLong(t, offset));
                        i5 = i14 + i6;
                        break;
                    }
                case 4:
                    i5 = i14;
                    if ((i3 & i) == 0) {
                        break;
                    } else {
                        i6 = CodedOutputStream.computeInt32Size(numberAt, unsafe.getInt(t, offset));
                        i5 = i14 + i6;
                        break;
                    }
                case 5:
                    i5 = i14;
                    if ((i3 & i) == 0) {
                        break;
                    } else {
                        i6 = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        i5 = i14 + i6;
                        break;
                    }
                case 6:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        i6 = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        i5 = i14 + i6;
                        break;
                    }
                    i5 = i7;
                    break;
                case 7:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 8:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        Object object = unsafe.getObject(t, offset);
                        computeBoolSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(numberAt, (ByteString) object) : CodedOutputStream.computeStringSize(numberAt, (String) object);
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 9:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        computeBoolSize = SchemaUtil.computeSizeMessage(numberAt, unsafe.getObject(t, offset), getMessageFieldSchema(i13));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 10:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) unsafe.getObject(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 11:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeUInt32Size(numberAt, unsafe.getInt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 12:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeEnumSize(numberAt, unsafe.getInt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 13:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        i8 = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 14:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 15:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeSInt32Size(numberAt, unsafe.getInt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 16:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeSInt64Size(numberAt, unsafe.getLong(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 17:
                    i7 = i14;
                    if ((i3 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeGroupSize(numberAt, (MessageLite) unsafe.getObject(t, offset), getMessageFieldSchema(i13));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 18:
                    computeBoolSize = SchemaUtil.computeSizeFixed64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 19:
                    computeBoolSize = SchemaUtil.computeSizeFixed32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 20:
                    computeBoolSize = SchemaUtil.computeSizeInt64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 21:
                    computeBoolSize = SchemaUtil.computeSizeUInt64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 22:
                    computeBoolSize = SchemaUtil.computeSizeInt32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 23:
                    computeBoolSize = SchemaUtil.computeSizeFixed64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 24:
                    computeBoolSize = SchemaUtil.computeSizeFixed32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 25:
                    computeBoolSize = SchemaUtil.computeSizeBoolList(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 26:
                    computeBoolSize = SchemaUtil.computeSizeStringList(numberAt, (List) unsafe.getObject(t, offset));
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 27:
                    computeBoolSize = SchemaUtil.computeSizeMessageList(numberAt, (List) unsafe.getObject(t, offset), getMessageFieldSchema(i13));
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 28:
                    computeBoolSize = SchemaUtil.computeSizeByteStringList(numberAt, (List) unsafe.getObject(t, offset));
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 29:
                    computeBoolSize = SchemaUtil.computeSizeUInt32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 30:
                    computeBoolSize = SchemaUtil.computeSizeEnumList(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 31:
                    computeBoolSize = SchemaUtil.computeSizeFixed32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 32:
                    computeBoolSize = SchemaUtil.computeSizeFixed64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 33:
                    computeBoolSize = SchemaUtil.computeSizeSInt32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 34:
                    computeBoolSize = SchemaUtil.computeSizeSInt64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 35:
                    int computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeFixed64ListNoTag);
                        }
                        i10 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i11 = computeSizeFixed64ListNoTag;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 36:
                    int computeSizeFixed32ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeFixed32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeFixed32ListNoTag);
                        }
                        int computeTagSize = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag);
                        i11 = computeSizeFixed32ListNoTag;
                        i10 = computeTagSize;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 37:
                    int computeSizeInt64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeInt64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeInt64ListNoTag);
                        }
                        int computeTagSize2 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeInt64ListNoTag);
                        i11 = computeSizeInt64ListNoTag;
                        i10 = computeTagSize2;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 38:
                    int computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeUInt64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeUInt64ListNoTag);
                        }
                        int computeTagSize3 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeUInt64ListNoTag);
                        i11 = computeSizeUInt64ListNoTag;
                        i10 = computeTagSize3;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 39:
                    int computeSizeInt32ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeInt32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeInt32ListNoTag);
                        }
                        int computeTagSize4 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeInt32ListNoTag);
                        i11 = computeSizeInt32ListNoTag;
                        i10 = computeTagSize4;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 40:
                    int computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeFixed64ListNoTag2 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeFixed64ListNoTag2);
                        }
                        int computeTagSize5 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                        i11 = computeSizeFixed64ListNoTag2;
                        i10 = computeTagSize5;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 41:
                    int computeSizeFixed32ListNoTag2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeFixed32ListNoTag2 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeFixed32ListNoTag2);
                        }
                        int computeTagSize6 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag2);
                        i11 = computeSizeFixed32ListNoTag2;
                        i10 = computeTagSize6;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 42:
                    int computeSizeBoolListNoTag = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeBoolListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeBoolListNoTag);
                        }
                        int computeTagSize7 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeBoolListNoTag);
                        i11 = computeSizeBoolListNoTag;
                        i10 = computeTagSize7;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 43:
                    int computeSizeUInt32ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeUInt32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeUInt32ListNoTag);
                        }
                        int computeTagSize8 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeUInt32ListNoTag);
                        i11 = computeSizeUInt32ListNoTag;
                        i10 = computeTagSize8;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 44:
                    int computeSizeEnumListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeEnumListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeEnumListNoTag);
                        }
                        int computeTagSize9 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeEnumListNoTag);
                        i11 = computeSizeEnumListNoTag;
                        i10 = computeTagSize9;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 45:
                    int computeSizeFixed32ListNoTag3 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeFixed32ListNoTag3 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeFixed32ListNoTag3);
                        }
                        int computeTagSize10 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag3);
                        i11 = computeSizeFixed32ListNoTag3;
                        i10 = computeTagSize10;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 46:
                    int computeSizeFixed64ListNoTag3 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeFixed64ListNoTag3 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeFixed64ListNoTag3);
                        }
                        int computeTagSize11 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag3);
                        i11 = computeSizeFixed64ListNoTag3;
                        i10 = computeTagSize11;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 47:
                    int computeSizeSInt32ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeSInt32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeSInt32ListNoTag);
                        }
                        int computeTagSize12 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeSInt32ListNoTag);
                        i11 = computeSizeSInt32ListNoTag;
                        i10 = computeTagSize12;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 48:
                    int computeSizeSInt64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(t, offset));
                    i7 = i14;
                    if (computeSizeSInt64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i4, computeSizeSInt64ListNoTag);
                        }
                        int computeTagSize13 = CodedOutputStream.computeTagSize(numberAt);
                        i9 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeSInt64ListNoTag);
                        i11 = computeSizeSInt64ListNoTag;
                        i10 = computeTagSize13;
                        i8 = i10 + i9 + i11;
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 49:
                    computeBoolSize = SchemaUtil.computeSizeGroupList(numberAt, (List) unsafe.getObject(t, offset), getMessageFieldSchema(i13));
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 50:
                    computeBoolSize = this.mapFieldSchema.getSerializedSize(numberAt, unsafe.getObject(t, offset), getMapFieldDefaultEntry(i13));
                    i7 = i14 + computeBoolSize;
                    i5 = i7;
                    break;
                case 51:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 52:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeFloatSize(numberAt, BitmapDescriptorFactory.HUE_RED);
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 53:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeInt64Size(numberAt, oneofLongAt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 54:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeUInt64Size(numberAt, oneofLongAt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 55:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeInt32Size(numberAt, oneofIntAt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 56:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 57:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        i8 = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 58:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 59:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        Object object2 = unsafe.getObject(t, offset);
                        computeBoolSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(numberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(numberAt, (String) object2);
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 60:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = SchemaUtil.computeSizeMessage(numberAt, unsafe.getObject(t, offset), getMessageFieldSchema(i13));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 61:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) unsafe.getObject(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 62:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeUInt32Size(numberAt, oneofIntAt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 63:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeEnumSize(numberAt, oneofIntAt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 64:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        i8 = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        i7 = i14 + i8;
                    }
                    i5 = i7;
                    break;
                case 65:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 66:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeSInt32Size(numberAt, oneofIntAt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 67:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeSInt64Size(numberAt, oneofLongAt(t, offset));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                case 68:
                    i7 = i14;
                    if (isOneofPresent(t, numberAt, i13)) {
                        computeBoolSize = CodedOutputStream.computeGroupSize(numberAt, (MessageLite) unsafe.getObject(t, offset), getMessageFieldSchema(i13));
                        i7 = i14 + computeBoolSize;
                    }
                    i5 = i7;
                    break;
                default:
                    i7 = i14;
                    i5 = i7;
                    break;
            }
            i13 += 3;
            i12 = i2;
            i14 = i5;
            i15 = i3;
        }
    }

    private int getSerializedSizeProto3(T t) {
        int i;
        int computeDoubleSize;
        int i2;
        int i3;
        int i4;
        Unsafe unsafe = UNSAFE;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i5 < this.buffer.length) {
                int typeAndOffsetAt = typeAndOffsetAt(i5);
                int type = type(typeAndOffsetAt);
                int numberAt = numberAt(i5);
                long offset = offset(typeAndOffsetAt);
                int i8 = (type < FieldType.DOUBLE_LIST_PACKED.m23818id() || type > FieldType.SINT64_LIST_PACKED.m23818id()) ? 0 : this.buffer[i5 + 2] & OFFSET_MASK;
                switch (type) {
                    case 0:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 1:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeFloatSize(numberAt, BitmapDescriptorFactory.HUE_RED);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 2:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeInt64Size(numberAt, UnsafeUtil.getLong(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 3:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeUInt64Size(numberAt, UnsafeUtil.getLong(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 4:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeInt32Size(numberAt, UnsafeUtil.getInt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 5:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 6:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeFixed32Size(numberAt, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 7:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeBoolSize(numberAt, true);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 8:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            Object object = UnsafeUtil.getObject(t, offset);
                            if (!(object instanceof ByteString)) {
                                computeDoubleSize = CodedOutputStream.computeStringSize(numberAt, (String) object);
                                break;
                            } else {
                                computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) object);
                                break;
                            }
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 9:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = SchemaUtil.computeSizeMessage(numberAt, UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 10:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) UnsafeUtil.getObject(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 11:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeUInt32Size(numberAt, UnsafeUtil.getInt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 12:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeEnumSize(numberAt, UnsafeUtil.getInt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 13:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 14:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 15:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeSInt32Size(numberAt, UnsafeUtil.getInt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 16:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeSInt64Size(numberAt, UnsafeUtil.getLong(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 17:
                        i = i7;
                        if (isFieldPresent(t, i5)) {
                            computeDoubleSize = CodedOutputStream.computeGroupSize(numberAt, (MessageLite) UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 18:
                        computeDoubleSize = SchemaUtil.computeSizeFixed64List(numberAt, listAt(t, offset), false);
                        break;
                    case 19:
                        computeDoubleSize = SchemaUtil.computeSizeFixed32List(numberAt, listAt(t, offset), false);
                        break;
                    case 20:
                        computeDoubleSize = SchemaUtil.computeSizeInt64List(numberAt, listAt(t, offset), false);
                        break;
                    case 21:
                        computeDoubleSize = SchemaUtil.computeSizeUInt64List(numberAt, listAt(t, offset), false);
                        break;
                    case 22:
                        computeDoubleSize = SchemaUtil.computeSizeInt32List(numberAt, listAt(t, offset), false);
                        break;
                    case 23:
                        computeDoubleSize = SchemaUtil.computeSizeFixed64List(numberAt, listAt(t, offset), false);
                        break;
                    case 24:
                        computeDoubleSize = SchemaUtil.computeSizeFixed32List(numberAt, listAt(t, offset), false);
                        break;
                    case 25:
                        computeDoubleSize = SchemaUtil.computeSizeBoolList(numberAt, listAt(t, offset), false);
                        break;
                    case 26:
                        computeDoubleSize = SchemaUtil.computeSizeStringList(numberAt, listAt(t, offset));
                        break;
                    case 27:
                        computeDoubleSize = SchemaUtil.computeSizeMessageList(numberAt, listAt(t, offset), getMessageFieldSchema(i5));
                        break;
                    case 28:
                        computeDoubleSize = SchemaUtil.computeSizeByteStringList(numberAt, listAt(t, offset));
                        break;
                    case 29:
                        computeDoubleSize = SchemaUtil.computeSizeUInt32List(numberAt, listAt(t, offset), false);
                        break;
                    case 30:
                        computeDoubleSize = SchemaUtil.computeSizeEnumList(numberAt, listAt(t, offset), false);
                        break;
                    case 31:
                        computeDoubleSize = SchemaUtil.computeSizeFixed32List(numberAt, listAt(t, offset), false);
                        break;
                    case 32:
                        computeDoubleSize = SchemaUtil.computeSizeFixed64List(numberAt, listAt(t, offset), false);
                        break;
                    case 33:
                        computeDoubleSize = SchemaUtil.computeSizeSInt32List(numberAt, listAt(t, offset), false);
                        break;
                    case 34:
                        computeDoubleSize = SchemaUtil.computeSizeSInt64List(numberAt, listAt(t, offset), false);
                        break;
                    case 35:
                        int computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeFixed64ListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeFixed64ListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                            i4 = computeSizeFixed64ListNoTag;
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 36:
                        int computeSizeFixed32ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeFixed32ListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeFixed32ListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeFixed32ListNoTag;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 37:
                        int computeSizeInt64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeInt64ListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeInt64ListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeInt64ListNoTag;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeInt64ListNoTag);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 38:
                        int computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeUInt64ListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeUInt64ListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeUInt64ListNoTag;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeUInt64ListNoTag);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 39:
                        int computeSizeInt32ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeInt32ListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeInt32ListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeInt32ListNoTag;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeInt32ListNoTag);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 40:
                        int computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeFixed64ListNoTag2 > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeFixed64ListNoTag2);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeFixed64ListNoTag2;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 41:
                        int computeSizeFixed32ListNoTag2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeFixed32ListNoTag2 > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeFixed32ListNoTag2);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeFixed32ListNoTag2;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag2);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 42:
                        int computeSizeBoolListNoTag = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeBoolListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeBoolListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeBoolListNoTag;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeBoolListNoTag);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 43:
                        int computeSizeUInt32ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeUInt32ListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeUInt32ListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeUInt32ListNoTag;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeUInt32ListNoTag);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 44:
                        int computeSizeEnumListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeEnumListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeEnumListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeEnumListNoTag;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeEnumListNoTag);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 45:
                        int computeSizeFixed32ListNoTag3 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeFixed32ListNoTag3 > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeFixed32ListNoTag3);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeFixed32ListNoTag3;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag3);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 46:
                        int computeSizeFixed64ListNoTag3 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeFixed64ListNoTag3 > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeFixed64ListNoTag3);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeFixed64ListNoTag3;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag3);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 47:
                        int computeSizeSInt32ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeSInt32ListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeSInt32ListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeSInt32ListNoTag;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeSInt32ListNoTag);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 48:
                        int computeSizeSInt64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(t, offset));
                        i = i7;
                        if (computeSizeSInt64ListNoTag > 0) {
                            if (this.useCachedSizeField) {
                                unsafe.putInt(t, i8, computeSizeSInt64ListNoTag);
                            }
                            i3 = CodedOutputStream.computeTagSize(numberAt);
                            i4 = computeSizeSInt64ListNoTag;
                            i2 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeSInt64ListNoTag);
                            computeDoubleSize = i3 + i2 + i4;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 49:
                        computeDoubleSize = SchemaUtil.computeSizeGroupList(numberAt, listAt(t, offset), getMessageFieldSchema(i5));
                        break;
                    case 50:
                        computeDoubleSize = this.mapFieldSchema.getSerializedSize(numberAt, UnsafeUtil.getObject(t, offset), getMapFieldDefaultEntry(i5));
                        break;
                    case 51:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 52:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeFloatSize(numberAt, BitmapDescriptorFactory.HUE_RED);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 53:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeInt64Size(numberAt, oneofLongAt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 54:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeUInt64Size(numberAt, oneofLongAt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 55:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeInt32Size(numberAt, oneofIntAt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 56:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 57:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeFixed32Size(numberAt, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 58:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeBoolSize(numberAt, true);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 59:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            Object object2 = UnsafeUtil.getObject(t, offset);
                            if (!(object2 instanceof ByteString)) {
                                computeDoubleSize = CodedOutputStream.computeStringSize(numberAt, (String) object2);
                                break;
                            } else {
                                computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) object2);
                                break;
                            }
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 60:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = SchemaUtil.computeSizeMessage(numberAt, UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 61:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) UnsafeUtil.getObject(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 62:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeUInt32Size(numberAt, oneofIntAt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 63:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeEnumSize(numberAt, oneofIntAt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 64:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 65:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 66:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeSInt32Size(numberAt, oneofIntAt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 67:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeSInt64Size(numberAt, oneofLongAt(t, offset));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    case 68:
                        i = i7;
                        if (isOneofPresent(t, numberAt, i5)) {
                            computeDoubleSize = CodedOutputStream.computeGroupSize(numberAt, (MessageLite) UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i6 = i;
                        }
                    default:
                        i = i7;
                        continue;
                        i5 += 3;
                        i6 = i;
                }
                i = i7 + computeDoubleSize;
                i5 += 3;
                i6 = i;
            } else {
                return i7 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t);
            }
        }
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t) {
        return unknownFieldSchema.getSerializedSize(unknownFieldSchema.getFromMessage(t));
    }

    private static <T> int intAt(T t, long j) {
        return UnsafeUtil.getInt(t, j);
    }

    private static boolean isEnforceUtf8(int i) {
        return (i & ENFORCE_UTF8_MASK) != 0;
    }

    private boolean isFieldPresent(T t, int i) {
        if (!this.proto3) {
            int presenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
            return (UnsafeUtil.getInt(t, (long) (presenceMaskAndOffsetAt & OFFSET_MASK)) & (1 << (presenceMaskAndOffsetAt >>> 20))) != 0;
        }
        int typeAndOffsetAt = typeAndOffsetAt(i);
        long offset = offset(typeAndOffsetAt);
        switch (type(typeAndOffsetAt)) {
            case 0:
                return UnsafeUtil.getDouble(t, offset) != 0.0d;
            case 1:
                return UnsafeUtil.getFloat(t, offset) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 3:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 4:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 5:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 6:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 7:
                return UnsafeUtil.getBoolean(t, offset);
            case 8:
                Object object = UnsafeUtil.getObject(t, offset);
                if (object instanceof String) {
                    return !((String) object).isEmpty();
                } else if (!(object instanceof ByteString)) {
                    throw new IllegalArgumentException();
                } else {
                    return !ByteString.EMPTY.equals(object);
                }
            case 9:
                return UnsafeUtil.getObject(t, offset) != null;
            case 10:
                return !ByteString.EMPTY.equals(UnsafeUtil.getObject(t, offset));
            case 11:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 12:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 13:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 14:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 15:
                return UnsafeUtil.getInt(t, offset) != 0;
            case 16:
                return UnsafeUtil.getLong(t, offset) != 0;
            case 17:
                return UnsafeUtil.getObject(t, offset) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private boolean isFieldPresent(T t, int i, int i2, int i3) {
        return this.proto3 ? isFieldPresent(t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean isInitialized(Object obj, int i, Schema schema) {
        return schema.isInitialized(UnsafeUtil.getObject(obj, offset(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean isListInitialized(Object obj, int i, int i2) {
        List list = (List) UnsafeUtil.getObject(obj, offset(i));
        if (list.isEmpty()) {
            return true;
        }
        Schema messageFieldSchema = getMessageFieldSchema(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!messageFieldSchema.isInitialized(list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    private boolean isMapInitialized(T t, int i, int i2) {
        Map<?, ?> forMapData = this.mapFieldSchema.forMapData(UnsafeUtil.getObject(t, offset(i)));
        if (forMapData.isEmpty()) {
            return true;
        }
        if (this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2)).valueType.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        Schema<T> schema = null;
        for (Object obj : forMapData.values()) {
            Schema<T> schema2 = schema;
            if (schema == null) {
                schema2 = Protobuf.getInstance().schemaFor((Class) obj.getClass());
            }
            schema = schema2;
            if (!schema2.isInitialized(obj)) {
                return false;
            }
        }
        return true;
    }

    private boolean isOneofCaseEqual(T t, T t2, int i) {
        long presenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i) & OFFSET_MASK;
        return UnsafeUtil.getInt(t, presenceMaskAndOffsetAt) == UnsafeUtil.getInt(t2, presenceMaskAndOffsetAt);
    }

    private boolean isOneofPresent(T t, int i, int i2) {
        return UnsafeUtil.getInt(t, (long) (presenceMaskAndOffsetAt(i2) & OFFSET_MASK)) == i;
    }

    private static boolean isRequired(int i) {
        return (i & REQUIRED_MASK) != 0;
    }

    private static List<?> listAt(Object obj, long j) {
        return (List) UnsafeUtil.getObject(obj, j);
    }

    private static <T> long longAt(T t, long j) {
        return UnsafeUtil.getLong(t, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0105, code lost:
        r17 = r8.checkInitializedCount;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0111, code lost:
        if (r17 >= r8.repeatedFieldOffsetStart) goto L572;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0114, code lost:
        r20 = filterMapUnknownEnumValues(r11, r8.intArray[r17], r20, r9);
        r17 = r17 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012d, code lost:
        if (r20 == null) goto L578;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0130, code lost:
        r9.setBuilderToMessage(r11, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0137, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <UT, UB, ET extends com.explorestack.protobuf.FieldSet.FieldDescriptorLite<ET>> void mergeFromHelper(com.explorestack.protobuf.UnknownFieldSchema<UT, UB> r9, com.explorestack.protobuf.ExtensionSchema<ET> r10, T r11, com.explorestack.protobuf.Reader r12, com.explorestack.protobuf.ExtensionRegistryLite r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 4063
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.MessageSchema.mergeFromHelper(com.explorestack.protobuf.UnknownFieldSchema, com.explorestack.protobuf.ExtensionSchema, java.lang.Object, com.explorestack.protobuf.Reader, com.explorestack.protobuf.ExtensionRegistryLite):void");
    }

    private final <K, V> void mergeMap(Object obj, int i, Object obj2, ExtensionRegistryLite extensionRegistryLite, Reader reader) throws IOException {
        Object obj3;
        long offset = offset(typeAndOffsetAt(i));
        Object object = UnsafeUtil.getObject(obj, offset);
        if (object == null) {
            obj3 = this.mapFieldSchema.newMapField(obj2);
            UnsafeUtil.putObject(obj, offset, obj3);
        } else {
            obj3 = object;
            if (this.mapFieldSchema.isImmutable(object)) {
                obj3 = this.mapFieldSchema.newMapField(obj2);
                this.mapFieldSchema.mergeFrom(obj3, object);
                UnsafeUtil.putObject(obj, offset, obj3);
            }
        }
        reader.readMap(this.mapFieldSchema.forMutableMapData(obj3), this.mapFieldSchema.forMapMetadata(obj2), extensionRegistryLite);
    }

    private void mergeMessage(T t, T t2, int i) {
        long offset = offset(typeAndOffsetAt(i));
        if (!isFieldPresent(t2, i)) {
            return;
        }
        Object object = UnsafeUtil.getObject(t, offset);
        Object object2 = UnsafeUtil.getObject(t2, offset);
        if (object != null && object2 != null) {
            UnsafeUtil.putObject(t, offset, Internal.mergeMessage(object, object2));
            setFieldPresent(t, i);
        } else if (object2 == null) {
        } else {
            UnsafeUtil.putObject(t, offset, object2);
            setFieldPresent(t, i);
        }
    }

    private void mergeOneofMessage(T t, T t2, int i) {
        int typeAndOffsetAt = typeAndOffsetAt(i);
        int numberAt = numberAt(i);
        long offset = offset(typeAndOffsetAt);
        if (!isOneofPresent(t2, numberAt, i)) {
            return;
        }
        Object object = UnsafeUtil.getObject(t, offset);
        Object object2 = UnsafeUtil.getObject(t2, offset);
        if (object != null && object2 != null) {
            UnsafeUtil.putObject(t, offset, Internal.mergeMessage(object, object2));
            setOneofPresent(t, numberAt, i);
        } else if (object2 == null) {
        } else {
            UnsafeUtil.putObject(t, offset, object2);
            setOneofPresent(t, numberAt, i);
        }
    }

    private void mergeSingleField(T t, T t2, int i) {
        int typeAndOffsetAt = typeAndOffsetAt(i);
        long offset = offset(typeAndOffsetAt);
        int numberAt = numberAt(i);
        switch (type(typeAndOffsetAt)) {
            case 0:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putDouble(t, offset, UnsafeUtil.getDouble(t2, offset));
                setFieldPresent(t, i);
                return;
            case 1:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putFloat(t, offset, UnsafeUtil.getFloat(t2, offset));
                setFieldPresent(t, i);
                return;
            case 2:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                setFieldPresent(t, i);
                return;
            case 3:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                setFieldPresent(t, i);
                return;
            case 4:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                setFieldPresent(t, i);
                return;
            case 5:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                setFieldPresent(t, i);
                return;
            case 6:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                setFieldPresent(t, i);
                return;
            case 7:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putBoolean(t, offset, UnsafeUtil.getBoolean(t2, offset));
                setFieldPresent(t, i);
                return;
            case 8:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                setFieldPresent(t, i);
                return;
            case 9:
                mergeMessage(t, t2, i);
                return;
            case 10:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                setFieldPresent(t, i);
                return;
            case 11:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                setFieldPresent(t, i);
                return;
            case 12:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                setFieldPresent(t, i);
                return;
            case 13:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                setFieldPresent(t, i);
                return;
            case 14:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                setFieldPresent(t, i);
                return;
            case 15:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                setFieldPresent(t, i);
                return;
            case 16:
                if (!isFieldPresent(t2, i)) {
                    return;
                }
                UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                setFieldPresent(t, i);
                return;
            case 17:
                mergeMessage(t, t2, i);
                return;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.listFieldSchema.mergeListsAt(t, t2, offset);
                return;
            case 50:
                SchemaUtil.mergeMap(this.mapFieldSchema, t, t2, offset);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (!isOneofPresent(t2, numberAt, i)) {
                    return;
                }
                UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                setOneofPresent(t, numberAt, i);
                return;
            case 60:
                mergeOneofMessage(t, t2, i);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (!isOneofPresent(t2, numberAt, i)) {
                    return;
                }
                UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                setOneofPresent(t, numberAt, i);
                return;
            case 68:
                mergeOneofMessage(t, t2, i);
                return;
            default:
                return;
        }
    }

    public static <T> MessageSchema<T> newSchema(Class<T> cls, MessageInfo messageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        return messageInfo instanceof RawMessageInfo ? newSchemaForRawMessageInfo((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema) : newSchemaForMessageInfo((StructuralMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    static <T> MessageSchema<T> newSchemaForMessageInfo(StructuralMessageInfo structuralMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z = structuralMessageInfo.getSyntax() == ProtoSyntax.PROTO3;
        FieldInfo[] fields = structuralMessageInfo.getFields();
        if (fields.length == 0) {
            i2 = 0;
            i = 0;
        } else {
            i2 = fields[0].getFieldNumber();
            i = fields[fields.length - 1].getFieldNumber();
        }
        int length = fields.length;
        int[] iArr = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int length2 = fields.length;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            i3 = i9;
            if (i7 >= length2) {
                break;
            }
            FieldInfo fieldInfo = fields[i7];
            if (fieldInfo.getType() == FieldType.MAP) {
                i6 = i8 + 1;
                i5 = i3;
            } else {
                i6 = i8;
                i5 = i3;
                if (fieldInfo.getType().m23818id() >= 18) {
                    i6 = i8;
                    i5 = i3;
                    if (fieldInfo.getType().m23818id() <= 49) {
                        i5 = i3 + 1;
                        i6 = i8;
                    }
                }
            }
            i7++;
            i8 = i6;
            i9 = i5;
        }
        int[] iArr2 = null;
        int[] iArr3 = i8 > 0 ? new int[i8] : null;
        if (i3 > 0) {
            iArr2 = new int[i3];
        }
        int[] checkInitialized = structuralMessageInfo.getCheckInitialized();
        int[] iArr4 = checkInitialized;
        if (checkInitialized == null) {
            iArr4 = EMPTY_INT_ARRAY;
        }
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i10 < fields.length) {
            FieldInfo fieldInfo2 = fields[i10];
            int fieldNumber = fieldInfo2.getFieldNumber();
            storeFieldData(fieldInfo2, iArr, i11, z, objArr);
            int i15 = i12;
            if (i12 < iArr4.length) {
                i15 = i12;
                if (iArr4[i12] == fieldNumber) {
                    iArr4[i12] = i11;
                    i15 = i12 + 1;
                }
            }
            if (fieldInfo2.getType() == FieldType.MAP) {
                iArr3[i13] = i11;
                i4 = i13 + 1;
            } else {
                i4 = i13;
                if (fieldInfo2.getType().m23818id() >= 18) {
                    i4 = i13;
                    if (fieldInfo2.getType().m23818id() <= 49) {
                        iArr2[i14] = (int) UnsafeUtil.objectFieldOffset(fieldInfo2.getField());
                        i14++;
                        i10++;
                        i11 += 3;
                        i12 = i15;
                    }
                }
            }
            i13 = i4;
            i10++;
            i11 += 3;
            i12 = i15;
        }
        int[] iArr5 = iArr3;
        if (iArr3 == null) {
            iArr5 = EMPTY_INT_ARRAY;
        }
        int[] iArr6 = iArr2;
        if (iArr2 == null) {
            iArr6 = EMPTY_INT_ARRAY;
        }
        int[] iArr7 = new int[iArr4.length + iArr5.length + iArr6.length];
        System.arraycopy(iArr4, 0, iArr7, 0, iArr4.length);
        System.arraycopy(iArr5, 0, iArr7, iArr4.length, iArr5.length);
        System.arraycopy(iArr6, 0, iArr7, iArr4.length + iArr5.length, iArr6.length);
        return new MessageSchema<>(iArr, objArr, i2, i, structuralMessageInfo.getDefaultInstance(), z, true, iArr7, iArr4.length, iArr4.length + iArr5.length, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    /* JADX WARN: Removed duplicated region for block: B:177:0x0994  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.explorestack.protobuf.MessageSchema<T> newSchemaForRawMessageInfo(com.explorestack.protobuf.RawMessageInfo r18, com.explorestack.protobuf.NewInstanceSchema r19, com.explorestack.protobuf.ListFieldSchema r20, com.explorestack.protobuf.UnknownFieldSchema<?, ?> r21, com.explorestack.protobuf.ExtensionSchema<?> r22, com.explorestack.protobuf.MapFieldSchema r23) {
        /*
            Method dump skipped, instructions count: 2690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.MessageSchema.newSchemaForRawMessageInfo(com.explorestack.protobuf.RawMessageInfo, com.explorestack.protobuf.NewInstanceSchema, com.explorestack.protobuf.ListFieldSchema, com.explorestack.protobuf.UnknownFieldSchema, com.explorestack.protobuf.ExtensionSchema, com.explorestack.protobuf.MapFieldSchema):com.explorestack.protobuf.MessageSchema");
    }

    private int numberAt(int i) {
        return this.buffer[i];
    }

    private static long offset(int i) {
        return i & OFFSET_MASK;
    }

    private static <T> boolean oneofBooleanAt(T t, long j) {
        return ((Boolean) UnsafeUtil.getObject(t, j)).booleanValue();
    }

    private static <T> double oneofDoubleAt(T t, long j) {
        return ((Double) UnsafeUtil.getObject(t, j)).doubleValue();
    }

    private static <T> float oneofFloatAt(T t, long j) {
        return ((Float) UnsafeUtil.getObject(t, j)).floatValue();
    }

    private static <T> int oneofIntAt(T t, long j) {
        return ((Integer) UnsafeUtil.getObject(t, j)).intValue();
    }

    private static <T> long oneofLongAt(T t, long j) {
        return ((Long) UnsafeUtil.getObject(t, j)).longValue();
    }

    private <K, V> int parseMapField(T t, byte[] bArr, int i, int i2, int i3, long j, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe = UNSAFE;
        Object mapFieldDefaultEntry = getMapFieldDefaultEntry(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.mapFieldSchema.isImmutable(object)) {
            obj = this.mapFieldSchema.newMapField(mapFieldDefaultEntry);
            this.mapFieldSchema.mergeFrom(obj, object);
            unsafe.putObject(t, j, obj);
        }
        return decodeMapEntry(bArr, i, i2, this.mapFieldSchema.forMapMetadata(mapFieldDefaultEntry), this.mapFieldSchema.forMutableMapData(obj), registers);
    }

    private int parseOneofField(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe = UNSAFE;
        long j2 = this.buffer[i8 + 2] & OFFSET_MASK;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(ArrayDecoders.decodeDouble(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(ArrayDecoders.decodeFloat(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = ArrayDecoders.decodeVarint64(bArr, i, registers);
                    unsafe.putObject(t, j, Long.valueOf(registers.long1));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    unsafe.putObject(t, j, Integer.valueOf(registers.int1));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(ArrayDecoders.decodeFixed64(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(ArrayDecoders.decodeFixed32(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = ArrayDecoders.decodeVarint64(bArr, i, registers);
                    unsafe.putObject(t, j, Boolean.valueOf(registers.long1 != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    int i9 = registers.int1;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & ENFORCE_UTF8_MASK) != 0 && !Utf8.isValidUtf8(bArr, i, i + i9)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, Internal.UTF_8));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = ArrayDecoders.decodeMessageField(getMessageFieldSchema(i8), bArr, i, i2, registers);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, registers.object1);
                    } else {
                        unsafe.putObject(t, j, Internal.mergeMessage(object, registers.object1));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = ArrayDecoders.decodeBytes(bArr, i, registers);
                    unsafe.putObject(t, j, registers.object1);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    int i10 = registers.int1;
                    Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i8);
                    if (enumFieldVerifier != null && !enumFieldVerifier.isInRange(i10)) {
                        getMutableUnknownFields(t).storeField(i3, Long.valueOf(i10));
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                        break;
                    }
                }
                break;
            case 66:
                if (i5 == 0) {
                    i = ArrayDecoders.decodeVarint32(bArr, i, registers);
                    unsafe.putObject(t, j, Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = ArrayDecoders.decodeVarint64(bArr, i, registers);
                    unsafe.putObject(t, j, Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = ArrayDecoders.decodeGroupField(getMessageFieldSchema(i8), bArr, i, i2, (i3 & (-8)) | 4, registers);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, registers.object1);
                    } else {
                        unsafe.putObject(t, j, Internal.mergeMessage(object2, registers.object1));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v170, types: [int] */
    private int parseProto3Message(T t, byte[] bArr, int i, int i2, ArrayDecoders.Registers registers) throws IOException {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        MessageSchema<T> messageSchema = this;
        T t2 = t;
        byte[] bArr2 = bArr;
        int i11 = i2;
        ArrayDecoders.Registers registers2 = registers;
        Unsafe unsafe = UNSAFE;
        int i12 = i;
        int i13 = -1;
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (i12 >= i11) {
                if (i12 != i11) {
                    throw InvalidProtocolBufferException.parseFailure();
                }
                return i12;
            }
            int i16 = i12 + 1;
            byte b = bArr2[i12];
            if (b < 0) {
                i16 = ArrayDecoders.decodeVarint32(b, bArr2, i16, registers2);
                b = registers2.int1;
            }
            int i17 = b >>> 3;
            int i18 = b & 7;
            int positionForFieldNumber = i17 > i13 ? messageSchema.positionForFieldNumber(i17, i15 / 3) : messageSchema.positionForFieldNumber(i17);
            if (positionForFieldNumber == -1) {
                i7 = 0;
            } else {
                int i19 = messageSchema.buffer[positionForFieldNumber + 1];
                int type = type(i19);
                long offset = offset(i19);
                if (type <= 17) {
                    boolean z = true;
                    switch (type) {
                        case 0:
                            if (i18 == 1) {
                                UnsafeUtil.putDouble(t2, offset, ArrayDecoders.decodeDouble(bArr2, i16));
                                i9 = i16 + 8;
                                i3 = positionForFieldNumber;
                                i5 = i9;
                                i4 = i17;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 1:
                            if (i18 == 5) {
                                UnsafeUtil.putFloat(t2, offset, ArrayDecoders.decodeFloat(bArr2, i16));
                                i9 = i16 + 4;
                                i3 = positionForFieldNumber;
                                i5 = i9;
                                i4 = i17;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 2:
                        case 3:
                            if (i18 == 0) {
                                i9 = ArrayDecoders.decodeVarint64(bArr2, i16, registers2);
                                unsafe.putLong(t, offset, registers2.long1);
                                i3 = positionForFieldNumber;
                                i5 = i9;
                                i4 = i17;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 4:
                        case 11:
                            if (i18 == 0) {
                                i9 = ArrayDecoders.decodeVarint32(bArr2, i16, registers2);
                                unsafe.putInt(t2, offset, registers2.int1);
                                i3 = positionForFieldNumber;
                                i5 = i9;
                                i4 = i17;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 5:
                        case 14:
                            if (i18 == 1) {
                                unsafe.putLong(t, offset, ArrayDecoders.decodeFixed64(bArr2, i16));
                                i9 = i16 + 8;
                                i3 = positionForFieldNumber;
                                i5 = i9;
                                i4 = i17;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 6:
                        case 13:
                            if (i18 == 5) {
                                unsafe.putInt(t2, offset, ArrayDecoders.decodeFixed32(bArr2, i16));
                                i10 = i16 + 4;
                                int i20 = positionForFieldNumber;
                                i5 = i10;
                                i4 = i17;
                                i3 = i20;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 7:
                            if (i18 == 0) {
                                i10 = ArrayDecoders.decodeVarint64(bArr2, i16, registers2);
                                if (registers2.long1 == 0) {
                                    z = false;
                                }
                                UnsafeUtil.putBoolean(t2, offset, z);
                                int i202 = positionForFieldNumber;
                                i5 = i10;
                                i4 = i17;
                                i3 = i202;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 8:
                            if (i18 == 2) {
                                i10 = (ENFORCE_UTF8_MASK & i19) == 0 ? ArrayDecoders.decodeString(bArr2, i16, registers2) : ArrayDecoders.decodeStringRequireUtf8(bArr2, i16, registers2);
                                unsafe.putObject(t2, offset, registers2.object1);
                                int i2022 = positionForFieldNumber;
                                i5 = i10;
                                i4 = i17;
                                i3 = i2022;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 9:
                            if (i18 == 2) {
                                i10 = ArrayDecoders.decodeMessageField(messageSchema.getMessageFieldSchema(positionForFieldNumber), bArr2, i16, i11, registers2);
                                Object object = unsafe.getObject(t2, offset);
                                if (object == null) {
                                    unsafe.putObject(t2, offset, registers2.object1);
                                } else {
                                    unsafe.putObject(t2, offset, Internal.mergeMessage(object, registers2.object1));
                                }
                                int i20222 = positionForFieldNumber;
                                i5 = i10;
                                i4 = i17;
                                i3 = i20222;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 10:
                            if (i18 == 2) {
                                i10 = ArrayDecoders.decodeBytes(bArr2, i16, registers2);
                                unsafe.putObject(t2, offset, registers2.object1);
                                int i202222 = positionForFieldNumber;
                                i5 = i10;
                                i4 = i17;
                                i3 = i202222;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 12:
                            if (i18 == 0) {
                                i9 = ArrayDecoders.decodeVarint32(bArr2, i16, registers2);
                                unsafe.putInt(t2, offset, registers2.int1);
                                i3 = positionForFieldNumber;
                                i5 = i9;
                                i4 = i17;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 15:
                            if (i18 == 0) {
                                i9 = ArrayDecoders.decodeVarint32(bArr2, i16, registers2);
                                unsafe.putInt(t2, offset, CodedInputStream.decodeZigZag32(registers2.int1));
                                i3 = positionForFieldNumber;
                                i5 = i9;
                                i4 = i17;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        case 16:
                            if (i18 == 0) {
                                i9 = ArrayDecoders.decodeVarint64(bArr2, i16, registers2);
                                unsafe.putLong(t, offset, CodedInputStream.decodeZigZag64(registers2.long1));
                                i3 = positionForFieldNumber;
                                i5 = i9;
                                i4 = i17;
                                break;
                            }
                            i7 = positionForFieldNumber;
                            break;
                        default:
                            i7 = positionForFieldNumber;
                            break;
                    }
                    i12 = i5;
                    i13 = i4;
                    i14 = i3;
                } else {
                    if (type != 27) {
                        i7 = positionForFieldNumber;
                        if (type <= 49) {
                            int parseRepeatedField = parseRepeatedField(t, bArr, i16, i2, b, i17, i18, i7, i19, type, offset, registers);
                            i5 = parseRepeatedField;
                            i6 = i7;
                            if (parseRepeatedField == i16) {
                                i8 = parseRepeatedField;
                                i16 = i8;
                            }
                        } else {
                            int i21 = i16;
                            if (type == 50) {
                                positionForFieldNumber = i7;
                                if (i18 == 2) {
                                    int parseMapField = parseMapField(t, bArr, i21, i2, i7, offset, registers);
                                    i5 = parseMapField;
                                    i6 = i7;
                                    if (parseMapField == i21) {
                                        i8 = parseMapField;
                                        i16 = i8;
                                    }
                                }
                            } else {
                                int parseOneofField = parseOneofField(t, bArr, i21, i2, b, i17, i18, i19, type, offset, i7, registers);
                                i5 = parseOneofField;
                                i6 = i7;
                                if (parseOneofField == i21) {
                                    i8 = parseOneofField;
                                    i16 = i8;
                                }
                            }
                        }
                        messageSchema = this;
                        t2 = t;
                        bArr2 = bArr;
                        i11 = i2;
                        registers2 = registers;
                        i4 = i17;
                        i3 = i6;
                        i12 = i5;
                        i13 = i4;
                        i14 = i3;
                    } else if (i18 == 2) {
                        Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe.getObject(t2, offset);
                        Internal.ProtobufList protobufList2 = protobufList;
                        if (!protobufList.isModifiable()) {
                            int size = protobufList.size();
                            protobufList2 = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
                            unsafe.putObject(t2, offset, protobufList2);
                        }
                        int decodeMessageList = ArrayDecoders.decodeMessageList(messageSchema.getMessageFieldSchema(positionForFieldNumber), b, bArr, i16, i2, protobufList2, registers);
                        i4 = i17;
                        i3 = positionForFieldNumber;
                        i5 = decodeMessageList;
                        i12 = i5;
                        i13 = i4;
                        i14 = i3;
                    }
                    i7 = positionForFieldNumber;
                }
            }
            i5 = ArrayDecoders.decodeUnknownField(b, bArr, i16, i2, getMutableUnknownFields(t), registers);
            i6 = i7;
            messageSchema = this;
            t2 = t;
            bArr2 = bArr;
            i11 = i2;
            registers2 = registers;
            i4 = i17;
            i3 = i6;
            i12 = i5;
            i13 = i4;
            i14 = i3;
        }
    }

    private int parseRepeatedField(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, ArrayDecoders.Registers registers) throws IOException {
        Unsafe unsafe = UNSAFE;
        Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe.getObject(t, j2);
        Internal.ProtobufList protobufList2 = protobufList;
        if (!protobufList.isModifiable()) {
            int size = protobufList.size();
            protobufList2 = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            unsafe.putObject(t, j2, protobufList2);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 != 2) {
                    if (i5 == 1) {
                        i = ArrayDecoders.decodeDoubleList(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                } else {
                    i = ArrayDecoders.decodePackedDoubleList(bArr, i, protobufList2, registers);
                    break;
                }
                break;
            case 19:
            case 36:
                if (i5 != 2) {
                    if (i5 == 5) {
                        i = ArrayDecoders.decodeFloatList(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                } else {
                    i = ArrayDecoders.decodePackedFloatList(bArr, i, protobufList2, registers);
                    break;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = ArrayDecoders.decodeVarint64List(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                } else {
                    i = ArrayDecoders.decodePackedVarint64List(bArr, i, protobufList2, registers);
                    break;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = ArrayDecoders.decodeVarint32List(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                } else {
                    i = ArrayDecoders.decodePackedVarint32List(bArr, i, protobufList2, registers);
                    break;
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 != 2) {
                    if (i5 == 1) {
                        i = ArrayDecoders.decodeFixed64List(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                } else {
                    i = ArrayDecoders.decodePackedFixed64List(bArr, i, protobufList2, registers);
                    break;
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 != 2) {
                    if (i5 == 5) {
                        i = ArrayDecoders.decodeFixed32List(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                } else {
                    i = ArrayDecoders.decodePackedFixed32List(bArr, i, protobufList2, registers);
                    break;
                }
                break;
            case 25:
            case 42:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = ArrayDecoders.decodeBoolList(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                } else {
                    i = ArrayDecoders.decodePackedBoolList(bArr, i, protobufList2, registers);
                    break;
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) != 0) {
                        i = ArrayDecoders.decodeStringListRequireUtf8(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    } else {
                        i = ArrayDecoders.decodeStringList(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                }
                break;
            case 27:
                if (i5 == 2) {
                    i = ArrayDecoders.decodeMessageList(getMessageFieldSchema(i6), i3, bArr, i, i2, protobufList2, registers);
                    break;
                }
                break;
            case 28:
                if (i5 == 2) {
                    i = ArrayDecoders.decodeBytesList(i3, bArr, i, i2, protobufList2, registers);
                    break;
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    i = ArrayDecoders.decodePackedVarint32List(bArr, i, protobufList2, registers);
                } else if (i5 == 0) {
                    i = ArrayDecoders.decodeVarint32List(i3, bArr, i, i2, protobufList2, registers);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t;
                UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
                UnknownFieldSetLite unknownFieldSetLite2 = unknownFieldSetLite;
                if (unknownFieldSetLite == UnknownFieldSetLite.getDefaultInstance()) {
                    unknownFieldSetLite2 = null;
                }
                UnknownFieldSetLite unknownFieldSetLite3 = (UnknownFieldSetLite) SchemaUtil.filterUnknownEnumList(i4, (List<Integer>) protobufList2, getEnumFieldVerifier(i6), unknownFieldSetLite2, (UnknownFieldSchema<UT, UnknownFieldSetLite>) this.unknownFieldSchema);
                if (unknownFieldSetLite3 != null) {
                    generatedMessageLite.unknownFields = unknownFieldSetLite3;
                    break;
                }
                break;
            case 33:
            case 47:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = ArrayDecoders.decodeSInt32List(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                } else {
                    i = ArrayDecoders.decodePackedSInt32List(bArr, i, protobufList2, registers);
                    break;
                }
                break;
            case 34:
            case 48:
                if (i5 != 2) {
                    if (i5 == 0) {
                        i = ArrayDecoders.decodeSInt64List(i3, bArr, i, i2, protobufList2, registers);
                        break;
                    }
                } else {
                    i = ArrayDecoders.decodePackedSInt64List(bArr, i, protobufList2, registers);
                    break;
                }
                break;
            case 49:
                if (i5 == 3) {
                    i = ArrayDecoders.decodeGroupList(getMessageFieldSchema(i6), i3, bArr, i, i2, protobufList2, registers);
                    break;
                }
                break;
        }
        return i;
    }

    private int positionForFieldNumber(int i) {
        if (i < this.minFieldNumber || i > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i, 0);
    }

    private int positionForFieldNumber(int i, int i2) {
        if (i < this.minFieldNumber || i > this.maxFieldNumber) {
            return -1;
        }
        return slowPositionForFieldNumber(i, i2);
    }

    private int presenceMaskAndOffsetAt(int i) {
        return this.buffer[i + 2];
    }

    private <E> void readGroupList(Object obj, long j, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        reader.readGroupList(this.listFieldSchema.mutableListAt(obj, j), schema, extensionRegistryLite);
    }

    private <E> void readMessageList(Object obj, int i, Reader reader, Schema<E> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        reader.readMessageList(this.listFieldSchema.mutableListAt(obj, offset(i)), schema, extensionRegistryLite);
    }

    private void readString(Object obj, int i, Reader reader) throws IOException {
        if (isEnforceUtf8(i)) {
            UnsafeUtil.putObject(obj, offset(i), reader.readStringRequireUtf8());
        } else if (this.lite) {
            UnsafeUtil.putObject(obj, offset(i), reader.readString());
        } else {
            UnsafeUtil.putObject(obj, offset(i), reader.readBytes());
        }
    }

    private void readStringList(Object obj, int i, Reader reader) throws IOException {
        if (isEnforceUtf8(i)) {
            reader.readStringListRequireUtf8(this.listFieldSchema.mutableListAt(obj, offset(i)));
        } else {
            reader.readStringList(this.listFieldSchema.mutableListAt(obj, offset(i)));
        }
    }

    private static Field reflectField(Class<?> cls, String str) {
        Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            for (Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private void setFieldPresent(T t, int i) {
        if (this.proto3) {
            return;
        }
        int presenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
        long j = presenceMaskAndOffsetAt & OFFSET_MASK;
        UnsafeUtil.putInt(t, j, UnsafeUtil.getInt(t, j) | (1 << (presenceMaskAndOffsetAt >>> 20)));
    }

    private void setOneofPresent(T t, int i, int i2) {
        UnsafeUtil.putInt(t, presenceMaskAndOffsetAt(i2) & OFFSET_MASK, i);
    }

    private int slowPositionForFieldNumber(int i, int i2) {
        int length = (this.buffer.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int numberAt = numberAt(i4);
            if (i == numberAt) {
                return i4;
            }
            if (i < numberAt) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void storeFieldData(com.explorestack.protobuf.FieldInfo r6, int[] r7, int r8, boolean r9, java.lang.Object[] r10) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.MessageSchema.storeFieldData(com.explorestack.protobuf.FieldInfo, int[], int, boolean, java.lang.Object[]):void");
    }

    private static int type(int i) {
        return (i & FIELD_TYPE_MASK) >>> 20;
    }

    private int typeAndOffsetAt(int i) {
        return this.buffer[i + 1];
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0968  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void writeFieldsInAscendingOrderProto2(T r9, com.explorestack.protobuf.Writer r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.MessageSchema.writeFieldsInAscendingOrderProto2(java.lang.Object, com.explorestack.protobuf.Writer):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x099b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void writeFieldsInAscendingOrderProto3(T r8, com.explorestack.protobuf.Writer r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.MessageSchema.writeFieldsInAscendingOrderProto3(java.lang.Object, com.explorestack.protobuf.Writer):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x09a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void writeFieldsInDescendingOrder(T r8, com.explorestack.protobuf.Writer r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.MessageSchema.writeFieldsInDescendingOrder(java.lang.Object, com.explorestack.protobuf.Writer):void");
    }

    private <K, V> void writeMapHelper(Writer writer, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            writer.writeMap(i, this.mapFieldSchema.forMapMetadata(getMapFieldDefaultEntry(i2)), this.mapFieldSchema.forMapData(obj));
        }
    }

    private void writeString(int i, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.writeString(i, (String) obj);
        } else {
            writer.writeBytes(i, (ByteString) obj);
        }
    }

    private <UT, UB> void writeUnknownInMessageTo(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t, Writer writer) throws IOException {
        unknownFieldSchema.writeTo(unknownFieldSchema.getFromMessage(t), writer);
    }

    @Override // com.explorestack.protobuf.Schema
    public final boolean equals(T t, T t2) {
        int length = this.buffer.length;
        for (int i = 0; i < length; i += 3) {
            if (!equals(t, t2, i)) {
                return false;
            }
        }
        if (!this.unknownFieldSchema.getFromMessage(t).equals(this.unknownFieldSchema.getFromMessage(t2))) {
            return false;
        }
        if (!this.hasExtensions) {
            return true;
        }
        return this.extensionSchema.getExtensions(t).equals(this.extensionSchema.getExtensions(t2));
    }

    public final int getSchemaSize() {
        return this.buffer.length * 3;
    }

    @Override // com.explorestack.protobuf.Schema
    public final int getSerializedSize(T t) {
        return this.proto3 ? getSerializedSizeProto3(t) : getSerializedSizeProto2(t);
    }

    @Override // com.explorestack.protobuf.Schema
    public final int hashCode(T t) {
        int i;
        int i2;
        int i3;
        int length = this.buffer.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = (i6 * 53) + this.unknownFieldSchema.getFromMessage(t).hashCode();
                int i7 = hashCode;
                if (this.hasExtensions) {
                    i7 = (hashCode * 53) + this.extensionSchema.getExtensions(t).hashCode();
                }
                return i7;
            }
            int typeAndOffsetAt = typeAndOffsetAt(i4);
            int numberAt = numberAt(i4);
            long offset = offset(typeAndOffsetAt);
            int i8 = 37;
            switch (type(typeAndOffsetAt)) {
                case 0:
                    i2 = i6 * 53;
                    i3 = Internal.hashLong(Double.doubleToLongBits(UnsafeUtil.getDouble(t, offset)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(UnsafeUtil.getFloat(t, offset));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = UnsafeUtil.getInt(t, offset);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = UnsafeUtil.getInt(t, offset);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = Internal.hashBoolean(UnsafeUtil.getBoolean(t, offset));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) UnsafeUtil.getObject(t, offset)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object object = UnsafeUtil.getObject(t, offset);
                    if (object != null) {
                        i8 = object.hashCode();
                    }
                    i = (i6 * 53) + i8;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = UnsafeUtil.getObject(t, offset).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = UnsafeUtil.getInt(t, offset);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = UnsafeUtil.getInt(t, offset);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = UnsafeUtil.getInt(t, offset);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = UnsafeUtil.getInt(t, offset);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i = i2 + i3;
                    break;
                case 17:
                    Object object2 = UnsafeUtil.getObject(t, offset);
                    if (object2 != null) {
                        i8 = object2.hashCode();
                    }
                    i = (i6 * 53) + i8;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i6 * 53;
                    i3 = UnsafeUtil.getObject(t, offset).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = UnsafeUtil.getObject(t, offset).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Internal.hashLong(Double.doubleToLongBits(oneofDoubleAt(t, offset)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(oneofFloatAt(t, offset));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Internal.hashLong(oneofLongAt(t, offset));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Internal.hashLong(oneofLongAt(t, offset));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = oneofIntAt(t, offset);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Internal.hashLong(oneofLongAt(t, offset));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = oneofIntAt(t, offset);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Internal.hashBoolean(oneofBooleanAt(t, offset));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) UnsafeUtil.getObject(t, offset)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = UnsafeUtil.getObject(t, offset).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = UnsafeUtil.getObject(t, offset).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = oneofIntAt(t, offset);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = oneofIntAt(t, offset);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = oneofIntAt(t, offset);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Internal.hashLong(oneofLongAt(t, offset));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = oneofIntAt(t, offset);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Internal.hashLong(oneofLongAt(t, offset));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!isOneofPresent(t, numberAt, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = UnsafeUtil.getObject(t, offset).hashCode();
                        i = i2 + i3;
                        break;
                    }
                default:
                    i = i6;
                    break;
            }
            i4 += 3;
            i5 = i;
        }
    }

    @Override // com.explorestack.protobuf.Schema
    public final boolean isInitialized(T t) {
        int i;
        int i2;
        int i3 = -1;
        int i4 = 0;
        int i5 = 0;
        while (i4 < this.checkInitializedCount) {
            int i6 = this.intArray[i4];
            int numberAt = numberAt(i6);
            int typeAndOffsetAt = typeAndOffsetAt(i6);
            if (!this.proto3) {
                int i7 = this.buffer[i6 + 2];
                int i8 = OFFSET_MASK & i7;
                int i9 = 1 << (i7 >>> 20);
                i2 = i3;
                i = i9;
                if (i8 != i3) {
                    i5 = UNSAFE.getInt(t, i8);
                    i2 = i8;
                    i = i9;
                }
            } else {
                i = 0;
                i2 = i3;
            }
            if (isRequired(typeAndOffsetAt) && !isFieldPresent(t, i6, i5, i)) {
                return false;
            }
            int type = type(typeAndOffsetAt);
            if (type != 9 && type != 17) {
                if (type != 27) {
                    if (type == 60 || type == 68) {
                        if (isOneofPresent(t, numberAt, i6) && !isInitialized(t, typeAndOffsetAt, getMessageFieldSchema(i6))) {
                            return false;
                        }
                    } else if (type != 49) {
                        if (type == 50 && !isMapInitialized(t, typeAndOffsetAt, i6)) {
                            return false;
                        }
                    }
                }
                if (!isListInitialized(t, typeAndOffsetAt, i6)) {
                    return false;
                }
            } else if (isFieldPresent(t, i6, i5, i) && !isInitialized(t, typeAndOffsetAt, getMessageFieldSchema(i6))) {
                return false;
            }
            i4++;
            i3 = i2;
        }
        return !this.hasExtensions || this.extensionSchema.getExtensions(t).isInitialized();
    }

    @Override // com.explorestack.protobuf.Schema
    public final void makeImmutable(T t) {
        int i;
        int i2 = this.checkInitializedCount;
        while (true) {
            i = this.repeatedFieldOffsetStart;
            if (i2 >= i) {
                break;
            }
            long offset = offset(typeAndOffsetAt(this.intArray[i2]));
            Object object = UnsafeUtil.getObject(t, offset);
            if (object != null) {
                UnsafeUtil.putObject(t, offset, this.mapFieldSchema.toImmutable(object));
            }
            i2++;
        }
        int length = this.intArray.length;
        for (int i3 = i; i3 < length; i3++) {
            this.listFieldSchema.makeImmutableListAt(t, this.intArray[i3]);
        }
        this.unknownFieldSchema.makeImmutable(t);
        if (this.hasExtensions) {
            this.extensionSchema.makeImmutable(t);
        }
    }

    @Override // com.explorestack.protobuf.Schema
    public final void mergeFrom(T t, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        Objects.requireNonNull(extensionRegistryLite);
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, t, reader, extensionRegistryLite);
    }

    @Override // com.explorestack.protobuf.Schema
    public final void mergeFrom(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.buffer.length; i += 3) {
            mergeSingleField(t, t2, i);
        }
        if (!this.proto3) {
            SchemaUtil.mergeUnknownFields(this.unknownFieldSchema, t, t2);
            if (!this.hasExtensions) {
                return;
            }
            SchemaUtil.mergeExtensions(this.extensionSchema, t, t2);
        }
    }

    @Override // com.explorestack.protobuf.Schema
    public final void mergeFrom(T t, byte[] bArr, int i, int i2, ArrayDecoders.Registers registers) throws IOException {
        if (this.proto3) {
            parseProto3Message(t, bArr, i, i2, registers);
        } else {
            parseProto2Message(t, bArr, i, i2, 0, registers);
        }
    }

    @Override // com.explorestack.protobuf.Schema
    public final T newInstance() {
        return (T) this.newInstanceSchema.newInstance(this.defaultInstance);
    }

    public final int parseProto2Message(T t, byte[] bArr, int i, int i2, int i3, ArrayDecoders.Registers registers) throws IOException {
        int i4;
        MessageSchema<T> messageSchema;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int decodeVarint64;
        int i16;
        int i17;
        int i18 = i2;
        int i19 = i3;
        Unsafe unsafe = UNSAFE;
        int i20 = -1;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = -1;
        while (true) {
            if (i < i18) {
                int i25 = i + 1;
                int i26 = bArr[i];
                if (i26 < 0) {
                    i25 = ArrayDecoders.decodeVarint32(i26, bArr, i25, registers);
                    i26 = registers.int1;
                }
                int i27 = i26 >>> 3;
                int i28 = i26 & 7;
                int positionForFieldNumber = i27 > i20 ? positionForFieldNumber(i27, i21 / 3) : positionForFieldNumber(i27);
                if (positionForFieldNumber == -1) {
                    int i29 = i25;
                    int i30 = i26;
                    i8 = i23;
                    i9 = i24;
                    i10 = i19;
                    i11 = i29;
                    i12 = i30;
                    positionForFieldNumber = 0;
                } else {
                    int i31 = this.buffer[positionForFieldNumber + 1];
                    int type = type(i31);
                    long offset = offset(i31);
                    if (type <= 17) {
                        int i32 = this.buffer[positionForFieldNumber + 2];
                        int i33 = 1 << (i32 >>> 20);
                        int i34 = i32 & OFFSET_MASK;
                        if (i34 != i24) {
                            if (i24 != -1) {
                                unsafe.putInt(t, i24, i23);
                            }
                            i24 = i34;
                            i15 = unsafe.getInt(t, i34);
                        } else {
                            i15 = i23;
                        }
                        switch (type) {
                            case 0:
                                if (i28 == 1) {
                                    UnsafeUtil.putDouble(t, offset, ArrayDecoders.decodeDouble(bArr, i25));
                                    i17 = i25 + 8;
                                    i15 |= i33;
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i = i17;
                                    i20 = i27;
                                    i23 = i15;
                                    break;
                                } else {
                                    int i35 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i35;
                                    break;
                                }
                            case 1:
                                int i36 = i25;
                                if (i28 == 5) {
                                    UnsafeUtil.putFloat(t, offset, ArrayDecoders.decodeFloat(bArr, i36));
                                    i17 = i36 + 4;
                                    i15 |= i33;
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i = i17;
                                    i20 = i27;
                                    i23 = i15;
                                    break;
                                } else {
                                    int i352 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i352;
                                    break;
                                }
                            case 2:
                            case 3:
                                if (i28 != 0) {
                                    int i3522 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i3522;
                                    break;
                                } else {
                                    decodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i25, registers);
                                    unsafe.putLong(t, offset, registers.long1);
                                    int i37 = i15 | i33;
                                    int i38 = decodeVarint64;
                                    i22 = i26;
                                    i18 = i2;
                                    i23 = i37;
                                    i21 = positionForFieldNumber;
                                    i20 = i27;
                                    i = i38;
                                    i19 = i3;
                                }
                            case 4:
                            case 11:
                                if (i28 == 0) {
                                    i17 = ArrayDecoders.decodeVarint32(bArr, i25, registers);
                                    unsafe.putInt(t, offset, registers.int1);
                                    i15 |= i33;
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i = i17;
                                    i20 = i27;
                                    i23 = i15;
                                    break;
                                } else {
                                    int i35222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i35222;
                                    break;
                                }
                            case 5:
                            case 14:
                                if (i28 == 1) {
                                    unsafe.putLong(t, offset, ArrayDecoders.decodeFixed64(bArr, i25));
                                    i17 = i25 + 8;
                                    i15 |= i33;
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i = i17;
                                    i20 = i27;
                                    i23 = i15;
                                    break;
                                } else {
                                    int i352222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i352222;
                                    break;
                                }
                            case 6:
                            case 13:
                                if (i28 != 5) {
                                    int i3522222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i3522222;
                                    break;
                                } else {
                                    unsafe.putInt(t, offset, ArrayDecoders.decodeFixed32(bArr, i25));
                                    i16 = i25 + 4;
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i20 = i27;
                                    i18 = i2;
                                    i = i16;
                                    i23 = i15 | i33;
                                    i19 = i3;
                                }
                            case 7:
                                if (i28 != 0) {
                                    int i35222222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i35222222;
                                    break;
                                } else {
                                    i16 = ArrayDecoders.decodeVarint64(bArr, i25, registers);
                                    UnsafeUtil.putBoolean(t, offset, registers.long1 != 0);
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i20 = i27;
                                    i18 = i2;
                                    i = i16;
                                    i23 = i15 | i33;
                                    i19 = i3;
                                }
                            case 8:
                                if (i28 != 2) {
                                    int i352222222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i352222222;
                                    break;
                                } else {
                                    i16 = (i31 & ENFORCE_UTF8_MASK) == 0 ? ArrayDecoders.decodeString(bArr, i25, registers) : ArrayDecoders.decodeStringRequireUtf8(bArr, i25, registers);
                                    unsafe.putObject(t, offset, registers.object1);
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i20 = i27;
                                    i18 = i2;
                                    i = i16;
                                    i23 = i15 | i33;
                                    i19 = i3;
                                }
                            case 9:
                                if (i28 != 2) {
                                    int i3522222222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i3522222222;
                                    break;
                                } else {
                                    i16 = ArrayDecoders.decodeMessageField(getMessageFieldSchema(positionForFieldNumber), bArr, i25, i2, registers);
                                    if ((i15 & i33) == 0) {
                                        unsafe.putObject(t, offset, registers.object1);
                                    } else {
                                        unsafe.putObject(t, offset, Internal.mergeMessage(unsafe.getObject(t, offset), registers.object1));
                                    }
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i20 = i27;
                                    i18 = i2;
                                    i = i16;
                                    i23 = i15 | i33;
                                    i19 = i3;
                                }
                            case 10:
                                if (i28 == 2) {
                                    i17 = ArrayDecoders.decodeBytes(bArr, i25, registers);
                                    unsafe.putObject(t, offset, registers.object1);
                                    i15 |= i33;
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i = i17;
                                    i20 = i27;
                                    i23 = i15;
                                    break;
                                } else {
                                    int i35222222222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i35222222222;
                                    break;
                                }
                            case 12:
                                if (i28 != 0) {
                                    int i352222222222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i352222222222;
                                    break;
                                } else {
                                    i17 = ArrayDecoders.decodeVarint32(bArr, i25, registers);
                                    int i39 = registers.int1;
                                    Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(positionForFieldNumber);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i39)) {
                                        unsafe.putInt(t, offset, i39);
                                        i15 |= i33;
                                        i21 = positionForFieldNumber;
                                        i22 = i26;
                                        i = i17;
                                        i20 = i27;
                                        i23 = i15;
                                        break;
                                    } else {
                                        getMutableUnknownFields(t).storeField(i26, Long.valueOf(i39));
                                        i21 = positionForFieldNumber;
                                        i22 = i26;
                                        i = i17;
                                        i20 = i27;
                                        i23 = i15;
                                    }
                                }
                                break;
                            case 15:
                                if (i28 == 0) {
                                    i17 = ArrayDecoders.decodeVarint32(bArr, i25, registers);
                                    unsafe.putInt(t, offset, CodedInputStream.decodeZigZag32(registers.int1));
                                    i15 |= i33;
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i = i17;
                                    i20 = i27;
                                    i23 = i15;
                                    break;
                                } else {
                                    int i3522222222222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i3522222222222;
                                    break;
                                }
                            case 16:
                                if (i28 != 0) {
                                    int i35222222222222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i35222222222222;
                                    break;
                                } else {
                                    decodeVarint64 = ArrayDecoders.decodeVarint64(bArr, i25, registers);
                                    unsafe.putLong(t, offset, CodedInputStream.decodeZigZag64(registers.long1));
                                    int i372 = i15 | i33;
                                    int i382 = decodeVarint64;
                                    i22 = i26;
                                    i18 = i2;
                                    i23 = i372;
                                    i21 = positionForFieldNumber;
                                    i20 = i27;
                                    i = i382;
                                    i19 = i3;
                                }
                            case 17:
                                if (i28 == 3) {
                                    i17 = ArrayDecoders.decodeGroupField(getMessageFieldSchema(positionForFieldNumber), bArr, i25, i2, (i27 << 3) | 4, registers);
                                    if ((i15 & i33) == 0) {
                                        unsafe.putObject(t, offset, registers.object1);
                                    } else {
                                        unsafe.putObject(t, offset, Internal.mergeMessage(unsafe.getObject(t, offset), registers.object1));
                                    }
                                    i15 |= i33;
                                    i21 = positionForFieldNumber;
                                    i22 = i26;
                                    i = i17;
                                    i20 = i27;
                                    i23 = i15;
                                    break;
                                } else {
                                    int i352222222222222 = i15;
                                    i9 = i24;
                                    i12 = i26;
                                    i10 = i3;
                                    i11 = i25;
                                    i8 = i352222222222222;
                                    break;
                                }
                            default:
                                int i3522222222222222 = i15;
                                i9 = i24;
                                i12 = i26;
                                i10 = i3;
                                i11 = i25;
                                i8 = i3522222222222222;
                                break;
                        }
                        i19 = i3;
                        i18 = i2;
                    } else {
                        if (type != 27) {
                            int i40 = positionForFieldNumber;
                            int i41 = i23;
                            if (type <= 49) {
                                int parseRepeatedField = parseRepeatedField(t, bArr, i25, i2, i26, i27, i28, i40, i31, type, offset, registers);
                                i14 = parseRepeatedField;
                                if (parseRepeatedField == i25) {
                                    i13 = parseRepeatedField;
                                    int i42 = i13;
                                    int i43 = i26;
                                    i10 = i3;
                                    i8 = i41;
                                    positionForFieldNumber = i40;
                                    i9 = i24;
                                    i12 = i43;
                                    i11 = i42;
                                }
                                i22 = i26;
                                i = i14;
                                i19 = i3;
                                i23 = i41;
                                i21 = i40;
                                i20 = i27;
                                i18 = i2;
                            } else {
                                int i44 = i25;
                                int i45 = i26;
                                if (type != 50) {
                                    i13 = parseOneofField(t, bArr, i44, i2, i45, i27, i28, i31, type, offset, i40, registers);
                                    if (i13 != i44) {
                                        i22 = i45;
                                        i = i13;
                                        i19 = i3;
                                        i23 = i41;
                                        i21 = i40;
                                        i20 = i27;
                                        i18 = i2;
                                    }
                                } else if (i28 == 2) {
                                    int parseMapField = parseMapField(t, bArr, i44, i2, i40, offset, registers);
                                    i14 = parseMapField;
                                    if (parseMapField == i44) {
                                        i13 = parseMapField;
                                    }
                                    i22 = i26;
                                    i = i14;
                                    i19 = i3;
                                    i23 = i41;
                                    i21 = i40;
                                    i20 = i27;
                                    i18 = i2;
                                }
                                int i422 = i13;
                                int i432 = i26;
                                i10 = i3;
                                i8 = i41;
                                positionForFieldNumber = i40;
                                i9 = i24;
                                i12 = i432;
                                i11 = i422;
                            }
                        } else if (i28 == 2) {
                            Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe.getObject(t, offset);
                            Internal.ProtobufList protobufList2 = protobufList;
                            if (!protobufList.isModifiable()) {
                                int size = protobufList.size();
                                protobufList2 = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
                                unsafe.putObject(t, offset, protobufList2);
                            }
                            int decodeMessageList = ArrayDecoders.decodeMessageList(getMessageFieldSchema(positionForFieldNumber), i26, bArr, i25, i2, protobufList2, registers);
                            i22 = i26;
                            i21 = positionForFieldNumber;
                            i20 = i27;
                            i = decodeMessageList;
                            i19 = i3;
                            i18 = i2;
                        }
                        int i46 = i23;
                        i9 = i24;
                        i12 = i26;
                        i10 = i3;
                        i11 = i25;
                        i8 = i46;
                    }
                }
                if (i12 != i10 || i10 == 0) {
                    int i47 = i9;
                    int i48 = positionForFieldNumber;
                    i23 = i8;
                    int i49 = i10;
                    i = (!this.hasExtensions || registers.extensionRegistry == ExtensionRegistryLite.getEmptyRegistry()) ? ArrayDecoders.decodeUnknownField(i12, bArr, i11, i2, getMutableUnknownFields(t), registers) : ArrayDecoders.decodeExtensionOrUnknownField(i12, bArr, i11, i2, t, this.defaultInstance, this.unknownFieldSchema, registers);
                    i20 = i27;
                    i21 = i48;
                    i22 = i12;
                    i24 = i47;
                    i19 = i49;
                    i18 = i2;
                } else {
                    messageSchema = this;
                    i5 = i9;
                    int i50 = i8;
                    i7 = i11;
                    i22 = i12;
                    i6 = i50;
                    i4 = i10;
                }
            } else {
                i4 = i19;
                messageSchema = this;
                i5 = i24;
                i6 = i23;
                i7 = i;
            }
        }
        if (i5 != -1) {
            unsafe.putInt(t, i5, i6);
        }
        UnknownFieldSetLite unknownFieldSetLite = null;
        for (int i51 = messageSchema.checkInitializedCount; i51 < messageSchema.repeatedFieldOffsetStart; i51++) {
            unknownFieldSetLite = (UnknownFieldSetLite) messageSchema.filterMapUnknownEnumValues(t, messageSchema.intArray[i51], unknownFieldSetLite, messageSchema.unknownFieldSchema);
        }
        if (unknownFieldSetLite != null) {
            messageSchema.unknownFieldSchema.setBuilderToMessage(t, unknownFieldSetLite);
        }
        if (i4 == 0) {
            if (i7 != i2) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (i7 > i2 || i22 != i4) {
            throw InvalidProtocolBufferException.parseFailure();
        }
        return i7;
    }

    @Override // com.explorestack.protobuf.Schema
    public final void writeTo(T t, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            writeFieldsInDescendingOrder(t, writer);
        } else if (this.proto3) {
            writeFieldsInAscendingOrderProto3(t, writer);
        } else {
            writeFieldsInAscendingOrderProto2(t, writer);
        }
    }
}
