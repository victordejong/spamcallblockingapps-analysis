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
/* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.protobuf.MessageSchema$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MessageSchema$1.class */
    public static /* synthetic */ class AnonymousClass1 {
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
    private <K, V> int decodeMapEntry(byte[] bArr, int i, int i2, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map, ArrayDecoders.Registers registers) throws IOException {
        int decodeVarint32 = ArrayDecoders.decodeVarint32(bArr, i, registers);
        int i3 = registers.int1;
        if (i3 < 0 || i3 > i2 - decodeVarint32) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i4 = decodeVarint32 + i3;
        Object obj = metadata.defaultKey;
        Object obj2 = metadata.defaultValue;
        while (decodeVarint32 < i4) {
            int i5 = decodeVarint32 + 1;
            byte b2 = bArr[decodeVarint32];
            int i6 = b2;
            if (b2 < 0) {
                i5 = ArrayDecoders.decodeVarint32(b2, bArr, i5, registers);
                i6 = registers.int1;
            }
            int i7 = i6 >>> 3;
            int i8 = i6 & 7;
            if (i7 != 1) {
                if (i7 == 2 && i8 == metadata.valueType.getWireType()) {
                    decodeVarint32 = decodeMapEntryValue(bArr, i5, i2, metadata.valueType, metadata.defaultValue.getClass(), registers);
                    obj2 = registers.object1;
                }
                decodeVarint32 = ArrayDecoders.skipField(i6, bArr, i5, i2, registers);
            } else if (i8 == metadata.keyType.getWireType()) {
                decodeVarint32 = decodeMapEntryValue(bArr, i5, i2, metadata.keyType, null, registers);
                obj = registers.object1;
            } else {
                decodeVarint32 = ArrayDecoders.skipField(i6, bArr, i5, i2, registers);
            }
        }
        if (decodeVarint32 == i4) {
            map.put(obj, obj2);
            return i4;
        }
        throw InvalidProtocolBufferException.parseFailure();
    }

    private int decodeMapEntryValue(byte[] bArr, int i, int i2, WireFormat.FieldType fieldType, Class<?> cls, ArrayDecoders.Registers registers) throws IOException {
        int i3;
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
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
        if (!(object == null || (enumFieldVerifier = getEnumFieldVerifier(i)) == null)) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
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
        int computeBoolSize;
        int i4;
        int i5;
        int i6;
        int i7;
        Unsafe unsafe = UNSAFE;
        int i8 = -1;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 < this.buffer.length) {
            int typeAndOffsetAt = typeAndOffsetAt(i9);
            int numberAt = numberAt(i9);
            int type = type(typeAndOffsetAt);
            if (type <= 17) {
                i2 = this.buffer[i9 + 2];
                int i12 = OFFSET_MASK & i2;
                i8 = i8;
                if (i12 != i8) {
                    i11 = unsafe.getInt(t, i12);
                    i8 = i12;
                }
                i = 1 << (i2 >>> 20);
            } else {
                i2 = (!this.useCachedSizeField || type < FieldType.DOUBLE_LIST_PACKED.id() || type > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i9 + 2] & OFFSET_MASK;
                i = 0;
                i11 = i11;
                i8 = i8;
            }
            long offset = offset(typeAndOffsetAt);
            switch (type) {
                case 0:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        i10 += i3;
                        break;
                    }
                case 1:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.computeFloatSize(numberAt, BitmapDescriptorFactory.HUE_RED);
                        i10 += i3;
                        break;
                    }
                case 2:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.computeInt64Size(numberAt, unsafe.getLong(t, offset));
                        i10 += i3;
                        break;
                    }
                case 3:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.computeUInt64Size(numberAt, unsafe.getLong(t, offset));
                        i10 += i3;
                        break;
                    }
                case 4:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.computeInt32Size(numberAt, unsafe.getInt(t, offset));
                        i10 += i3;
                        break;
                    }
                case 5:
                    i10 = i10;
                    if ((i11 & i) == 0) {
                        break;
                    } else {
                        i3 = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        i10 += i3;
                        break;
                    }
                case 6:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        i3 = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        i10 += i3;
                        break;
                    }
                    break;
                case 7:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        i10 += computeBoolSize;
                    }
                    break;
                case 8:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        Object object = unsafe.getObject(t, offset);
                        computeBoolSize = object instanceof ByteString ? CodedOutputStream.computeBytesSize(numberAt, (ByteString) object) : CodedOutputStream.computeStringSize(numberAt, (String) object);
                        i10 += computeBoolSize;
                    }
                    break;
                case 9:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        computeBoolSize = SchemaUtil.computeSizeMessage(numberAt, unsafe.getObject(t, offset), getMessageFieldSchema(i9));
                        i10 += computeBoolSize;
                    }
                    break;
                case 10:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) unsafe.getObject(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 11:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeUInt32Size(numberAt, unsafe.getInt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 12:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeEnumSize(numberAt, unsafe.getInt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 13:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        i4 = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        i10 += i4;
                    }
                    break;
                case 14:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        i10 += computeBoolSize;
                    }
                    break;
                case 15:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeSInt32Size(numberAt, unsafe.getInt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 16:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeSInt64Size(numberAt, unsafe.getLong(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 17:
                    i10 = i10;
                    if ((i11 & i) != 0) {
                        computeBoolSize = CodedOutputStream.computeGroupSize(numberAt, (MessageLite) unsafe.getObject(t, offset), getMessageFieldSchema(i9));
                        i10 += computeBoolSize;
                    }
                    break;
                case 18:
                    computeBoolSize = SchemaUtil.computeSizeFixed64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 19:
                    computeBoolSize = SchemaUtil.computeSizeFixed32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 20:
                    computeBoolSize = SchemaUtil.computeSizeInt64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 21:
                    computeBoolSize = SchemaUtil.computeSizeUInt64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 22:
                    computeBoolSize = SchemaUtil.computeSizeInt32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 23:
                    computeBoolSize = SchemaUtil.computeSizeFixed64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 24:
                    computeBoolSize = SchemaUtil.computeSizeFixed32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 25:
                    computeBoolSize = SchemaUtil.computeSizeBoolList(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 26:
                    computeBoolSize = SchemaUtil.computeSizeStringList(numberAt, (List) unsafe.getObject(t, offset));
                    i10 += computeBoolSize;
                    break;
                case 27:
                    computeBoolSize = SchemaUtil.computeSizeMessageList(numberAt, (List) unsafe.getObject(t, offset), getMessageFieldSchema(i9));
                    i10 += computeBoolSize;
                    break;
                case 28:
                    computeBoolSize = SchemaUtil.computeSizeByteStringList(numberAt, (List) unsafe.getObject(t, offset));
                    i10 += computeBoolSize;
                    break;
                case 29:
                    computeBoolSize = SchemaUtil.computeSizeUInt32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 30:
                    computeBoolSize = SchemaUtil.computeSizeEnumList(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 31:
                    computeBoolSize = SchemaUtil.computeSizeFixed32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 32:
                    computeBoolSize = SchemaUtil.computeSizeFixed64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 33:
                    computeBoolSize = SchemaUtil.computeSizeSInt32List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 34:
                    computeBoolSize = SchemaUtil.computeSizeSInt64List(numberAt, (List) unsafe.getObject(t, offset), false);
                    i10 += computeBoolSize;
                    break;
                case 35:
                    int computeSizeFixed64ListNoTag = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeFixed64ListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i7 = computeSizeFixed64ListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 36:
                    int computeSizeFixed32ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeFixed32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeFixed32ListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag);
                        i7 = computeSizeFixed32ListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 37:
                    int computeSizeInt64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeInt64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeInt64ListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeInt64ListNoTag);
                        i7 = computeSizeInt64ListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 38:
                    int computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeUInt64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeUInt64ListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeUInt64ListNoTag);
                        i7 = computeSizeUInt64ListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 39:
                    int computeSizeInt32ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeInt32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeInt32ListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeInt32ListNoTag);
                        i7 = computeSizeInt32ListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 40:
                    int computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeFixed64ListNoTag2 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeFixed64ListNoTag2);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                        i7 = computeSizeFixed64ListNoTag2;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 41:
                    int computeSizeFixed32ListNoTag2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeFixed32ListNoTag2 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeFixed32ListNoTag2);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag2);
                        i7 = computeSizeFixed32ListNoTag2;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 42:
                    int computeSizeBoolListNoTag = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeBoolListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeBoolListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeBoolListNoTag);
                        i7 = computeSizeBoolListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 43:
                    int computeSizeUInt32ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeUInt32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeUInt32ListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeUInt32ListNoTag);
                        i7 = computeSizeUInt32ListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 44:
                    int computeSizeEnumListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeEnumListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeEnumListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeEnumListNoTag);
                        i7 = computeSizeEnumListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 45:
                    int computeSizeFixed32ListNoTag3 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeFixed32ListNoTag3 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeFixed32ListNoTag3);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag3);
                        i7 = computeSizeFixed32ListNoTag3;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 46:
                    int computeSizeFixed64ListNoTag3 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeFixed64ListNoTag3 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeFixed64ListNoTag3);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag3);
                        i7 = computeSizeFixed64ListNoTag3;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 47:
                    int computeSizeSInt32ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeSInt32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeSInt32ListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeSInt32ListNoTag);
                        i7 = computeSizeSInt32ListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 48:
                    int computeSizeSInt64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(t, offset));
                    i10 = i10;
                    if (computeSizeSInt64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i2, computeSizeSInt64ListNoTag);
                        }
                        i6 = CodedOutputStream.computeTagSize(numberAt);
                        i5 = CodedOutputStream.computeUInt32SizeNoTag(computeSizeSInt64ListNoTag);
                        i7 = computeSizeSInt64ListNoTag;
                        i4 = i6 + i5 + i7;
                        i10 += i4;
                    }
                    break;
                case 49:
                    computeBoolSize = SchemaUtil.computeSizeGroupList(numberAt, (List) unsafe.getObject(t, offset), getMessageFieldSchema(i9));
                    i10 += computeBoolSize;
                    break;
                case 50:
                    computeBoolSize = this.mapFieldSchema.getSerializedSize(numberAt, unsafe.getObject(t, offset), getMapFieldDefaultEntry(i9));
                    i10 += computeBoolSize;
                    break;
                case 51:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        i10 += computeBoolSize;
                    }
                    break;
                case 52:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeFloatSize(numberAt, BitmapDescriptorFactory.HUE_RED);
                        i10 += computeBoolSize;
                    }
                    break;
                case 53:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeInt64Size(numberAt, oneofLongAt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 54:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeUInt64Size(numberAt, oneofLongAt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 55:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeInt32Size(numberAt, oneofIntAt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 56:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        i10 += computeBoolSize;
                    }
                    break;
                case 57:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        i4 = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        i10 += i4;
                    }
                    break;
                case 58:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        i10 += computeBoolSize;
                    }
                    break;
                case 59:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        Object object2 = unsafe.getObject(t, offset);
                        computeBoolSize = object2 instanceof ByteString ? CodedOutputStream.computeBytesSize(numberAt, (ByteString) object2) : CodedOutputStream.computeStringSize(numberAt, (String) object2);
                        i10 += computeBoolSize;
                    }
                    break;
                case 60:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = SchemaUtil.computeSizeMessage(numberAt, unsafe.getObject(t, offset), getMessageFieldSchema(i9));
                        i10 += computeBoolSize;
                    }
                    break;
                case 61:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) unsafe.getObject(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 62:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeUInt32Size(numberAt, oneofIntAt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 63:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeEnumSize(numberAt, oneofIntAt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 64:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        i4 = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        i10 += i4;
                    }
                    break;
                case 65:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        i10 += computeBoolSize;
                    }
                    break;
                case 66:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeSInt32Size(numberAt, oneofIntAt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 67:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeSInt64Size(numberAt, oneofLongAt(t, offset));
                        i10 += computeBoolSize;
                    }
                    break;
                case 68:
                    i10 = i10;
                    if (isOneofPresent(t, numberAt, i9)) {
                        computeBoolSize = CodedOutputStream.computeGroupSize(numberAt, (MessageLite) unsafe.getObject(t, offset), getMessageFieldSchema(i9));
                        i10 += computeBoolSize;
                    }
                    break;
                default:
                    i10 = i10;
                    break;
            }
            i9 += 3;
            i11 = i11;
        }
        int unknownFieldsSerializedSize = i10 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t);
        int i13 = unknownFieldsSerializedSize;
        if (this.hasExtensions) {
            i13 = unknownFieldsSerializedSize + this.extensionSchema.getExtensions(t).getSerializedSize();
        }
        return i13;
    }

    private int getSerializedSizeProto3(T t) {
        int computeDoubleSize;
        int i;
        int i2;
        int i3;
        Unsafe unsafe = UNSAFE;
        int i4 = 0;
        for (int i5 = 0; i5 < this.buffer.length; i5 += 3) {
            int typeAndOffsetAt = typeAndOffsetAt(i5);
            int type = type(typeAndOffsetAt);
            int numberAt = numberAt(i5);
            long offset = offset(typeAndOffsetAt);
            int i6 = (type < FieldType.DOUBLE_LIST_PACKED.id() || type > FieldType.SINT64_LIST_PACKED.id()) ? 0 : this.buffer[i5 + 2] & OFFSET_MASK;
            switch (type) {
                case 0:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeFloatSize(numberAt, BitmapDescriptorFactory.HUE_RED);
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeInt64Size(numberAt, UnsafeUtil.getLong(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeUInt64Size(numberAt, UnsafeUtil.getLong(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeInt32Size(numberAt, UnsafeUtil.getInt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        Object object = UnsafeUtil.getObject(t, offset);
                        if (object instanceof ByteString) {
                            computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) object);
                            break;
                        } else {
                            computeDoubleSize = CodedOutputStream.computeStringSize(numberAt, (String) object);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = SchemaUtil.computeSizeMessage(numberAt, UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i5));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) UnsafeUtil.getObject(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 11:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeUInt32Size(numberAt, UnsafeUtil.getInt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeEnumSize(numberAt, UnsafeUtil.getInt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeSInt32Size(numberAt, UnsafeUtil.getInt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeSInt64Size(numberAt, UnsafeUtil.getLong(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    i4 = i4;
                    if (isFieldPresent(t, i5)) {
                        computeDoubleSize = CodedOutputStream.computeGroupSize(numberAt, (MessageLite) UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i5));
                        break;
                    } else {
                        continue;
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
                    i4 = i4;
                    if (computeSizeFixed64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeFixed64ListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag);
                        i3 = computeSizeFixed64ListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 36:
                    int computeSizeFixed32ListNoTag = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeFixed32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeFixed32ListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag);
                        i3 = computeSizeFixed32ListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 37:
                    int computeSizeInt64ListNoTag = SchemaUtil.computeSizeInt64ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeInt64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeInt64ListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeInt64ListNoTag);
                        i3 = computeSizeInt64ListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 38:
                    int computeSizeUInt64ListNoTag = SchemaUtil.computeSizeUInt64ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeUInt64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeUInt64ListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeUInt64ListNoTag);
                        i3 = computeSizeUInt64ListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 39:
                    int computeSizeInt32ListNoTag = SchemaUtil.computeSizeInt32ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeInt32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeInt32ListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeInt32ListNoTag);
                        i3 = computeSizeInt32ListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 40:
                    int computeSizeFixed64ListNoTag2 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeFixed64ListNoTag2 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeFixed64ListNoTag2);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag2);
                        i3 = computeSizeFixed64ListNoTag2;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 41:
                    int computeSizeFixed32ListNoTag2 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeFixed32ListNoTag2 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeFixed32ListNoTag2);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag2);
                        i3 = computeSizeFixed32ListNoTag2;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 42:
                    int computeSizeBoolListNoTag = SchemaUtil.computeSizeBoolListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeBoolListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeBoolListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeBoolListNoTag);
                        i3 = computeSizeBoolListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 43:
                    int computeSizeUInt32ListNoTag = SchemaUtil.computeSizeUInt32ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeUInt32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeUInt32ListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeUInt32ListNoTag);
                        i3 = computeSizeUInt32ListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 44:
                    int computeSizeEnumListNoTag = SchemaUtil.computeSizeEnumListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeEnumListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeEnumListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeEnumListNoTag);
                        i3 = computeSizeEnumListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 45:
                    int computeSizeFixed32ListNoTag3 = SchemaUtil.computeSizeFixed32ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeFixed32ListNoTag3 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeFixed32ListNoTag3);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed32ListNoTag3);
                        i3 = computeSizeFixed32ListNoTag3;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 46:
                    int computeSizeFixed64ListNoTag3 = SchemaUtil.computeSizeFixed64ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeFixed64ListNoTag3 > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeFixed64ListNoTag3);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeFixed64ListNoTag3);
                        i3 = computeSizeFixed64ListNoTag3;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 47:
                    int computeSizeSInt32ListNoTag = SchemaUtil.computeSizeSInt32ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeSInt32ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeSInt32ListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeSInt32ListNoTag);
                        i3 = computeSizeSInt32ListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 48:
                    int computeSizeSInt64ListNoTag = SchemaUtil.computeSizeSInt64ListNoTag((List) unsafe.getObject(t, offset));
                    i4 = i4;
                    if (computeSizeSInt64ListNoTag > 0) {
                        if (this.useCachedSizeField) {
                            unsafe.putInt(t, i6, computeSizeSInt64ListNoTag);
                        }
                        i2 = CodedOutputStream.computeTagSize(numberAt);
                        i = CodedOutputStream.computeUInt32SizeNoTag(computeSizeSInt64ListNoTag);
                        i3 = computeSizeSInt64ListNoTag;
                        computeDoubleSize = i2 + i + i3;
                        break;
                    } else {
                        continue;
                    }
                case 49:
                    computeDoubleSize = SchemaUtil.computeSizeGroupList(numberAt, listAt(t, offset), getMessageFieldSchema(i5));
                    break;
                case 50:
                    computeDoubleSize = this.mapFieldSchema.getSerializedSize(numberAt, UnsafeUtil.getObject(t, offset), getMapFieldDefaultEntry(i5));
                    break;
                case 51:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeDoubleSize(numberAt, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeFloatSize(numberAt, BitmapDescriptorFactory.HUE_RED);
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeInt64Size(numberAt, oneofLongAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeUInt64Size(numberAt, oneofLongAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeInt32Size(numberAt, oneofIntAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeFixed64Size(numberAt, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeFixed32Size(numberAt, 0);
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeBoolSize(numberAt, true);
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        Object object2 = UnsafeUtil.getObject(t, offset);
                        if (object2 instanceof ByteString) {
                            computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) object2);
                            break;
                        } else {
                            computeDoubleSize = CodedOutputStream.computeStringSize(numberAt, (String) object2);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = SchemaUtil.computeSizeMessage(numberAt, UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i5));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeBytesSize(numberAt, (ByteString) UnsafeUtil.getObject(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 62:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeUInt32Size(numberAt, oneofIntAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeEnumSize(numberAt, oneofIntAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeSFixed32Size(numberAt, 0);
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeSFixed64Size(numberAt, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeSInt32Size(numberAt, oneofIntAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeSInt64Size(numberAt, oneofLongAt(t, offset));
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    i4 = i4;
                    if (isOneofPresent(t, numberAt, i5)) {
                        computeDoubleSize = CodedOutputStream.computeGroupSize(numberAt, (MessageLite) UnsafeUtil.getObject(t, offset), getMessageFieldSchema(i5));
                        break;
                    } else {
                        continue;
                    }
                default:
                    i4 = i4;
                    continue;
            }
            i4 += computeDoubleSize;
        }
        return i4 + getUnknownFieldsSerializedSize(this.unknownFieldSchema, t);
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
        if (this.proto3) {
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
                    }
                    if (object instanceof ByteString) {
                        return !ByteString.EMPTY.equals(object);
                    }
                    throw new IllegalArgumentException();
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
        } else {
            int presenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
            return (UnsafeUtil.getInt(t, (long) (presenceMaskAndOffsetAt & OFFSET_MASK)) & (1 << (presenceMaskAndOffsetAt >>> 20))) != 0;
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
        if (r17 >= r8.repeatedFieldOffsetStart) goto L_0x012b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0114, code lost:
        r20 = filterMapUnknownEnumValues(r11, r8.intArray[r17], r20, r9);
        r17 = r17 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012d, code lost:
        if (r20 == null) goto L_?;
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
        if (isFieldPresent(t2, i)) {
            Object object = UnsafeUtil.getObject(t, offset);
            Object object2 = UnsafeUtil.getObject(t2, offset);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(t, offset, Internal.mergeMessage(object, object2));
                setFieldPresent(t, i);
            } else if (object2 != null) {
                UnsafeUtil.putObject(t, offset, object2);
                setFieldPresent(t, i);
            }
        }
    }

    private void mergeOneofMessage(T t, T t2, int i) {
        int typeAndOffsetAt = typeAndOffsetAt(i);
        int numberAt = numberAt(i);
        long offset = offset(typeAndOffsetAt);
        if (isOneofPresent(t2, numberAt, i)) {
            Object object = UnsafeUtil.getObject(t, offset);
            Object object2 = UnsafeUtil.getObject(t2, offset);
            if (object != null && object2 != null) {
                UnsafeUtil.putObject(t, offset, Internal.mergeMessage(object, object2));
                setOneofPresent(t, numberAt, i);
            } else if (object2 != null) {
                UnsafeUtil.putObject(t, offset, object2);
                setOneofPresent(t, numberAt, i);
            }
        }
    }

    private void mergeSingleField(T t, T t2, int i) {
        int typeAndOffsetAt = typeAndOffsetAt(i);
        long offset = offset(typeAndOffsetAt);
        int numberAt = numberAt(i);
        switch (type(typeAndOffsetAt)) {
            case 0:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putDouble(t, offset, UnsafeUtil.getDouble(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 1:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putFloat(t, offset, UnsafeUtil.getFloat(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 2:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 3:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 4:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 5:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 6:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 7:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putBoolean(t, offset, UnsafeUtil.getBoolean(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 8:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 9:
                mergeMessage(t, t2, i);
                return;
            case 10:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 11:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 12:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 13:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 14:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 15:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putInt(t, offset, UnsafeUtil.getInt(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
                return;
            case 16:
                if (isFieldPresent(t2, i)) {
                    UnsafeUtil.putLong(t, offset, UnsafeUtil.getLong(t2, offset));
                    setFieldPresent(t, i);
                    return;
                }
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
                if (isOneofPresent(t2, numberAt, i)) {
                    UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                    setOneofPresent(t, numberAt, i);
                    return;
                }
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
                if (isOneofPresent(t2, numberAt, i)) {
                    UnsafeUtil.putObject(t, offset, UnsafeUtil.getObject(t2, offset));
                    setOneofPresent(t, numberAt, i);
                    return;
                }
                return;
            case 68:
                mergeOneofMessage(t, t2, i);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> MessageSchema<T> newSchema(Class<T> cls, MessageInfo messageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        return messageInfo instanceof RawMessageInfo ? newSchemaForRawMessageInfo((RawMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema) : newSchemaForMessageInfo((StructuralMessageInfo) messageInfo, newInstanceSchema, listFieldSchema, unknownFieldSchema, extensionSchema, mapFieldSchema);
    }

    static <T> MessageSchema<T> newSchemaForMessageInfo(StructuralMessageInfo structuralMessageInfo, NewInstanceSchema newInstanceSchema, ListFieldSchema listFieldSchema, UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MapFieldSchema mapFieldSchema) {
        int i;
        int i2;
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
        int i3 = 0;
        int i4 = 0;
        for (FieldInfo fieldInfo : fields) {
            if (fieldInfo.getType() == FieldType.MAP) {
                i3++;
                i4 = i4;
            } else {
                i3 = i3;
                i4 = i4;
                if (fieldInfo.getType().id() >= 18) {
                    i3 = i3;
                    i4 = i4;
                    if (fieldInfo.getType().id() <= 49) {
                        i4++;
                        i3 = i3;
                    }
                }
            }
        }
        int[] iArr2 = null;
        int[] iArr3 = i3 > 0 ? new int[i3] : null;
        if (i4 > 0) {
            iArr2 = new int[i4];
        }
        int[] checkInitialized = structuralMessageInfo.getCheckInitialized();
        int[] iArr4 = checkInitialized;
        if (checkInitialized == null) {
            iArr4 = EMPTY_INT_ARRAY;
        }
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i5 < fields.length) {
            FieldInfo fieldInfo2 = fields[i5];
            int fieldNumber = fieldInfo2.getFieldNumber();
            storeFieldData(fieldInfo2, iArr, i6, z, objArr);
            i7 = i7;
            if (i7 < iArr4.length) {
                i7 = i7;
                if (iArr4[i7] == fieldNumber) {
                    iArr4[i7] = i6;
                    i7++;
                }
            }
            if (fieldInfo2.getType() == FieldType.MAP) {
                iArr3[i8] = i6;
                i8++;
            } else {
                i8 = i8;
                if (fieldInfo2.getType().id() >= 18) {
                    i8 = i8;
                    if (fieldInfo2.getType().id() <= 49) {
                        iArr2[i9] = (int) UnsafeUtil.objectFieldOffset(fieldInfo2.getField());
                        i9++;
                        i5++;
                        i6 += 3;
                    }
                }
            }
            i5++;
            i6 += 3;
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
                    } else if ((i6 & ENFORCE_UTF8_MASK) == 0 || Utf8.isValidUtf8(bArr, i, i + i9)) {
                        unsafe.putObject(t, j, new String(bArr, i, i9, Internal.UTF_8));
                        i += i9;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
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
    private int parseProto3Message(T t, byte[] bArr, int i, int i2, ArrayDecoders.Registers registers) throws IOException {
        MessageSchema<T> messageSchema = this;
        T t2 = t;
        byte[] bArr2 = bArr;
        int i3 = i2;
        ArrayDecoders.Registers registers2 = registers;
        Unsafe unsafe = UNSAFE;
        int i4 = i;
        int i5 = -1;
        int i6 = 0;
        while (i4 < i3) {
            int i7 = i4 + 1;
            byte b2 = bArr2[i4];
            int i8 = b2;
            if (b2 < 0) {
                i7 = ArrayDecoders.decodeVarint32(b2, bArr2, i7, registers2);
                i8 = registers2.int1;
            }
            int i9 = i8 >>> 3;
            int i10 = i8 & 7;
            i6 = i9 > i5 ? messageSchema.positionForFieldNumber(i9, i6 / 3) : messageSchema.positionForFieldNumber(i9);
            if (i6 == -1) {
                i6 = 0;
            } else {
                int i11 = messageSchema.buffer[i6 + 1];
                int type = type(i11);
                long offset = offset(i11);
                if (type <= 17) {
                    boolean z = true;
                    switch (type) {
                        case 0:
                            if (i10 == 1) {
                                UnsafeUtil.putDouble(t2, offset, ArrayDecoders.decodeDouble(bArr2, i7));
                                i4 = i7 + 8;
                                i6 = i6;
                                i5 = i9;
                                break;
                            }
                            break;
                        case 1:
                            if (i10 == 5) {
                                UnsafeUtil.putFloat(t2, offset, ArrayDecoders.decodeFloat(bArr2, i7));
                                i4 = i7 + 4;
                                i6 = i6;
                                i5 = i9;
                                break;
                            }
                            break;
                        case 2:
                        case 3:
                            if (i10 == 0) {
                                i4 = ArrayDecoders.decodeVarint64(bArr2, i7, registers2);
                                unsafe.putLong(t, offset, registers2.long1);
                                i6 = i6;
                                i5 = i9;
                                break;
                            }
                            break;
                        case 4:
                        case 11:
                            if (i10 == 0) {
                                i4 = ArrayDecoders.decodeVarint32(bArr2, i7, registers2);
                                unsafe.putInt(t2, offset, registers2.int1);
                                i6 = i6;
                                i5 = i9;
                                break;
                            }
                            break;
                        case 5:
                        case 14:
                            if (i10 == 1) {
                                unsafe.putLong(t, offset, ArrayDecoders.decodeFixed64(bArr2, i7));
                                i4 = i7 + 8;
                                i6 = i6;
                                i5 = i9;
                                break;
                            }
                            break;
                        case 6:
                        case 13:
                            if (i10 == 5) {
                                unsafe.putInt(t2, offset, ArrayDecoders.decodeFixed32(bArr2, i7));
                                i4 = i7 + 4;
                                i5 = i9;
                                i6 = i6;
                                break;
                            }
                            break;
                        case 7:
                            if (i10 == 0) {
                                i4 = ArrayDecoders.decodeVarint64(bArr2, i7, registers2);
                                if (registers2.long1 == 0) {
                                    z = false;
                                }
                                UnsafeUtil.putBoolean(t2, offset, z);
                                i5 = i9;
                                i6 = i6;
                                break;
                            }
                            break;
                        case 8:
                            if (i10 == 2) {
                                i4 = (ENFORCE_UTF8_MASK & i11) == 0 ? ArrayDecoders.decodeString(bArr2, i7, registers2) : ArrayDecoders.decodeStringRequireUtf8(bArr2, i7, registers2);
                                unsafe.putObject(t2, offset, registers2.object1);
                                i5 = i9;
                                i6 = i6;
                                break;
                            }
                            break;
                        case 9:
                            if (i10 == 2) {
                                i4 = ArrayDecoders.decodeMessageField(messageSchema.getMessageFieldSchema(i6), bArr2, i7, i3, registers2);
                                Object object = unsafe.getObject(t2, offset);
                                if (object == null) {
                                    unsafe.putObject(t2, offset, registers2.object1);
                                } else {
                                    unsafe.putObject(t2, offset, Internal.mergeMessage(object, registers2.object1));
                                }
                                i5 = i9;
                                i6 = i6;
                                break;
                            }
                            break;
                        case 10:
                            if (i10 == 2) {
                                i4 = ArrayDecoders.decodeBytes(bArr2, i7, registers2);
                                unsafe.putObject(t2, offset, registers2.object1);
                                i5 = i9;
                                i6 = i6;
                                break;
                            }
                            break;
                        case 12:
                            if (i10 == 0) {
                                i4 = ArrayDecoders.decodeVarint32(bArr2, i7, registers2);
                                unsafe.putInt(t2, offset, registers2.int1);
                                i6 = i6;
                                i5 = i9;
                                break;
                            }
                            break;
                        case 15:
                            if (i10 == 0) {
                                i4 = ArrayDecoders.decodeVarint32(bArr2, i7, registers2);
                                unsafe.putInt(t2, offset, CodedInputStream.decodeZigZag32(registers2.int1));
                                i6 = i6;
                                i5 = i9;
                                break;
                            }
                            break;
                        case 16:
                            if (i10 == 0) {
                                i4 = ArrayDecoders.decodeVarint64(bArr2, i7, registers2);
                                unsafe.putLong(t, offset, CodedInputStream.decodeZigZag64(registers2.long1));
                                i6 = i6;
                                i5 = i9;
                                break;
                            }
                            break;
                    }
                } else if (type != 27) {
                    i6 = i6;
                    if (type <= 49) {
                        int parseRepeatedField = parseRepeatedField(t, bArr, i7, i2, i8, i9, i10, i6, i11, type, offset, registers);
                        i4 = parseRepeatedField;
                        i6 = i6;
                        if (parseRepeatedField == i7) {
                            i7 = parseRepeatedField;
                        }
                    } else if (type == 50) {
                        i6 = i6;
                        if (i10 == 2) {
                            int parseMapField = parseMapField(t, bArr, i7, i2, i6, offset, registers);
                            i4 = parseMapField;
                            i6 = i6;
                            if (parseMapField == i7) {
                                i7 = parseMapField;
                            }
                        }
                    } else {
                        int parseOneofField = parseOneofField(t, bArr, i7, i2, i8, i9, i10, i11, type, offset, i6, registers);
                        i4 = parseOneofField;
                        i6 = i6;
                        if (parseOneofField == i7) {
                            i7 = parseOneofField;
                        }
                    }
                    messageSchema = this;
                    t2 = t;
                    bArr2 = bArr;
                    i3 = i2;
                    registers2 = registers;
                    i5 = i9;
                } else if (i10 == 2) {
                    Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe.getObject(t2, offset);
                    Internal.ProtobufList protobufList2 = protobufList;
                    if (!protobufList.isModifiable()) {
                        int size = protobufList.size();
                        protobufList2 = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
                        unsafe.putObject(t2, offset, protobufList2);
                    }
                    i4 = ArrayDecoders.decodeMessageList(messageSchema.getMessageFieldSchema(i6), i8, bArr, i7, i2, protobufList2, registers);
                    i5 = i9;
                    i6 = i6;
                }
            }
            i4 = ArrayDecoders.decodeUnknownField(i8, bArr, i7, i2, getMutableUnknownFields(t), registers);
            messageSchema = this;
            t2 = t;
            bArr2 = bArr;
            i3 = i2;
            registers2 = registers;
            i5 = i9;
        }
        if (i4 == i3) {
            return i4;
        }
        throw InvalidProtocolBufferException.parseFailure();
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
        if (!this.proto3) {
            int presenceMaskAndOffsetAt = presenceMaskAndOffsetAt(i);
            long j = presenceMaskAndOffsetAt & OFFSET_MASK;
            UnsafeUtil.putInt(t, j, UnsafeUtil.getInt(t, j) | (1 << (presenceMaskAndOffsetAt >>> 20)));
        }
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
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(t).equals(this.extensionSchema.getExtensions(t2));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        int length = this.buffer.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4 += 3) {
            int typeAndOffsetAt = typeAndOffsetAt(i4);
            int numberAt = numberAt(i4);
            long offset = offset(typeAndOffsetAt);
            int i5 = 37;
            switch (type(typeAndOffsetAt)) {
                case 0:
                    i = i3 * 53;
                    i2 = Internal.hashLong(Double.doubleToLongBits(UnsafeUtil.getDouble(t, offset)));
                    i3 = i + i2;
                    break;
                case 1:
                    i = i3 * 53;
                    i2 = Float.floatToIntBits(UnsafeUtil.getFloat(t, offset));
                    i3 = i + i2;
                    break;
                case 2:
                    i = i3 * 53;
                    i2 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i3 = i + i2;
                    break;
                case 3:
                    i = i3 * 53;
                    i2 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i3 = i + i2;
                    break;
                case 4:
                    i = i3 * 53;
                    i2 = UnsafeUtil.getInt(t, offset);
                    i3 = i + i2;
                    break;
                case 5:
                    i = i3 * 53;
                    i2 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i3 = i + i2;
                    break;
                case 6:
                    i = i3 * 53;
                    i2 = UnsafeUtil.getInt(t, offset);
                    i3 = i + i2;
                    break;
                case 7:
                    i = i3 * 53;
                    i2 = Internal.hashBoolean(UnsafeUtil.getBoolean(t, offset));
                    i3 = i + i2;
                    break;
                case 8:
                    i = i3 * 53;
                    i2 = ((String) UnsafeUtil.getObject(t, offset)).hashCode();
                    i3 = i + i2;
                    break;
                case 9:
                    Object object = UnsafeUtil.getObject(t, offset);
                    if (object != null) {
                        i5 = object.hashCode();
                    }
                    i3 = (i3 * 53) + i5;
                    break;
                case 10:
                    i = i3 * 53;
                    i2 = UnsafeUtil.getObject(t, offset).hashCode();
                    i3 = i + i2;
                    break;
                case 11:
                    i = i3 * 53;
                    i2 = UnsafeUtil.getInt(t, offset);
                    i3 = i + i2;
                    break;
                case 12:
                    i = i3 * 53;
                    i2 = UnsafeUtil.getInt(t, offset);
                    i3 = i + i2;
                    break;
                case 13:
                    i = i3 * 53;
                    i2 = UnsafeUtil.getInt(t, offset);
                    i3 = i + i2;
                    break;
                case 14:
                    i = i3 * 53;
                    i2 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i3 = i + i2;
                    break;
                case 15:
                    i = i3 * 53;
                    i2 = UnsafeUtil.getInt(t, offset);
                    i3 = i + i2;
                    break;
                case 16:
                    i = i3 * 53;
                    i2 = Internal.hashLong(UnsafeUtil.getLong(t, offset));
                    i3 = i + i2;
                    break;
                case 17:
                    Object object2 = UnsafeUtil.getObject(t, offset);
                    if (object2 != null) {
                        i5 = object2.hashCode();
                    }
                    i3 = (i3 * 53) + i5;
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
                    i = i3 * 53;
                    i2 = UnsafeUtil.getObject(t, offset).hashCode();
                    i3 = i + i2;
                    break;
                case 50:
                    i = i3 * 53;
                    i2 = UnsafeUtil.getObject(t, offset).hashCode();
                    i3 = i + i2;
                    break;
                case 51:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = Internal.hashLong(Double.doubleToLongBits(oneofDoubleAt(t, offset)));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = Float.floatToIntBits(oneofFloatAt(t, offset));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = Internal.hashLong(oneofLongAt(t, offset));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = Internal.hashLong(oneofLongAt(t, offset));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = oneofIntAt(t, offset);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = Internal.hashLong(oneofLongAt(t, offset));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = oneofIntAt(t, offset);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = Internal.hashBoolean(oneofBooleanAt(t, offset));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = ((String) UnsafeUtil.getObject(t, offset)).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = UnsafeUtil.getObject(t, offset).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = UnsafeUtil.getObject(t, offset).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = oneofIntAt(t, offset);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = oneofIntAt(t, offset);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = oneofIntAt(t, offset);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = Internal.hashLong(oneofLongAt(t, offset));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = oneofIntAt(t, offset);
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = Internal.hashLong(oneofLongAt(t, offset));
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i3 = i3;
                    if (isOneofPresent(t, numberAt, i4)) {
                        i = i3 * 53;
                        i2 = UnsafeUtil.getObject(t, offset).hashCode();
                        i3 = i + i2;
                        break;
                    } else {
                        break;
                    }
                default:
                    i3 = i3;
                    break;
            }
        }
        int hashCode = (i3 * 53) + this.unknownFieldSchema.getFromMessage(t).hashCode();
        int i6 = hashCode;
        if (this.hasExtensions) {
            i6 = (hashCode * 53) + this.extensionSchema.getExtensions(t).hashCode();
        }
        return i6;
    }

    @Override // com.explorestack.protobuf.Schema
    public final boolean isInitialized(T t) {
        int i;
        int i2 = -1;
        int i3 = 0;
        for (int i4 = 0; i4 < this.checkInitializedCount; i4++) {
            int i5 = this.intArray[i4];
            int numberAt = numberAt(i5);
            int typeAndOffsetAt = typeAndOffsetAt(i5);
            if (!this.proto3) {
                int i6 = this.buffer[i5 + 2];
                int i7 = OFFSET_MASK & i6;
                int i8 = 1 << (i6 >>> 20);
                i2 = i2;
                i = i8;
                if (i7 != i2) {
                    i3 = UNSAFE.getInt(t, i7);
                    i2 = i7;
                    i = i8;
                }
            } else {
                i = 0;
                i2 = i2;
            }
            if (isRequired(typeAndOffsetAt) && !isFieldPresent(t, i5, i3, i)) {
                return false;
            }
            int type = type(typeAndOffsetAt);
            if (type != 9 && type != 17) {
                if (type != 27) {
                    if (type == 60 || type == 68) {
                        if (isOneofPresent(t, numberAt, i5) && !isInitialized(t, typeAndOffsetAt, getMessageFieldSchema(i5))) {
                            return false;
                        }
                    } else if (type != 49) {
                        if (type == 50 && !isMapInitialized(t, typeAndOffsetAt, i5)) {
                            return false;
                        }
                    }
                }
                if (!isListInitialized(t, typeAndOffsetAt, i5)) {
                    return false;
                }
            } else if (isFieldPresent(t, i5, i3, i) && !isInitialized(t, typeAndOffsetAt, getMessageFieldSchema(i5))) {
                return false;
            }
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
            if (this.hasExtensions) {
                SchemaUtil.mergeExtensions(this.extensionSchema, t, t2);
            }
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

    /* JADX INFO: Access modifiers changed from: package-private */
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
        int i13 = i2;
        int i14 = i3;
        Unsafe unsafe = UNSAFE;
        int i15 = -1;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = -1;
        while (true) {
            if (i < i13) {
                int i20 = i + 1;
                byte b2 = bArr[i];
                int i21 = b2;
                if (b2 < 0) {
                    i20 = ArrayDecoders.decodeVarint32(b2, bArr, i20, registers);
                    i21 = registers.int1;
                }
                int i22 = i21 >>> 3;
                int i23 = i21 & 7;
                i16 = i22 > i15 ? positionForFieldNumber(i22, i16 / 3) : positionForFieldNumber(i22);
                if (i16 == -1) {
                    i8 = i18;
                    i9 = i19;
                    i10 = i14;
                    i16 = 0;
                    i11 = i20;
                    i12 = i21;
                } else {
                    int i24 = this.buffer[i16 + 1];
                    int type = type(i24);
                    long offset = offset(i24);
                    if (type <= 17) {
                        int i25 = this.buffer[i16 + 2];
                        int i26 = 1 << (i25 >>> 20);
                        int i27 = i25 & OFFSET_MASK;
                        if (i27 != i19) {
                            if (i19 != -1) {
                                unsafe.putInt(t, i19, i18);
                            }
                            i18 = unsafe.getInt(t, i27);
                            i19 = i27;
                        } else {
                            i18 = i18;
                        }
                        switch (type) {
                            case 0:
                                if (i23 == 1) {
                                    UnsafeUtil.putDouble(t, offset, ArrayDecoders.decodeDouble(bArr, i20));
                                    i = i20 + 8;
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    break;
                                } else {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                }
                            case 1:
                                if (i23 == 5) {
                                    UnsafeUtil.putFloat(t, offset, ArrayDecoders.decodeFloat(bArr, i20));
                                    i = i20 + 4;
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    break;
                                } else {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                }
                            case 2:
                            case 3:
                                if (i23 != 0) {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                } else {
                                    i = ArrayDecoders.decodeVarint64(bArr, i20, registers);
                                    unsafe.putLong(t, offset, registers.long1);
                                    i18 |= i26;
                                    i17 = i21;
                                    i13 = i2;
                                    i16 = i16;
                                    i15 = i22;
                                    i14 = i3;
                                }
                            case 4:
                            case 11:
                                if (i23 == 0) {
                                    i = ArrayDecoders.decodeVarint32(bArr, i20, registers);
                                    unsafe.putInt(t, offset, registers.int1);
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    break;
                                } else {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                }
                            case 5:
                            case 14:
                                if (i23 == 1) {
                                    unsafe.putLong(t, offset, ArrayDecoders.decodeFixed64(bArr, i20));
                                    i = i20 + 8;
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    break;
                                } else {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                }
                            case 6:
                            case 13:
                                if (i23 != 5) {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                } else {
                                    unsafe.putInt(t, offset, ArrayDecoders.decodeFixed32(bArr, i20));
                                    i = i20 + 4;
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    i13 = i2;
                                    i14 = i3;
                                }
                            case 7:
                                if (i23 != 0) {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                } else {
                                    i = ArrayDecoders.decodeVarint64(bArr, i20, registers);
                                    UnsafeUtil.putBoolean(t, offset, registers.long1 != 0);
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    i13 = i2;
                                    i14 = i3;
                                }
                            case 8:
                                if (i23 != 2) {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                } else {
                                    i = (i24 & ENFORCE_UTF8_MASK) == 0 ? ArrayDecoders.decodeString(bArr, i20, registers) : ArrayDecoders.decodeStringRequireUtf8(bArr, i20, registers);
                                    unsafe.putObject(t, offset, registers.object1);
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    i13 = i2;
                                    i14 = i3;
                                }
                            case 9:
                                if (i23 != 2) {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                } else {
                                    i = ArrayDecoders.decodeMessageField(getMessageFieldSchema(i16), bArr, i20, i2, registers);
                                    if ((i18 & i26) == 0) {
                                        unsafe.putObject(t, offset, registers.object1);
                                    } else {
                                        unsafe.putObject(t, offset, Internal.mergeMessage(unsafe.getObject(t, offset), registers.object1));
                                    }
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    i13 = i2;
                                    i14 = i3;
                                }
                            case 10:
                                if (i23 == 2) {
                                    i = ArrayDecoders.decodeBytes(bArr, i20, registers);
                                    unsafe.putObject(t, offset, registers.object1);
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    break;
                                } else {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                }
                            case 12:
                                if (i23 != 0) {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                } else {
                                    i = ArrayDecoders.decodeVarint32(bArr, i20, registers);
                                    int i28 = registers.int1;
                                    Internal.EnumVerifier enumFieldVerifier = getEnumFieldVerifier(i16);
                                    if (enumFieldVerifier == null || enumFieldVerifier.isInRange(i28)) {
                                        unsafe.putInt(t, offset, i28);
                                        i18 |= i26;
                                        i16 = i16;
                                        i17 = i21;
                                        i15 = i22;
                                        break;
                                    } else {
                                        getMutableUnknownFields(t).storeField(i21, Long.valueOf(i28));
                                        i16 = i16;
                                        i17 = i21;
                                        i15 = i22;
                                    }
                                }
                                break;
                            case 15:
                                if (i23 == 0) {
                                    i = ArrayDecoders.decodeVarint32(bArr, i20, registers);
                                    unsafe.putInt(t, offset, CodedInputStream.decodeZigZag32(registers.int1));
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    break;
                                } else {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                }
                            case 16:
                                if (i23 != 0) {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                } else {
                                    i = ArrayDecoders.decodeVarint64(bArr, i20, registers);
                                    unsafe.putLong(t, offset, CodedInputStream.decodeZigZag64(registers.long1));
                                    i18 |= i26;
                                    i17 = i21;
                                    i13 = i2;
                                    i16 = i16;
                                    i15 = i22;
                                    i14 = i3;
                                }
                            case 17:
                                if (i23 == 3) {
                                    i = ArrayDecoders.decodeGroupField(getMessageFieldSchema(i16), bArr, i20, i2, (i22 << 3) | 4, registers);
                                    if ((i18 & i26) == 0) {
                                        unsafe.putObject(t, offset, registers.object1);
                                    } else {
                                        unsafe.putObject(t, offset, Internal.mergeMessage(unsafe.getObject(t, offset), registers.object1));
                                    }
                                    i18 |= i26;
                                    i16 = i16;
                                    i17 = i21;
                                    i15 = i22;
                                    break;
                                } else {
                                    i9 = i19;
                                    i12 = i21;
                                    i10 = i3;
                                    i11 = i20;
                                    i8 = i18;
                                    break;
                                }
                            default:
                                i9 = i19;
                                i12 = i21;
                                i10 = i3;
                                i11 = i20;
                                i8 = i18;
                                break;
                        }
                        i14 = i3;
                        i13 = i2;
                    } else {
                        if (type == 27) {
                            if (i23 == 2) {
                                Internal.ProtobufList protobufList = (Internal.ProtobufList) unsafe.getObject(t, offset);
                                Internal.ProtobufList protobufList2 = protobufList;
                                if (!protobufList.isModifiable()) {
                                    int size = protobufList.size();
                                    protobufList2 = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
                                    unsafe.putObject(t, offset, protobufList2);
                                }
                                i = ArrayDecoders.decodeMessageList(getMessageFieldSchema(i16), i21, bArr, i20, i2, protobufList2, registers);
                                i17 = i21;
                                i16 = i16;
                                i15 = i22;
                                i14 = i3;
                                i13 = i2;
                            }
                        } else if (type <= 49) {
                            int parseRepeatedField = parseRepeatedField(t, bArr, i20, i2, i21, i22, i23, i16, i24, type, offset, registers);
                            i = parseRepeatedField;
                            if (parseRepeatedField == i20) {
                                i11 = parseRepeatedField;
                                i10 = i3;
                                i8 = i18;
                                i16 = i16;
                                i9 = i19;
                                i12 = i21;
                            }
                            i17 = i21;
                            i14 = i3;
                            i18 = i18;
                            i16 = i16;
                            i15 = i22;
                            i13 = i2;
                        } else {
                            if (type != 50) {
                                i11 = parseOneofField(t, bArr, i20, i2, i21, i22, i23, i24, type, offset, i16, registers);
                                if (i11 != i20) {
                                    i17 = i21;
                                    i = i11;
                                    i14 = i3;
                                    i18 = i18;
                                    i16 = i16;
                                    i15 = i22;
                                    i13 = i2;
                                }
                            } else if (i23 == 2) {
                                int parseMapField = parseMapField(t, bArr, i20, i2, i16, offset, registers);
                                i = parseMapField;
                                if (parseMapField == i20) {
                                    i11 = parseMapField;
                                }
                                i17 = i21;
                                i14 = i3;
                                i18 = i18;
                                i16 = i16;
                                i15 = i22;
                                i13 = i2;
                            }
                            i10 = i3;
                            i8 = i18;
                            i16 = i16;
                            i9 = i19;
                            i12 = i21;
                        }
                        i9 = i19;
                        i12 = i21;
                        i10 = i3;
                        i11 = i20;
                        i8 = i18;
                    }
                }
                if (i12 != i10 || i10 == 0) {
                    i = (!this.hasExtensions || registers.extensionRegistry == ExtensionRegistryLite.getEmptyRegistry()) ? ArrayDecoders.decodeUnknownField(i12, bArr, i11, i2, getMutableUnknownFields(t), registers) : ArrayDecoders.decodeExtensionOrUnknownField(i12, bArr, i11, i2, t, this.defaultInstance, this.unknownFieldSchema, registers);
                    i18 = i8;
                    i15 = i22;
                    i17 = i12;
                    i19 = i9;
                    i14 = i10;
                    i13 = i2;
                } else {
                    messageSchema = this;
                    i5 = i9;
                    i7 = i11;
                    i17 = i12;
                    i6 = i8;
                    i4 = i10;
                }
            } else {
                i4 = i14;
                messageSchema = this;
                i5 = i19;
                i6 = i18;
                i7 = i;
            }
        }
        if (i5 != -1) {
            unsafe.putInt(t, i5, i6);
        }
        UnknownFieldSetLite unknownFieldSetLite = null;
        for (int i29 = messageSchema.checkInitializedCount; i29 < messageSchema.repeatedFieldOffsetStart; i29++) {
            unknownFieldSetLite = (UnknownFieldSetLite) messageSchema.filterMapUnknownEnumValues(t, messageSchema.intArray[i29], unknownFieldSetLite, messageSchema.unknownFieldSchema);
        }
        if (unknownFieldSetLite != null) {
            messageSchema.unknownFieldSchema.setBuilderToMessage(t, unknownFieldSetLite);
        }
        if (i4 == 0) {
            if (i7 != i2) {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } else if (i7 > i2 || i17 != i4) {
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
