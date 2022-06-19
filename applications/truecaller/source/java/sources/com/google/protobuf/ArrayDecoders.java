package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Internal;
import com.google.protobuf.WireFormat;
import io.agora.rtc.Constants;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/ArrayDecoders.class */
public final class ArrayDecoders {

    /* renamed from: com.google.protobuf.ArrayDecoders$1 */
    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/ArrayDecoders$1.class */
    public static /* synthetic */ class C21951 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            WireFormat.FieldType.values();
            int[] iArr = new int[18];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                WireFormat.FieldType fieldType = WireFormat.FieldType.DOUBLE;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType2 = WireFormat.FieldType.FLOAT;
                iArr2[1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType3 = WireFormat.FieldType.INT64;
                iArr3[2] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType4 = WireFormat.FieldType.UINT64;
                iArr4[3] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType5 = WireFormat.FieldType.INT32;
                iArr5[4] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType6 = WireFormat.FieldType.UINT32;
                iArr6[12] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                int[] iArr7 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType7 = WireFormat.FieldType.FIXED64;
                iArr7[5] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                int[] iArr8 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType8 = WireFormat.FieldType.SFIXED64;
                iArr8[15] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                int[] iArr9 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType9 = WireFormat.FieldType.FIXED32;
                iArr9[6] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                int[] iArr10 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType10 = WireFormat.FieldType.SFIXED32;
                iArr10[14] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                int[] iArr11 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType11 = WireFormat.FieldType.BOOL;
                iArr11[7] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                int[] iArr12 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType12 = WireFormat.FieldType.SINT32;
                iArr12[16] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                int[] iArr13 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType13 = WireFormat.FieldType.SINT64;
                iArr13[17] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                int[] iArr14 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType14 = WireFormat.FieldType.ENUM;
                iArr14[13] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                int[] iArr15 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType15 = WireFormat.FieldType.BYTES;
                iArr15[11] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                int[] iArr16 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType16 = WireFormat.FieldType.STRING;
                iArr16[8] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                int[] iArr17 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType17 = WireFormat.FieldType.GROUP;
                iArr17[9] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                int[] iArr18 = $SwitchMap$com$google$protobuf$WireFormat$FieldType;
                WireFormat.FieldType fieldType18 = WireFormat.FieldType.MESSAGE;
                iArr18[10] = 18;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/protobuf/ArrayDecoders$Registers.class */
    public static final class Registers {
        public final ExtensionRegistryLite extensionRegistry;
        public int int1;
        public long long1;
        public Object object1;

        public Registers() {
            this.extensionRegistry = ExtensionRegistryLite.getEmptyRegistry();
        }

        public Registers(ExtensionRegistryLite extensionRegistryLite) {
            Objects.requireNonNull(extensionRegistryLite);
            this.extensionRegistry = extensionRegistryLite;
        }
    }

    public static int decodeBoolList(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) {
        BooleanArrayList booleanArrayList = (BooleanArrayList) protobufList;
        int decodeVarint64 = decodeVarint64(bArr, i2, registers);
        booleanArrayList.addBoolean(registers.long1 != 0);
        while (decodeVarint64 < i3) {
            int decodeVarint32 = decodeVarint32(bArr, decodeVarint64, registers);
            if (i != registers.int1) {
                break;
            }
            decodeVarint64 = decodeVarint64(bArr, decodeVarint32, registers);
            booleanArrayList.addBoolean(registers.long1 != 0);
        }
        return decodeVarint64;
    }

    public static int decodeBytes(byte[] bArr, int i, Registers registers) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1;
        if (i2 >= 0) {
            if (i2 > bArr.length - decodeVarint32) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i2 == 0) {
                registers.object1 = ByteString.EMPTY;
                return decodeVarint32;
            }
            registers.object1 = ByteString.copyFrom(bArr, decodeVarint32, i2);
            return decodeVarint32 + i2;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0045 -> B:11:0x004a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int decodeBytesList(int r5, byte[] r6, int r7, int r8, com.google.protobuf.Internal.ProtobufList<?> r9, com.google.protobuf.ArrayDecoders.Registers r10) throws com.google.protobuf.InvalidProtocolBufferException {
        /*
            r0 = r6
            r1 = r7
            r2 = r10
            int r0 = decodeVarint32(r0, r1, r2)
            r7 = r0
            r0 = r10
            int r0 = r0.int1
            r11 = r0
            r0 = r11
            if (r0 < 0) goto Lb6
            r0 = r11
            r1 = r6
            int r1 = r1.length
            r2 = r7
            int r1 = r1 - r2
            if (r0 > r1) goto Lb2
            r0 = r11
            if (r0 != 0) goto L30
            r0 = r9
            com.google.protobuf.ByteString r1 = com.google.protobuf.ByteString.EMPTY
            boolean r0 = r0.add(r1)
            goto L4a
        L30:
            r0 = r9
            r1 = r6
            r2 = r7
            r3 = r11
            com.google.protobuf.ByteString r1 = com.google.protobuf.ByteString.copyFrom(r1, r2, r3)
            boolean r0 = r0.add(r1)
            r0 = r7
            r12 = r0
            r0 = r11
            r7 = r0
        L45:
            r0 = r12
            r1 = r7
            int r0 = r0 + r1
            r7 = r0
        L4a:
            r0 = r7
            r1 = r8
            if (r0 >= r1) goto Lb0
            r0 = r6
            r1 = r7
            r2 = r10
            int r0 = decodeVarint32(r0, r1, r2)
            r12 = r0
            r0 = r5
            r1 = r10
            int r1 = r1.int1
            if (r0 == r1) goto L64
            goto Lb0
        L64:
            r0 = r6
            r1 = r12
            r2 = r10
            int r0 = decodeVarint32(r0, r1, r2)
            r12 = r0
            r0 = r10
            int r0 = r0.int1
            r7 = r0
            r0 = r7
            if (r0 < 0) goto Lac
            r0 = r7
            r1 = r6
            int r1 = r1.length
            r2 = r12
            int r1 = r1 - r2
            if (r0 > r1) goto La8
            r0 = r7
            if (r0 != 0) goto L96
            r0 = r9
            com.google.protobuf.ByteString r1 = com.google.protobuf.ByteString.EMPTY
            boolean r0 = r0.add(r1)
            r0 = r12
            r7 = r0
            goto L4a
        L96:
            r0 = r9
            r1 = r6
            r2 = r12
            r3 = r7
            com.google.protobuf.ByteString r1 = com.google.protobuf.ByteString.copyFrom(r1, r2, r3)
            boolean r0 = r0.add(r1)
            goto L45
        La8:
            com.google.protobuf.InvalidProtocolBufferException r0 = com.google.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r0
        Lac:
            com.google.protobuf.InvalidProtocolBufferException r0 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r0
        Lb0:
            r0 = r7
            return r0
        Lb2:
            com.google.protobuf.InvalidProtocolBufferException r0 = com.google.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r0
        Lb6:
            com.google.protobuf.InvalidProtocolBufferException r0 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.ArrayDecoders.decodeBytesList(int, byte[], int, int, com.google.protobuf.Internal$ProtobufList, com.google.protobuf.ArrayDecoders$Registers):int");
    }

    public static double decodeDouble(byte[] bArr, int i) {
        return Double.longBitsToDouble(decodeFixed64(bArr, i));
    }

    public static int decodeDoubleList(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) {
        DoubleArrayList doubleArrayList = (DoubleArrayList) protobufList;
        doubleArrayList.addDouble(decodeDouble(bArr, i2));
        int i4 = i2 + 8;
        while (i4 < i3) {
            int decodeVarint32 = decodeVarint32(bArr, i4, registers);
            if (i != registers.int1) {
                break;
            }
            doubleArrayList.addDouble(decodeDouble(bArr, decodeVarint32));
            i4 = decodeVarint32 + 8;
        }
        return i4;
    }

    public static int decodeExtension(int i, byte[] bArr, int i2, int i3, GeneratedMessageLite.ExtendableMessage<?, ?> extendableMessage, GeneratedMessageLite.GeneratedExtension<?, ?> generatedExtension, UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, Registers registers) throws IOException {
        int i4;
        Integer num;
        Object obj;
        FieldSet fieldSet = extendableMessage.extensions;
        int i5 = i >>> 3;
        if (generatedExtension.descriptor.isRepeated() && generatedExtension.descriptor.isPacked()) {
            switch (generatedExtension.getLiteType().ordinal()) {
                case 0:
                    DoubleArrayList doubleArrayList = new DoubleArrayList();
                    i4 = decodePackedDoubleList(bArr, i2, doubleArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, doubleArrayList);
                    break;
                case 1:
                    FloatArrayList floatArrayList = new FloatArrayList();
                    i4 = decodePackedFloatList(bArr, i2, floatArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, floatArrayList);
                    break;
                case 2:
                case 3:
                    LongArrayList longArrayList = new LongArrayList();
                    i4 = decodePackedVarint64List(bArr, i2, longArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, longArrayList);
                    break;
                case 4:
                case 12:
                    IntArrayList intArrayList = new IntArrayList();
                    i4 = decodePackedVarint32List(bArr, i2, intArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, intArrayList);
                    break;
                case 5:
                case 15:
                    LongArrayList longArrayList2 = new LongArrayList();
                    i4 = decodePackedFixed64List(bArr, i2, longArrayList2, registers);
                    fieldSet.setField(generatedExtension.descriptor, longArrayList2);
                    break;
                case 6:
                case 14:
                    IntArrayList intArrayList2 = new IntArrayList();
                    i4 = decodePackedFixed32List(bArr, i2, intArrayList2, registers);
                    fieldSet.setField(generatedExtension.descriptor, intArrayList2);
                    break;
                case 7:
                    BooleanArrayList booleanArrayList = new BooleanArrayList();
                    i4 = decodePackedBoolList(bArr, i2, booleanArrayList, registers);
                    fieldSet.setField(generatedExtension.descriptor, booleanArrayList);
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    StringBuilder m8728C = C22128a.m8728C("Type cannot be packed: ");
                    m8728C.append(generatedExtension.descriptor.getLiteType());
                    throw new IllegalStateException(m8728C.toString());
                case 13:
                    IntArrayList intArrayList3 = new IntArrayList();
                    i4 = decodePackedVarint32List(bArr, i2, intArrayList3, registers);
                    UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) extendableMessage).unknownFields;
                    if (unknownFieldSetLite == UnknownFieldSetLite.getDefaultInstance()) {
                        unknownFieldSetLite = null;
                    }
                    UnknownFieldSetLite unknownFieldSetLite2 = (UnknownFieldSetLite) SchemaUtil.filterUnknownEnumList(i5, (List<Integer>) intArrayList3, (Internal.EnumLiteMap<?>) generatedExtension.descriptor.getEnumType(), unknownFieldSetLite, (UnknownFieldSchema<UT, UnknownFieldSetLite>) unknownFieldSchema);
                    if (unknownFieldSetLite2 != null) {
                        ((GeneratedMessageLite) extendableMessage).unknownFields = unknownFieldSetLite2;
                    }
                    fieldSet.setField(generatedExtension.descriptor, intArrayList3);
                    break;
                case 16:
                    IntArrayList intArrayList4 = new IntArrayList();
                    i4 = decodePackedSInt32List(bArr, i2, intArrayList4, registers);
                    fieldSet.setField(generatedExtension.descriptor, intArrayList4);
                    break;
                case 17:
                    LongArrayList longArrayList3 = new LongArrayList();
                    i4 = decodePackedSInt64List(bArr, i2, longArrayList3, registers);
                    fieldSet.setField(generatedExtension.descriptor, longArrayList3);
                    break;
            }
        } else {
            if (generatedExtension.getLiteType() != WireFormat.FieldType.ENUM) {
                switch (generatedExtension.getLiteType().ordinal()) {
                    case 0:
                        num = Double.valueOf(decodeDouble(bArr, i2));
                        i2 += 8;
                        break;
                    case 1:
                        num = Float.valueOf(decodeFloat(bArr, i2));
                        i2 += 4;
                        break;
                    case 2:
                    case 3:
                        i2 = decodeVarint64(bArr, i2, registers);
                        num = Long.valueOf(registers.long1);
                        break;
                    case 4:
                    case 12:
                        i2 = decodeVarint32(bArr, i2, registers);
                        num = Integer.valueOf(registers.int1);
                        break;
                    case 5:
                    case 15:
                        num = Long.valueOf(decodeFixed64(bArr, i2));
                        i2 += 8;
                        break;
                    case 6:
                    case 14:
                        num = Integer.valueOf(decodeFixed32(bArr, i2));
                        i2 += 4;
                        break;
                    case 7:
                        i2 = decodeVarint64(bArr, i2, registers);
                        num = Boolean.valueOf(registers.long1 != 0);
                        break;
                    case 8:
                        i2 = decodeString(bArr, i2, registers);
                        num = registers.object1;
                        break;
                    case 9:
                        i2 = decodeGroupField(Protobuf.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass()), bArr, i2, i3, (i5 << 3) | 4, registers);
                        num = registers.object1;
                        break;
                    case 10:
                        i2 = decodeMessageField(Protobuf.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass()), bArr, i2, i3, registers);
                        num = registers.object1;
                        break;
                    case 11:
                        i2 = decodeBytes(bArr, i2, registers);
                        num = registers.object1;
                        break;
                    case 13:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 16:
                        i2 = decodeVarint32(bArr, i2, registers);
                        num = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                        break;
                    case 17:
                        i2 = decodeVarint64(bArr, i2, registers);
                        num = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                        break;
                    default:
                        num = null;
                        break;
                }
            } else {
                i2 = decodeVarint32(bArr, i2, registers);
                if (generatedExtension.descriptor.getEnumType().findValueByNumber(registers.int1) == null) {
                    UnknownFieldSetLite unknownFieldSetLite3 = ((GeneratedMessageLite) extendableMessage).unknownFields;
                    UnknownFieldSetLite unknownFieldSetLite4 = unknownFieldSetLite3;
                    if (unknownFieldSetLite3 == UnknownFieldSetLite.getDefaultInstance()) {
                        unknownFieldSetLite4 = UnknownFieldSetLite.newInstance();
                        ((GeneratedMessageLite) extendableMessage).unknownFields = unknownFieldSetLite4;
                    }
                    SchemaUtil.storeUnknownEnum(i5, registers.int1, unknownFieldSetLite4, unknownFieldSchema);
                    return i2;
                }
                num = Integer.valueOf(registers.int1);
            }
            if (generatedExtension.isRepeated()) {
                fieldSet.addRepeatedField(generatedExtension.descriptor, num);
            } else {
                int ordinal = generatedExtension.getLiteType().ordinal();
                if (ordinal == 9 || ordinal == 10) {
                    Object field = fieldSet.getField(generatedExtension.descriptor);
                    obj = num;
                    if (field != null) {
                        obj = Internal.mergeMessage(field, num);
                    }
                } else {
                    obj = num;
                }
                fieldSet.setField(generatedExtension.descriptor, obj);
            }
            i4 = i2;
        }
        return i4;
    }

    public static int decodeExtensionOrUnknownField(int i, byte[] bArr, int i2, int i3, Object obj, MessageLite messageLite, UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, Registers registers) throws IOException {
        GeneratedMessageLite.GeneratedExtension findLiteExtensionByNumber = registers.extensionRegistry.findLiteExtensionByNumber(messageLite, i >>> 3);
        if (findLiteExtensionByNumber == null) {
            return decodeUnknownField(i, bArr, i2, i3, MessageSchema.getMutableUnknownFields(obj), registers);
        }
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) obj;
        extendableMessage.ensureExtensionsAreMutable();
        return decodeExtension(i, bArr, i2, i3, extendableMessage, findLiteExtensionByNumber, unknownFieldSchema, registers);
    }

    public static int decodeFixed32(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int decodeFixed32List(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        intArrayList.addInt(decodeFixed32(bArr, i2));
        int i4 = i2 + 4;
        while (i4 < i3) {
            int decodeVarint32 = decodeVarint32(bArr, i4, registers);
            if (i != registers.int1) {
                break;
            }
            intArrayList.addInt(decodeFixed32(bArr, decodeVarint32));
            i4 = decodeVarint32 + 4;
        }
        return i4;
    }

    public static long decodeFixed64(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static int decodeFixed64List(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        longArrayList.addLong(decodeFixed64(bArr, i2));
        int i4 = i2 + 8;
        while (i4 < i3) {
            int decodeVarint32 = decodeVarint32(bArr, i4, registers);
            if (i != registers.int1) {
                break;
            }
            longArrayList.addLong(decodeFixed64(bArr, decodeVarint32));
            i4 = decodeVarint32 + 8;
        }
        return i4;
    }

    public static float decodeFloat(byte[] bArr, int i) {
        return Float.intBitsToFloat(decodeFixed32(bArr, i));
    }

    public static int decodeFloatList(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) {
        FloatArrayList floatArrayList = (FloatArrayList) protobufList;
        floatArrayList.addFloat(decodeFloat(bArr, i2));
        int i4 = i2 + 4;
        while (i4 < i3) {
            int decodeVarint32 = decodeVarint32(bArr, i4, registers);
            if (i != registers.int1) {
                break;
            }
            floatArrayList.addFloat(decodeFloat(bArr, decodeVarint32));
            i4 = decodeVarint32 + 4;
        }
        return i4;
    }

    public static int decodeGroupField(Schema schema, byte[] bArr, int i, int i2, int i3, Registers registers) throws IOException {
        MessageSchema messageSchema = (MessageSchema) schema;
        Object newInstance = messageSchema.newInstance();
        int parseProto2Message = messageSchema.parseProto2Message(newInstance, bArr, i, i2, i3, registers);
        messageSchema.makeImmutable(newInstance);
        registers.object1 = newInstance;
        return parseProto2Message;
    }

    public static int decodeGroupList(Schema schema, int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        int i4 = (i & (-8)) | 4;
        int decodeGroupField = decodeGroupField(schema, bArr, i2, i3, i4, registers);
        protobufList.add(registers.object1);
        while (decodeGroupField < i3) {
            int decodeVarint32 = decodeVarint32(bArr, decodeGroupField, registers);
            if (i != registers.int1) {
                break;
            }
            decodeGroupField = decodeGroupField(schema, bArr, decodeVarint32, i3, i4, registers);
            protobufList.add(registers.object1);
        }
        return decodeGroupField;
    }

    public static int decodeMessageField(Schema schema, byte[] bArr, int i, int i2, Registers registers) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = decodeVarint32(b, bArr, i3, registers);
            i5 = registers.int1;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        Object newInstance = schema.newInstance();
        int i6 = i5 + i4;
        schema.mergeFrom(newInstance, bArr, i4, i6, registers);
        schema.makeImmutable(newInstance);
        registers.object1 = newInstance;
        return i6;
    }

    public static int decodeMessageList(Schema<?> schema, int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        int decodeMessageField = decodeMessageField(schema, bArr, i2, i3, registers);
        protobufList.add(registers.object1);
        while (decodeMessageField < i3) {
            int decodeVarint32 = decodeVarint32(bArr, decodeMessageField, registers);
            if (i != registers.int1) {
                break;
            }
            decodeMessageField = decodeMessageField(schema, bArr, decodeVarint32, i3, registers);
            protobufList.add(registers.object1);
        }
        return decodeMessageField;
    }

    public static int decodePackedBoolList(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        BooleanArrayList booleanArrayList = (BooleanArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i2) {
            decodeVarint32 = decodeVarint64(bArr, decodeVarint32, registers);
            booleanArrayList.addBoolean(registers.long1 != 0);
        }
        if (decodeVarint32 == i2) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int decodePackedDoubleList(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        DoubleArrayList doubleArrayList = (DoubleArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i2) {
            doubleArrayList.addDouble(decodeDouble(bArr, decodeVarint32));
            decodeVarint32 += 8;
        }
        if (decodeVarint32 == i2) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int decodePackedFixed32List(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i2) {
            intArrayList.addInt(decodeFixed32(bArr, decodeVarint32));
            decodeVarint32 += 4;
        }
        if (decodeVarint32 == i2) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int decodePackedFixed64List(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i2) {
            longArrayList.addLong(decodeFixed64(bArr, decodeVarint32));
            decodeVarint32 += 8;
        }
        if (decodeVarint32 == i2) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int decodePackedFloatList(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        FloatArrayList floatArrayList = (FloatArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i2) {
            floatArrayList.addFloat(decodeFloat(bArr, decodeVarint32));
            decodeVarint32 += 4;
        }
        if (decodeVarint32 == i2) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int decodePackedSInt32List(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i2) {
            decodeVarint32 = decodeVarint32(bArr, decodeVarint32, registers);
            intArrayList.addInt(CodedInputStream.decodeZigZag32(registers.int1));
        }
        if (decodeVarint32 == i2) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int decodePackedSInt64List(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i2) {
            decodeVarint32 = decodeVarint64(bArr, decodeVarint32, registers);
            longArrayList.addLong(CodedInputStream.decodeZigZag64(registers.long1));
        }
        if (decodeVarint32 == i2) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int decodePackedVarint32List(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i2) {
            decodeVarint32 = decodeVarint32(bArr, decodeVarint32, registers);
            intArrayList.addInt(registers.int1);
        }
        if (decodeVarint32 == i2) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int decodePackedVarint64List(byte[] bArr, int i, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1 + decodeVarint32;
        while (decodeVarint32 < i2) {
            decodeVarint32 = decodeVarint64(bArr, decodeVarint32, registers);
            longArrayList.addLong(registers.long1);
        }
        if (decodeVarint32 == i2) {
            return decodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    public static int decodeSInt32List(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i2, registers);
        intArrayList.addInt(CodedInputStream.decodeZigZag32(registers.int1));
        while (decodeVarint32 < i3) {
            int decodeVarint322 = decodeVarint32(bArr, decodeVarint32, registers);
            if (i != registers.int1) {
                break;
            }
            decodeVarint32 = decodeVarint32(bArr, decodeVarint322, registers);
            intArrayList.addInt(CodedInputStream.decodeZigZag32(registers.int1));
        }
        return decodeVarint32;
    }

    public static int decodeSInt64List(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint64 = decodeVarint64(bArr, i2, registers);
        longArrayList.addLong(CodedInputStream.decodeZigZag64(registers.long1));
        while (decodeVarint64 < i3) {
            int decodeVarint32 = decodeVarint32(bArr, decodeVarint64, registers);
            if (i != registers.int1) {
                break;
            }
            decodeVarint64 = decodeVarint64(bArr, decodeVarint32, registers);
            longArrayList.addLong(CodedInputStream.decodeZigZag64(registers.long1));
        }
        return decodeVarint64;
    }

    public static int decodeString(byte[] bArr, int i, Registers registers) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1;
        if (i2 >= 0) {
            if (i2 == 0) {
                registers.object1 = "";
                return decodeVarint32;
            }
            registers.object1 = new String(bArr, decodeVarint32, i2, Internal.UTF_8);
            return decodeVarint32 + i2;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0047  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x003d -> B:9:0x0042). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int decodeStringList(int r8, byte[] r9, int r10, int r11, com.google.protobuf.Internal.ProtobufList<?> r12, com.google.protobuf.ArrayDecoders.Registers r13) throws com.google.protobuf.InvalidProtocolBufferException {
        /*
            r0 = r9
            r1 = r10
            r2 = r13
            int r0 = decodeVarint32(r0, r1, r2)
            r10 = r0
            r0 = r13
            int r0 = r0.int1
            r14 = r0
            r0 = r14
            if (r0 < 0) goto La3
            r0 = r14
            if (r0 != 0) goto L27
            r0 = r12
            java.lang.String r1 = ""
            boolean r0 = r0.add(r1)
            goto L42
        L27:
            r0 = r12
            java.lang.String r1 = new java.lang.String
            r2 = r1
            r3 = r9
            r4 = r10
            r5 = r14
            java.nio.charset.Charset r6 = com.google.protobuf.Internal.UTF_8
            r2.<init>(r3, r4, r5, r6)
            boolean r0 = r0.add(r1)
        L3d:
            r0 = r10
            r1 = r14
            int r0 = r0 + r1
            r10 = r0
        L42:
            r0 = r10
            r1 = r11
            if (r0 >= r1) goto La1
            r0 = r9
            r1 = r10
            r2 = r13
            int r0 = decodeVarint32(r0, r1, r2)
            r14 = r0
            r0 = r8
            r1 = r13
            int r1 = r1.int1
            if (r0 == r1) goto L5c
            goto La1
        L5c:
            r0 = r9
            r1 = r14
            r2 = r13
            int r0 = decodeVarint32(r0, r1, r2)
            r10 = r0
            r0 = r13
            int r0 = r0.int1
            r14 = r0
            r0 = r14
            if (r0 < 0) goto L9d
            r0 = r14
            if (r0 != 0) goto L84
            r0 = r12
            java.lang.String r1 = ""
            boolean r0 = r0.add(r1)
            goto L42
        L84:
            r0 = r12
            java.lang.String r1 = new java.lang.String
            r2 = r1
            r3 = r9
            r4 = r10
            r5 = r14
            java.nio.charset.Charset r6 = com.google.protobuf.Internal.UTF_8
            r2.<init>(r3, r4, r5, r6)
            boolean r0 = r0.add(r1)
            goto L3d
        L9d:
            com.google.protobuf.InvalidProtocolBufferException r0 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r0
        La1:
            r0 = r10
            return r0
        La3:
            com.google.protobuf.InvalidProtocolBufferException r0 = com.google.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.ArrayDecoders.decodeStringList(int, byte[], int, int, com.google.protobuf.Internal$ProtobufList, com.google.protobuf.ArrayDecoders$Registers):int");
    }

    public static int decodeStringListRequireUtf8(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) throws InvalidProtocolBufferException {
        int i4;
        int decodeVarint32 = decodeVarint32(bArr, i2, registers);
        int i5 = registers.int1;
        if (i5 >= 0) {
            if (i5 == 0) {
                protobufList.add("");
                i4 = decodeVarint32;
            } else {
                i4 = decodeVarint32 + i5;
                if (!Utf8.isValidUtf8(bArr, decodeVarint32, i4)) {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
                protobufList.add(new String(bArr, decodeVarint32, i5, Internal.UTF_8));
            }
            while (i4 < i3) {
                int decodeVarint322 = decodeVarint32(bArr, i4, registers);
                if (i != registers.int1) {
                    break;
                }
                int decodeVarint323 = decodeVarint32(bArr, decodeVarint322, registers);
                int i6 = registers.int1;
                if (i6 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                if (i6 == 0) {
                    protobufList.add("");
                    i4 = decodeVarint323;
                } else {
                    i4 = decodeVarint323 + i6;
                    if (!Utf8.isValidUtf8(bArr, decodeVarint323, i4)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                    protobufList.add(new String(bArr, decodeVarint323, i6, Internal.UTF_8));
                }
            }
            return i4;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    public static int decodeStringRequireUtf8(byte[] bArr, int i, Registers registers) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1;
        if (i2 >= 0) {
            if (i2 == 0) {
                registers.object1 = "";
                return decodeVarint32;
            }
            registers.object1 = Utf8.decodeUtf8(bArr, decodeVarint32, i2);
            return decodeVarint32 + i2;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    public static int decodeUnknownField(int i, byte[] bArr, int i2, int i3, UnknownFieldSetLite unknownFieldSetLite, Registers registers) throws InvalidProtocolBufferException {
        int i4;
        if (WireFormat.getTagFieldNumber(i) != 0) {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                int decodeVarint64 = decodeVarint64(bArr, i2, registers);
                unknownFieldSetLite.storeField(i, Long.valueOf(registers.long1));
                return decodeVarint64;
            } else if (tagWireType == 1) {
                unknownFieldSetLite.storeField(i, Long.valueOf(decodeFixed64(bArr, i2)));
                return i2 + 8;
            } else if (tagWireType == 2) {
                int decodeVarint32 = decodeVarint32(bArr, i2, registers);
                int i5 = registers.int1;
                if (i5 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                if (i5 > bArr.length - decodeVarint32) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i5 == 0) {
                    unknownFieldSetLite.storeField(i, ByteString.EMPTY);
                } else {
                    unknownFieldSetLite.storeField(i, ByteString.copyFrom(bArr, decodeVarint32, i5));
                }
                return decodeVarint32 + i5;
            } else if (tagWireType != 3) {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidTag();
                }
                unknownFieldSetLite.storeField(i, Integer.valueOf(decodeFixed32(bArr, i2)));
                return i2 + 4;
            } else {
                UnknownFieldSetLite newInstance = UnknownFieldSetLite.newInstance();
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    i4 = decodeVarint32(bArr, i2, registers);
                    i7 = registers.int1;
                    if (i7 == i6) {
                        break;
                    }
                    i2 = decodeUnknownField(i7, bArr, i4, i3, newInstance, registers);
                }
                if (i4 > i3 || i7 != i6) {
                    throw InvalidProtocolBufferException.parseFailure();
                }
                unknownFieldSetLite.storeField(i, newInstance);
                return i4;
            }
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    public static int decodeVarint32(int i, byte[] bArr, int i2, Registers registers) {
        int i3 = i & Constants.ERR_WATERMARKR_INFO;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            registers.int1 = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            registers.int1 = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            registers.int1 = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            registers.int1 = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                registers.int1 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    public static int decodeVarint32(byte[] bArr, int i, Registers registers) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            registers.int1 = b;
            return i2;
        }
        return decodeVarint32(b, bArr, i2, registers);
    }

    public static int decodeVarint32List(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int decodeVarint32 = decodeVarint32(bArr, i2, registers);
        intArrayList.addInt(registers.int1);
        while (decodeVarint32 < i3) {
            int decodeVarint322 = decodeVarint32(bArr, decodeVarint32, registers);
            if (i != registers.int1) {
                break;
            }
            decodeVarint32 = decodeVarint32(bArr, decodeVarint322, registers);
            intArrayList.addInt(registers.int1);
        }
        return decodeVarint32;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public static int decodeVarint64(long j, byte[] bArr, int i, Registers registers) {
        int i2 = i + 1;
        byte b = bArr[i];
        char c = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i3 = 7;
        while (b < 0) {
            b = bArr[i2];
            i3 += 7;
            c |= (b & Byte.MAX_VALUE) << i3;
            i2++;
        }
        registers.long1 = c;
        return i2;
    }

    public static int decodeVarint64(byte[] bArr, int i, Registers registers) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            registers.long1 = j;
            return i2;
        }
        return decodeVarint64(j, bArr, i2, registers);
    }

    public static int decodeVarint64List(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList<?> protobufList, Registers registers) {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int decodeVarint64 = decodeVarint64(bArr, i2, registers);
        longArrayList.addLong(registers.long1);
        while (decodeVarint64 < i3) {
            int decodeVarint32 = decodeVarint32(bArr, decodeVarint64, registers);
            if (i != registers.int1) {
                break;
            }
            decodeVarint64 = decodeVarint64(bArr, decodeVarint32, registers);
            longArrayList.addLong(registers.long1);
        }
        return decodeVarint64;
    }

    public static int skipField(int i, byte[] bArr, int i2, int i3, Registers registers) throws InvalidProtocolBufferException {
        int i4;
        if (WireFormat.getTagFieldNumber(i) != 0) {
            int tagWireType = WireFormat.getTagWireType(i);
            if (tagWireType == 0) {
                return decodeVarint64(bArr, i2, registers);
            }
            if (tagWireType == 1) {
                return i2 + 8;
            }
            if (tagWireType == 2) {
                return decodeVarint32(bArr, i2, registers) + registers.int1;
            }
            if (tagWireType != 3) {
                if (tagWireType != 5) {
                    throw InvalidProtocolBufferException.invalidTag();
                }
                return i2 + 4;
            }
            int i5 = (i & (-8)) | 4;
            int i6 = 0;
            while (true) {
                i4 = i2;
                if (i2 >= i3) {
                    break;
                }
                i4 = decodeVarint32(bArr, i2, registers);
                i6 = registers.int1;
                if (i6 == i5) {
                    break;
                }
                i2 = skipField(i6, bArr, i4, i3, registers);
            }
            if (i4 <= i3 && i6 == i5) {
                return i4;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }
        throw InvalidProtocolBufferException.invalidTag();
    }
}
