package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistry;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ExtensionSchemaFull.class */
final class ExtensionSchemaFull extends ExtensionSchema<Descriptors.FieldDescriptor> {
    private static final long EXTENSION_FIELD_OFFSET = getExtensionsFieldOffset();

    /* renamed from: com.explorestack.protobuf.ExtensionSchemaFull$1 */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ExtensionSchemaFull$1.class */
    static /* synthetic */ class C97451 {
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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 11;
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

    ExtensionSchemaFull() {
    }

    private static <T> long getExtensionsFieldOffset() {
        try {
            return UnsafeUtil.objectFieldOffset(GeneratedMessageV3.ExtendableMessage.class.getDeclaredField("extensions"));
        } catch (Throwable th) {
            throw new IllegalStateException("Unable to lookup extension field offset");
        }
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    public final int extensionNumber(Map.Entry<?, ?> entry) {
        return ((Descriptors.FieldDescriptor) entry.getKey()).getNumber();
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    public final Object findExtensionByNumber(ExtensionRegistryLite extensionRegistryLite, MessageLite messageLite, int i) {
        return ((ExtensionRegistry) extensionRegistryLite).findExtensionByNumber(((Message) messageLite).getDescriptorForType(), i);
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    public final FieldSet<Descriptors.FieldDescriptor> getExtensions(Object obj) {
        return (FieldSet) UnsafeUtil.getObject(obj, EXTENSION_FIELD_OFFSET);
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    public final FieldSet<Descriptors.FieldDescriptor> getMutableExtensions(Object obj) {
        FieldSet<Descriptors.FieldDescriptor> extensions = getExtensions(obj);
        FieldSet<Descriptors.FieldDescriptor> fieldSet = extensions;
        if (extensions.isImmutable()) {
            fieldSet = extensions.clone();
            setExtensions(obj, fieldSet);
        }
        return fieldSet;
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    public final boolean hasExtensions(MessageLite messageLite) {
        return messageLite instanceof GeneratedMessageV3.ExtendableMessage;
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    public final void makeImmutable(Object obj) {
        getExtensions(obj).makeImmutable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.ExtensionSchema
    public final <UT, UB> UB parseExtension(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<Descriptors.FieldDescriptor> fieldSet, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) throws IOException {
        Object obj2;
        Object obj3;
        ArrayList arrayList;
        ArrayList arrayList2;
        ExtensionRegistry.ExtensionInfo extensionInfo = (ExtensionRegistry.ExtensionInfo) obj;
        int number = extensionInfo.descriptor.getNumber();
        if (!extensionInfo.descriptor.isRepeated() || !extensionInfo.descriptor.isPacked()) {
            if (extensionInfo.descriptor.getLiteType() != WireFormat.FieldType.ENUM) {
                switch (C97451.$SwitchMap$com$google$protobuf$WireFormat$FieldType[extensionInfo.descriptor.getLiteType().ordinal()]) {
                    case 1:
                        obj2 = Double.valueOf(reader.readDouble());
                        break;
                    case 2:
                        obj2 = Float.valueOf(reader.readFloat());
                        break;
                    case 3:
                        obj2 = Long.valueOf(reader.readInt64());
                        break;
                    case 4:
                        obj2 = Long.valueOf(reader.readUInt64());
                        break;
                    case 5:
                        obj2 = Integer.valueOf(reader.readInt32());
                        break;
                    case 6:
                        obj2 = Long.valueOf(reader.readFixed64());
                        break;
                    case 7:
                        obj2 = Integer.valueOf(reader.readFixed32());
                        break;
                    case 8:
                        obj2 = Boolean.valueOf(reader.readBool());
                        break;
                    case 9:
                        obj2 = Integer.valueOf(reader.readUInt32());
                        break;
                    case 10:
                        obj2 = Integer.valueOf(reader.readSFixed32());
                        break;
                    case 11:
                        obj2 = Long.valueOf(reader.readSFixed64());
                        break;
                    case 12:
                        obj2 = Integer.valueOf(reader.readSInt32());
                        break;
                    case 13:
                        obj2 = Long.valueOf(reader.readSInt64());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        obj2 = reader.readBytes();
                        break;
                    case 16:
                        obj2 = reader.readString();
                        break;
                    case 17:
                        obj2 = reader.readGroup(extensionInfo.defaultInstance.getClass(), extensionRegistryLite);
                        break;
                    case 18:
                        obj2 = reader.readMessage(extensionInfo.defaultInstance.getClass(), extensionRegistryLite);
                        break;
                    default:
                        obj2 = null;
                        break;
                }
            } else {
                int readInt32 = reader.readInt32();
                Object findValueByNumber = extensionInfo.descriptor.getEnumType().findValueByNumber(readInt32);
                obj2 = findValueByNumber;
                if (findValueByNumber == null) {
                    return (UB) SchemaUtil.storeUnknownEnum(number, readInt32, ub, unknownFieldSchema);
                }
            }
            if (extensionInfo.descriptor.isRepeated()) {
                fieldSet.addRepeatedField(extensionInfo.descriptor, obj2);
            } else {
                int i = C97451.$SwitchMap$com$google$protobuf$WireFormat$FieldType[extensionInfo.descriptor.getLiteType().ordinal()];
                if (i == 17 || i == 18) {
                    Object field = fieldSet.getField(extensionInfo.descriptor);
                    obj3 = obj2;
                    if (field != null) {
                        obj3 = Internal.mergeMessage(field, obj2);
                    }
                } else {
                    obj3 = obj2;
                }
                fieldSet.setField(extensionInfo.descriptor, obj3);
            }
        } else {
            switch (C97451.$SwitchMap$com$google$protobuf$WireFormat$FieldType[extensionInfo.descriptor.getLiteType().ordinal()]) {
                case 1:
                    ArrayList arrayList3 = new ArrayList();
                    reader.readDoubleList(arrayList3);
                    arrayList2 = arrayList3;
                    arrayList = arrayList2;
                    break;
                case 2:
                    ArrayList arrayList4 = new ArrayList();
                    reader.readFloatList(arrayList4);
                    arrayList2 = arrayList4;
                    arrayList = arrayList2;
                    break;
                case 3:
                    ArrayList arrayList5 = new ArrayList();
                    reader.readInt64List(arrayList5);
                    arrayList2 = arrayList5;
                    arrayList = arrayList2;
                    break;
                case 4:
                    ArrayList arrayList6 = new ArrayList();
                    reader.readUInt64List(arrayList6);
                    arrayList2 = arrayList6;
                    arrayList = arrayList2;
                    break;
                case 5:
                    ArrayList arrayList7 = new ArrayList();
                    reader.readInt32List(arrayList7);
                    arrayList2 = arrayList7;
                    arrayList = arrayList2;
                    break;
                case 6:
                    ArrayList arrayList8 = new ArrayList();
                    reader.readFixed64List(arrayList8);
                    arrayList2 = arrayList8;
                    arrayList = arrayList2;
                    break;
                case 7:
                    ArrayList arrayList9 = new ArrayList();
                    reader.readFixed32List(arrayList9);
                    arrayList2 = arrayList9;
                    arrayList = arrayList2;
                    break;
                case 8:
                    ArrayList arrayList10 = new ArrayList();
                    reader.readBoolList(arrayList10);
                    arrayList2 = arrayList10;
                    arrayList = arrayList2;
                    break;
                case 9:
                    ArrayList arrayList11 = new ArrayList();
                    reader.readUInt32List(arrayList11);
                    arrayList2 = arrayList11;
                    arrayList = arrayList2;
                    break;
                case 10:
                    ArrayList arrayList12 = new ArrayList();
                    reader.readSFixed32List(arrayList12);
                    arrayList2 = arrayList12;
                    arrayList = arrayList2;
                    break;
                case 11:
                    ArrayList arrayList13 = new ArrayList();
                    reader.readSFixed64List(arrayList13);
                    arrayList2 = arrayList13;
                    arrayList = arrayList2;
                    break;
                case 12:
                    ArrayList arrayList14 = new ArrayList();
                    reader.readSInt32List(arrayList14);
                    arrayList2 = arrayList14;
                    arrayList = arrayList2;
                    break;
                case 13:
                    ArrayList arrayList15 = new ArrayList();
                    reader.readSInt64List(arrayList15);
                    arrayList2 = arrayList15;
                    arrayList = arrayList2;
                    break;
                case 14:
                    ArrayList arrayList16 = new ArrayList();
                    reader.readEnumList(arrayList16);
                    ArrayList arrayList17 = new ArrayList();
                    Iterator<Integer> it2 = arrayList16.iterator();
                    UB ub2 = ub;
                    while (true) {
                        arrayList = arrayList17;
                        ub = ub2;
                        if (!it2.hasNext()) {
                            break;
                        } else {
                            int intValue = it2.next().intValue();
                            Descriptors.EnumValueDescriptor findValueByNumber2 = extensionInfo.descriptor.getEnumType().findValueByNumber(intValue);
                            if (findValueByNumber2 != null) {
                                arrayList17.add(findValueByNumber2);
                            } else {
                                ub2 = SchemaUtil.storeUnknownEnum(number, intValue, ub2, unknownFieldSchema);
                            }
                        }
                    }
                default:
                    throw new IllegalStateException("Type cannot be packed: " + extensionInfo.descriptor.getLiteType());
            }
            fieldSet.setField(extensionInfo.descriptor, arrayList);
        }
        return ub;
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    public final void parseLengthPrefixedMessageSetItem(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<Descriptors.FieldDescriptor> fieldSet) throws IOException {
        ExtensionRegistry.ExtensionInfo extensionInfo = (ExtensionRegistry.ExtensionInfo) obj;
        if (!ExtensionRegistryLite.isEagerlyParseMessageSets()) {
            fieldSet.setField(extensionInfo.descriptor, new LazyField(extensionInfo.defaultInstance, extensionRegistryLite, reader.readBytes()));
            return;
        }
        fieldSet.setField(extensionInfo.descriptor, reader.readMessage(extensionInfo.defaultInstance.getClass(), extensionRegistryLite));
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    public final void parseMessageSetItem(ByteString byteString, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<Descriptors.FieldDescriptor> fieldSet) throws IOException {
        ExtensionRegistry.ExtensionInfo extensionInfo = (ExtensionRegistry.ExtensionInfo) obj;
        Message buildPartial = extensionInfo.defaultInstance.newBuilderForType().buildPartial();
        if (!ExtensionRegistryLite.isEagerlyParseMessageSets()) {
            fieldSet.setField(extensionInfo.descriptor, new LazyField(extensionInfo.defaultInstance, extensionRegistryLite, byteString));
            return;
        }
        BinaryReader newInstance = BinaryReader.newInstance(ByteBuffer.wrap(byteString.toByteArray()), true);
        Protobuf.getInstance().mergeFrom(buildPartial, newInstance, extensionRegistryLite);
        fieldSet.setField(extensionInfo.descriptor, buildPartial);
        if (newInstance.getFieldNumber() != Integer.MAX_VALUE) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    public final void serializeExtension(Writer writer, Map.Entry<?, ?> entry) throws IOException {
        Descriptors.FieldDescriptor fieldDescriptor = (Descriptors.FieldDescriptor) entry.getKey();
        if (!fieldDescriptor.isRepeated()) {
            switch (C97451.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldDescriptor.getLiteType().ordinal()]) {
                case 1:
                    writer.writeDouble(fieldDescriptor.getNumber(), ((Double) entry.getValue()).doubleValue());
                    return;
                case 2:
                    writer.writeFloat(fieldDescriptor.getNumber(), ((Float) entry.getValue()).floatValue());
                    return;
                case 3:
                    writer.writeInt64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 4:
                    writer.writeUInt64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 5:
                    writer.writeInt32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 6:
                    writer.writeFixed64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 7:
                    writer.writeFixed32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 8:
                    writer.writeBool(fieldDescriptor.getNumber(), ((Boolean) entry.getValue()).booleanValue());
                    return;
                case 9:
                    writer.writeUInt32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 10:
                    writer.writeSFixed32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 11:
                    writer.writeSFixed64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 12:
                    writer.writeSInt32(fieldDescriptor.getNumber(), ((Integer) entry.getValue()).intValue());
                    return;
                case 13:
                    writer.writeSInt64(fieldDescriptor.getNumber(), ((Long) entry.getValue()).longValue());
                    return;
                case 14:
                    writer.writeInt32(fieldDescriptor.getNumber(), ((Descriptors.EnumValueDescriptor) entry.getValue()).getNumber());
                    return;
                case 15:
                    writer.writeBytes(fieldDescriptor.getNumber(), (ByteString) entry.getValue());
                    return;
                case 16:
                    writer.writeString(fieldDescriptor.getNumber(), (String) entry.getValue());
                    return;
                case 17:
                    writer.writeGroup(fieldDescriptor.getNumber(), entry.getValue());
                    return;
                case 18:
                    writer.writeMessage(fieldDescriptor.getNumber(), entry.getValue());
                    return;
                default:
                    return;
            }
        }
        switch (C97451.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldDescriptor.getLiteType().ordinal()]) {
            case 1:
                SchemaUtil.writeDoubleList(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 2:
                SchemaUtil.writeFloatList(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 3:
                SchemaUtil.writeInt64List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 4:
                SchemaUtil.writeUInt64List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 5:
                SchemaUtil.writeInt32List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 6:
                SchemaUtil.writeFixed64List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 7:
                SchemaUtil.writeFixed32List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 8:
                SchemaUtil.writeBoolList(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 9:
                SchemaUtil.writeUInt32List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 10:
                SchemaUtil.writeSFixed32List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 11:
                SchemaUtil.writeSFixed64List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 12:
                SchemaUtil.writeSInt32List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 13:
                SchemaUtil.writeSInt64List(fieldDescriptor.getNumber(), (List) entry.getValue(), writer, fieldDescriptor.isPacked());
                return;
            case 14:
                List<Descriptors.EnumValueDescriptor> list = (List) entry.getValue();
                ArrayList arrayList = new ArrayList();
                for (Descriptors.EnumValueDescriptor enumValueDescriptor : list) {
                    arrayList.add(Integer.valueOf(enumValueDescriptor.getNumber()));
                }
                SchemaUtil.writeInt32List(fieldDescriptor.getNumber(), arrayList, writer, fieldDescriptor.isPacked());
                return;
            case 15:
                SchemaUtil.writeBytesList(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                return;
            case 16:
                SchemaUtil.writeStringList(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                return;
            case 17:
                SchemaUtil.writeGroupList(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                return;
            case 18:
                SchemaUtil.writeMessageList(fieldDescriptor.getNumber(), (List) entry.getValue(), writer);
                return;
            default:
                return;
        }
    }

    @Override // com.explorestack.protobuf.ExtensionSchema
    final void setExtensions(Object obj, FieldSet<Descriptors.FieldDescriptor> fieldSet) {
        UnsafeUtil.putObject(obj, EXTENSION_FIELD_OFFSET, fieldSet);
    }
}
