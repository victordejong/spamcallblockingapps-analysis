package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessageLite;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ArrayDecoders.class */
public final class ArrayDecoders {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.protobuf.ArrayDecoders$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ArrayDecoders$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

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
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ArrayDecoders$Registers.class */
    public static final class Registers {
        public final ExtensionRegistryLite extensionRegistry;
        public int int1;
        public long long1;
        public Object object1;

        Registers() {
            this.extensionRegistry = ExtensionRegistryLite.getEmptyRegistry();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Registers(ExtensionRegistryLite extensionRegistryLite) {
            Objects.requireNonNull(extensionRegistryLite);
            this.extensionRegistry = extensionRegistryLite;
        }
    }

    ArrayDecoders() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeBytes(byte[] bArr, int i, Registers registers) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        } else if (i2 > bArr.length - decodeVarint32) {
            throw InvalidProtocolBufferException.truncatedMessage();
        } else if (i2 == 0) {
            registers.object1 = ByteString.EMPTY;
            return decodeVarint32;
        } else {
            registers.object1 = ByteString.copyFrom(bArr, decodeVarint32, i2);
            return decodeVarint32 + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0049  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003f -> B:11:0x0044). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int decodeBytesList(int r5, byte[] r6, int r7, int r8, com.explorestack.protobuf.Internal.ProtobufList<?> r9, com.explorestack.protobuf.ArrayDecoders.Registers r10) throws com.explorestack.protobuf.InvalidProtocolBufferException {
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
            if (r0 < 0) goto L_0x00ac
            r0 = r11
            r1 = r6
            int r1 = r1.length
            r2 = r7
            int r1 = r1 - r2
            if (r0 > r1) goto L_0x00a8
            r0 = r11
            if (r0 != 0) goto L_0x0030
            r0 = r9
            com.explorestack.protobuf.ByteString r1 = com.explorestack.protobuf.ByteString.EMPTY
            boolean r0 = r0.add(r1)
            goto L_0x0044
        L_0x0030:
            r0 = r9
            r1 = r6
            r2 = r7
            r3 = r11
            com.explorestack.protobuf.ByteString r1 = com.explorestack.protobuf.ByteString.copyFrom(r1, r2, r3)
            boolean r0 = r0.add(r1)
        L_0x003f:
            r0 = r7
            r1 = r11
            int r0 = r0 + r1
            r7 = r0
        L_0x0044:
            r0 = r7
            r1 = r8
            if (r0 >= r1) goto L_0x00a6
            r0 = r6
            r1 = r7
            r2 = r10
            int r0 = decodeVarint32(r0, r1, r2)
            r11 = r0
            r0 = r5
            r1 = r10
            int r1 = r1.int1
            if (r0 != r1) goto L_0x00a6
            r0 = r6
            r1 = r11
            r2 = r10
            int r0 = decodeVarint32(r0, r1, r2)
            r7 = r0
            r0 = r10
            int r0 = r0.int1
            r11 = r0
            r0 = r11
            if (r0 < 0) goto L_0x00a2
            r0 = r11
            r1 = r6
            int r1 = r1.length
            r2 = r7
            int r1 = r1 - r2
            if (r0 > r1) goto L_0x009e
            r0 = r11
            if (r0 != 0) goto L_0x008c
            r0 = r9
            com.explorestack.protobuf.ByteString r1 = com.explorestack.protobuf.ByteString.EMPTY
            boolean r0 = r0.add(r1)
            goto L_0x0044
        L_0x008c:
            r0 = r9
            r1 = r6
            r2 = r7
            r3 = r11
            com.explorestack.protobuf.ByteString r1 = com.explorestack.protobuf.ByteString.copyFrom(r1, r2, r3)
            boolean r0 = r0.add(r1)
            goto L_0x003f
        L_0x009e:
            com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r0
        L_0x00a2:
            com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r0
        L_0x00a6:
            r0 = r7
            return r0
        L_0x00a8:
            com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.truncatedMessage()
            throw r0
        L_0x00ac:
            com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.ArrayDecoders.decodeBytesList(int, byte[], int, int, com.explorestack.protobuf.Internal$ProtobufList, com.explorestack.protobuf.ArrayDecoders$Registers):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double decodeDouble(byte[] bArr, int i) {
        return Double.longBitsToDouble(decodeFixed64(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    static int decodeExtension(int i, byte[] bArr, int i2, int i3, GeneratedMessageLite.ExtendableMessage<?, ?> extendableMessage, GeneratedMessageLite.GeneratedExtension<?, ?> generatedExtension, UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, Registers registers) throws IOException {
        int i4;
        Object field;
        FieldSet<GeneratedMessageLite.ExtensionDescriptor> fieldSet = extendableMessage.extensions;
        int i5 = i >>> 3;
        Object obj = null;
        UnknownFieldSetLite unknownFieldSetLite = null;
        if (!generatedExtension.descriptor.isRepeated() || !generatedExtension.descriptor.isPacked()) {
            if (generatedExtension.getLiteType() != WireFormat.FieldType.ENUM) {
                switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()]) {
                    case 1:
                        obj = Double.valueOf(decodeDouble(bArr, i2));
                        i2 += 8;
                        break;
                    case 2:
                        obj = Float.valueOf(decodeFloat(bArr, i2));
                        i2 += 4;
                        break;
                    case 3:
                    case 4:
                        i2 = decodeVarint64(bArr, i2, registers);
                        obj = Long.valueOf(registers.long1);
                        break;
                    case 5:
                    case 6:
                        i2 = decodeVarint32(bArr, i2, registers);
                        obj = Integer.valueOf(registers.int1);
                        break;
                    case 7:
                    case 8:
                        obj = Long.valueOf(decodeFixed64(bArr, i2));
                        i2 += 8;
                        break;
                    case 9:
                    case 10:
                        obj = Integer.valueOf(decodeFixed32(bArr, i2));
                        i2 += 4;
                        break;
                    case 11:
                        i2 = decodeVarint64(bArr, i2, registers);
                        obj = Boolean.valueOf(registers.long1 != 0);
                        break;
                    case 12:
                        i2 = decodeVarint32(bArr, i2, registers);
                        obj = Integer.valueOf(CodedInputStream.decodeZigZag32(registers.int1));
                        break;
                    case 13:
                        i2 = decodeVarint64(bArr, i2, registers);
                        obj = Long.valueOf(CodedInputStream.decodeZigZag64(registers.long1));
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        i2 = decodeBytes(bArr, i2, registers);
                        obj = registers.object1;
                        break;
                    case 16:
                        i2 = decodeString(bArr, i2, registers);
                        obj = registers.object1;
                        break;
                    case 17:
                        i2 = decodeGroupField(Protobuf.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass()), bArr, i2, i3, (i5 << 3) | 4, registers);
                        obj = registers.object1;
                        break;
                    case 18:
                        i2 = decodeMessageField(Protobuf.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass()), bArr, i2, i3, registers);
                        obj = registers.object1;
                        break;
                }
            } else {
                i2 = decodeVarint32(bArr, i2, registers);
                if (generatedExtension.descriptor.getEnumType().findValueByNumber(registers.int1) == null) {
                    UnknownFieldSetLite unknownFieldSetLite2 = extendableMessage.unknownFields;
                    UnknownFieldSetLite unknownFieldSetLite3 = unknownFieldSetLite2;
                    if (unknownFieldSetLite2 == UnknownFieldSetLite.getDefaultInstance()) {
                        unknownFieldSetLite3 = UnknownFieldSetLite.newInstance();
                        extendableMessage.unknownFields = unknownFieldSetLite3;
                    }
                    SchemaUtil.storeUnknownEnum(i5, registers.int1, unknownFieldSetLite3, unknownFieldSchema);
                    return i2;
                }
                obj = Integer.valueOf(registers.int1);
            }
            if (generatedExtension.isRepeated()) {
                fieldSet.addRepeatedField(generatedExtension.descriptor, obj);
                i4 = i2;
                return i4;
            }
            int i6 = AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()];
            if ((i6 == 17 || i6 == 18) && (field = fieldSet.getField(generatedExtension.descriptor)) != null) {
                obj = Internal.mergeMessage(field, obj);
                i4 = i2;
            } else {
                i4 = i2;
            }
            fieldSet.setField(generatedExtension.descriptor, obj);
            return i4;
        }
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()]) {
            case 1:
                DoubleArrayList doubleArrayList = new DoubleArrayList();
                i4 = decodePackedDoubleList(bArr, i2, doubleArrayList, registers);
                obj = doubleArrayList;
                fieldSet.setField(generatedExtension.descriptor, obj);
                break;
            case 2:
                FloatArrayList floatArrayList = new FloatArrayList();
                i4 = decodePackedFloatList(bArr, i2, floatArrayList, registers);
                obj = floatArrayList;
                fieldSet.setField(generatedExtension.descriptor, obj);
                break;
            case 3:
            case 4:
                LongArrayList longArrayList = new LongArrayList();
                i4 = decodePackedVarint64List(bArr, i2, longArrayList, registers);
                obj = longArrayList;
                fieldSet.setField(generatedExtension.descriptor, obj);
                break;
            case 5:
            case 6:
                IntArrayList intArrayList = new IntArrayList();
                i4 = decodePackedVarint32List(bArr, i2, intArrayList, registers);
                obj = intArrayList;
                fieldSet.setField(generatedExtension.descriptor, obj);
                break;
            case 7:
            case 8:
                LongArrayList longArrayList2 = new LongArrayList();
                i4 = decodePackedFixed64List(bArr, i2, longArrayList2, registers);
                obj = longArrayList2;
                fieldSet.setField(generatedExtension.descriptor, obj);
                break;
            case 9:
            case 10:
                IntArrayList intArrayList2 = new IntArrayList();
                i4 = decodePackedFixed32List(bArr, i2, intArrayList2, registers);
                obj = intArrayList2;
                fieldSet.setField(generatedExtension.descriptor, obj);
                break;
            case 11:
                BooleanArrayList booleanArrayList = new BooleanArrayList();
                i4 = decodePackedBoolList(bArr, i2, booleanArrayList, registers);
                obj = booleanArrayList;
                fieldSet.setField(generatedExtension.descriptor, obj);
                break;
            case 12:
                IntArrayList intArrayList3 = new IntArrayList();
                i4 = decodePackedSInt32List(bArr, i2, intArrayList3, registers);
                obj = intArrayList3;
                fieldSet.setField(generatedExtension.descriptor, obj);
                break;
            case 13:
                LongArrayList longArrayList3 = new LongArrayList();
                i4 = decodePackedSInt64List(bArr, i2, longArrayList3, registers);
                obj = longArrayList3;
                fieldSet.setField(generatedExtension.descriptor, obj);
                break;
            case 14:
                IntArrayList intArrayList4 = new IntArrayList();
                i4 = decodePackedVarint32List(bArr, i2, intArrayList4, registers);
                unknownFieldSetLite = extendableMessage.unknownFields;
                if (unknownFieldSetLite == UnknownFieldSetLite.getDefaultInstance()) {
                }
                UnknownFieldSetLite unknownFieldSetLite4 = (UnknownFieldSetLite) SchemaUtil.filterUnknownEnumList(i5, (List<Integer>) intArrayList4, generatedExtension.descriptor.getEnumType(), unknownFieldSetLite, (UnknownFieldSchema<UT, UnknownFieldSetLite>) unknownFieldSchema);
                if (unknownFieldSetLite4 != null) {
                    extendableMessage.unknownFields = unknownFieldSetLite4;
                }
                fieldSet.setField(generatedExtension.descriptor, intArrayList4);
                break;
            default:
                throw new IllegalStateException("Type cannot be packed: " + generatedExtension.descriptor.getLiteType());
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeExtensionOrUnknownField(int i, byte[] bArr, int i2, int i3, Object obj, MessageLite messageLite, UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, Registers registers) throws IOException {
        GeneratedMessageLite.GeneratedExtension findLiteExtensionByNumber = registers.extensionRegistry.findLiteExtensionByNumber(messageLite, i >>> 3);
        if (findLiteExtensionByNumber == null) {
            return decodeUnknownField(i, bArr, i2, i3, MessageSchema.getMutableUnknownFields(obj), registers);
        }
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) obj;
        extendableMessage.ensureExtensionsAreMutable();
        return decodeExtension(i, bArr, i2, i3, extendableMessage, findLiteExtensionByNumber, unknownFieldSchema, registers);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeFixed32(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long decodeFixed64(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float decodeFloat(byte[] bArr, int i) {
        return Float.intBitsToFloat(decodeFixed32(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeGroupField(Schema schema, byte[] bArr, int i, int i2, int i3, Registers registers) throws IOException {
        MessageSchema messageSchema = (MessageSchema) schema;
        Object newInstance = messageSchema.newInstance();
        int parseProto2Message = messageSchema.parseProto2Message(newInstance, bArr, i, i2, i3, registers);
        messageSchema.makeImmutable(newInstance);
        registers.object1 = newInstance;
        return parseProto2Message;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeMessageField(Schema schema, byte[] bArr, int i, int i2, Registers registers) throws IOException {
        int i3 = i + 1;
        byte b2 = bArr[i];
        int i4 = i3;
        int i5 = b2;
        if (b2 < 0) {
            i4 = decodeVarint32(b2, bArr, i3, registers);
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeString(byte[] bArr, int i, Registers registers) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        } else if (i2 == 0) {
            registers.object1 = "";
            return decodeVarint32;
        } else {
            registers.object1 = new String(bArr, decodeVarint32, i2, Internal.UTF_8);
            return decodeVarint32 + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0043 -> B:9:0x0048). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int decodeStringList(int r8, byte[] r9, int r10, int r11, com.explorestack.protobuf.Internal.ProtobufList<?> r12, com.explorestack.protobuf.ArrayDecoders.Registers r13) throws com.explorestack.protobuf.InvalidProtocolBufferException {
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
            if (r0 < 0) goto L_0x00a7
            r0 = r14
            if (r0 != 0) goto L_0x0027
            r0 = r12
            java.lang.String r1 = ""
            boolean r0 = r0.add(r1)
            goto L_0x0048
        L_0x0027:
            r0 = r12
            java.lang.String r1 = new java.lang.String
            r2 = r1
            r3 = r9
            r4 = r10
            r5 = r14
            java.nio.charset.Charset r6 = com.explorestack.protobuf.Internal.UTF_8
            r2.<init>(r3, r4, r5, r6)
            boolean r0 = r0.add(r1)
            r0 = r10
            r15 = r0
            r0 = r14
            r10 = r0
        L_0x0043:
            r0 = r15
            r1 = r10
            int r0 = r0 + r1
            r10 = r0
        L_0x0048:
            r0 = r10
            r1 = r11
            if (r0 >= r1) goto L_0x00a5
            r0 = r9
            r1 = r10
            r2 = r13
            int r0 = decodeVarint32(r0, r1, r2)
            r15 = r0
            r0 = r8
            r1 = r13
            int r1 = r1.int1
            if (r0 != r1) goto L_0x00a5
            r0 = r9
            r1 = r15
            r2 = r13
            int r0 = decodeVarint32(r0, r1, r2)
            r15 = r0
            r0 = r13
            int r0 = r0.int1
            r10 = r0
            r0 = r10
            if (r0 < 0) goto L_0x00a1
            r0 = r10
            if (r0 != 0) goto L_0x0088
            r0 = r12
            java.lang.String r1 = ""
            boolean r0 = r0.add(r1)
            r0 = r15
            r10 = r0
            goto L_0x0048
        L_0x0088:
            r0 = r12
            java.lang.String r1 = new java.lang.String
            r2 = r1
            r3 = r9
            r4 = r15
            r5 = r10
            java.nio.charset.Charset r6 = com.explorestack.protobuf.Internal.UTF_8
            r2.<init>(r3, r4, r5, r6)
            boolean r0 = r0.add(r1)
            goto L_0x0043
        L_0x00a1:
            com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r0
        L_0x00a5:
            r0 = r10
            return r0
        L_0x00a7:
            com.explorestack.protobuf.InvalidProtocolBufferException r0 = com.explorestack.protobuf.InvalidProtocolBufferException.negativeSize()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.ArrayDecoders.decodeStringList(int, byte[], int, int, com.explorestack.protobuf.Internal$ProtobufList, com.explorestack.protobuf.ArrayDecoders$Registers):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
                if (Utf8.isValidUtf8(bArr, decodeVarint32, i4)) {
                    protobufList.add(new String(bArr, decodeVarint32, i5, Internal.UTF_8));
                } else {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
            }
            while (i4 < i3) {
                int decodeVarint322 = decodeVarint32(bArr, i4, registers);
                if (i != registers.int1) {
                    break;
                }
                i4 = decodeVarint32(bArr, decodeVarint322, registers);
                int i6 = registers.int1;
                if (i6 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                } else if (i6 == 0) {
                    protobufList.add("");
                } else {
                    int i7 = i4 + i6;
                    if (Utf8.isValidUtf8(bArr, i4, i7)) {
                        protobufList.add(new String(bArr, i4, i6, Internal.UTF_8));
                        i4 = i7;
                    } else {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    }
                }
            }
            return i4;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeStringRequireUtf8(byte[] bArr, int i, Registers registers) throws InvalidProtocolBufferException {
        int decodeVarint32 = decodeVarint32(bArr, i, registers);
        int i2 = registers.int1;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        } else if (i2 == 0) {
            registers.object1 = "";
            return decodeVarint32;
        } else {
            registers.object1 = Utf8.decodeUtf8(bArr, decodeVarint32, i2);
            return decodeVarint32 + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
                } else if (i5 <= bArr.length - decodeVarint32) {
                    if (i5 == 0) {
                        unknownFieldSetLite.storeField(i, ByteString.EMPTY);
                    } else {
                        unknownFieldSetLite.storeField(i, ByteString.copyFrom(bArr, decodeVarint32, i5));
                    }
                    return decodeVarint32 + i5;
                } else {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } else if (tagWireType == 3) {
                UnknownFieldSetLite newInstance = UnknownFieldSetLite.newInstance();
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int decodeVarint322 = decodeVarint32(bArr, i2, registers);
                    i7 = registers.int1;
                    if (i7 == i6) {
                        i4 = decodeVarint322;
                        i7 = i7;
                        break;
                    }
                    i2 = decodeUnknownField(i7, bArr, decodeVarint322, i3, newInstance, registers);
                }
                if (i4 > i3 || i7 != i6) {
                    throw InvalidProtocolBufferException.parseFailure();
                }
                unknownFieldSetLite.storeField(i, newInstance);
                return i4;
            } else if (tagWireType == 5) {
                unknownFieldSetLite.storeField(i, Integer.valueOf(decodeFixed32(bArr, i2)));
                return i2 + 4;
            } else {
                throw InvalidProtocolBufferException.invalidTag();
            }
        } else {
            throw InvalidProtocolBufferException.invalidTag();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint32(int i, byte[] bArr, int i2, Registers registers) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            registers.int1 = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            registers.int1 = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            registers.int1 = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            registers.int1 = i9 | (b5 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                registers.int1 = i9 | ((b5 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint32(byte[] bArr, int i, Registers registers) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return decodeVarint32(b2, bArr, i2, registers);
        }
        registers.int1 = b2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    static int decodeVarint64(long j, byte[] bArr, int i, Registers registers) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i3 = 7;
        while (b2 < 0) {
            b2 = bArr[i2];
            i3 += 7;
            j2 |= (b2 & Byte.MAX_VALUE) << i3;
            i2++;
        }
        registers.long1 = j2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeVarint64(byte[] bArr, int i, Registers registers) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j < 0) {
            return decodeVarint64(j, bArr, i2, registers);
        }
        registers.long1 = j;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: package-private */
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
            if (tagWireType == 3) {
                int i5 = (i & (-8)) | 4;
                int i6 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int decodeVarint32 = decodeVarint32(bArr, i2, registers);
                    int i7 = registers.int1;
                    i6 = i7;
                    i4 = decodeVarint32;
                    if (i7 == i5) {
                        break;
                    }
                    i2 = skipField(i7, bArr, decodeVarint32, i3, registers);
                    i6 = i7;
                }
                if (i4 <= i3 && i6 == i5) {
                    return i4;
                }
                throw InvalidProtocolBufferException.parseFailure();
            } else if (tagWireType == 5) {
                return i2 + 4;
            } else {
                throw InvalidProtocolBufferException.invalidTag();
            }
        } else {
            throw InvalidProtocolBufferException.invalidTag();
        }
    }
}
