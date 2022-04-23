package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.StructuralMessageInfo;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/DescriptorMessageInfoFactory.class */
public final class DescriptorMessageInfoFactory implements MessageInfoFactory {
    private static final String GET_DEFAULT_INSTANCE_METHOD_NAME = "getDefaultInstance";
    private static final DescriptorMessageInfoFactory instance = new DescriptorMessageInfoFactory();
    private static final Set<String> specialFieldNames = new HashSet(Arrays.asList("cached_size", "serialized_size", "class"));
    private static IsInitializedCheckAnalyzer isInitializedCheckAnalyzer = new IsInitializedCheckAnalyzer();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.protobuf.DescriptorMessageInfoFactory$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/DescriptorMessageInfoFactory$3.class */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type;
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax;
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$JavaType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x016c -> B:132:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0170 -> B:128:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0174 -> B:140:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0178 -> B:136:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x017c -> B:148:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0180 -> B:144:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0184 -> B:98:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0188 -> B:94:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x018c -> B:106:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x0190 -> B:102:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0194 -> B:114:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0198 -> B:110:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x019c -> B:118:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x01a0 -> B:116:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x01a4 -> B:124:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x01a8 -> B:120:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01ac -> B:130:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x01b0 -> B:38:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x01b4 -> B:138:0x00f0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x01b8 -> B:134:0x00fb). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x01bc -> B:146:0x0106). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x01c0 -> B:142:0x0111). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x01c4 -> B:96:0x011c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x01c8 -> B:92:0x0128). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x01cc -> B:104:0x0134). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x01d0 -> B:100:0x0140). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x01d4 -> B:57:0x014c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x01d8 -> B:108:0x0160). Please submit an issue!!! */
        static {
            int[] iArr = new int[Descriptors.FieldDescriptor.Type.values().length];
            $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type = iArr;
            try {
                iArr[Descriptors.FieldDescriptor.Type.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.GROUP.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.INT32.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.INT64.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.MESSAGE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.UINT32.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[Descriptors.FieldDescriptor.Type.UINT64.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            int[] iArr2 = new int[JavaType.values().length];
            $SwitchMap$com$google$protobuf$JavaType = iArr2;
            try {
                iArr2[JavaType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$google$protobuf$JavaType[JavaType.BYTE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$com$google$protobuf$JavaType[JavaType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$com$google$protobuf$JavaType[JavaType.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$com$google$protobuf$JavaType[JavaType.ENUM.ordinal()] = 5;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$com$google$protobuf$JavaType[JavaType.INT.ordinal()] = 6;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$com$google$protobuf$JavaType[JavaType.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError e25) {
            }
            try {
                $SwitchMap$com$google$protobuf$JavaType[JavaType.STRING.ordinal()] = 8;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$com$google$protobuf$JavaType[JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError e27) {
            }
            int[] iArr3 = new int[Descriptors.FileDescriptor.Syntax.values().length];
            $SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax = iArr3;
            try {
                iArr3[Descriptors.FileDescriptor.Syntax.PROTO2.ordinal()] = 1;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax[Descriptors.FileDescriptor.Syntax.PROTO3.ordinal()] = 2;
            } catch (NoSuchFieldError e29) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer.class */
    public static class IsInitializedCheckAnalyzer {
        private final Map<Descriptors.Descriptor, Boolean> resultCache = new ConcurrentHashMap();
        private int index = 0;
        private final Stack<Node> stack = new Stack<>();
        private final Map<Descriptors.Descriptor, Node> nodeCache = new HashMap();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$Node.class */
        public static class Node {
            StronglyConnectedComponent component = null;
            final Descriptors.Descriptor descriptor;
            final int index;
            int lowLink;

            Node(Descriptors.Descriptor descriptor, int i) {
                this.descriptor = descriptor;
                this.index = i;
                this.lowLink = i;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/DescriptorMessageInfoFactory$IsInitializedCheckAnalyzer$StronglyConnectedComponent.class */
        public static class StronglyConnectedComponent {
            final List<Descriptors.Descriptor> messages;
            boolean needsIsInitializedCheck;

            private StronglyConnectedComponent() {
                this.messages = new ArrayList();
                this.needsIsInitializedCheck = false;
            }
        }

        IsInitializedCheckAnalyzer() {
        }

        private void analyze(StronglyConnectedComponent stronglyConnectedComponent) {
            boolean z;
            Iterator<Descriptors.Descriptor> it2 = stronglyConnectedComponent.messages.iterator();
            loop0: while (true) {
                z = true;
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                Descriptors.Descriptor next = it2.next();
                if (next.isExtendable()) {
                    break;
                }
                for (Descriptors.FieldDescriptor fieldDescriptor : next.getFields()) {
                    if (fieldDescriptor.isRequired()) {
                        break loop0;
                    } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                        Node node = this.nodeCache.get(fieldDescriptor.getMessageType());
                        if (node.component != stronglyConnectedComponent && node.component.needsIsInitializedCheck) {
                            break loop0;
                        }
                    }
                }
            }
            stronglyConnectedComponent.needsIsInitializedCheck = z;
            for (Descriptors.Descriptor descriptor : stronglyConnectedComponent.messages) {
                this.resultCache.put(descriptor, Boolean.valueOf(stronglyConnectedComponent.needsIsInitializedCheck));
            }
        }

        private Node dfs(Descriptors.Descriptor descriptor) {
            Node pop;
            int i = this.index;
            this.index = i + 1;
            Node node = new Node(descriptor, i);
            this.stack.push(node);
            this.nodeCache.put(descriptor, node);
            for (Descriptors.FieldDescriptor fieldDescriptor : descriptor.getFields()) {
                if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    Node node2 = this.nodeCache.get(fieldDescriptor.getMessageType());
                    if (node2 == null) {
                        node.lowLink = Math.min(node.lowLink, dfs(fieldDescriptor.getMessageType()).lowLink);
                    } else if (node2.component == null) {
                        node.lowLink = Math.min(node.lowLink, node2.lowLink);
                    }
                }
            }
            if (node.index == node.lowLink) {
                StronglyConnectedComponent stronglyConnectedComponent = new StronglyConnectedComponent();
                do {
                    pop = this.stack.pop();
                    pop.component = stronglyConnectedComponent;
                    stronglyConnectedComponent.messages.add(pop.descriptor);
                } while (pop != node);
                analyze(stronglyConnectedComponent);
            }
            return node;
        }

        public boolean needsIsInitializedCheck(Descriptors.Descriptor descriptor) {
            Boolean bool = this.resultCache.get(descriptor);
            if (bool != null) {
                return bool.booleanValue();
            }
            synchronized (this) {
                Boolean bool2 = this.resultCache.get(descriptor);
                if (bool2 != null) {
                    return bool2.booleanValue();
                }
                return dfs(descriptor).component.needsIsInitializedCheck;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/DescriptorMessageInfoFactory$OneofState.class */
    public static final class OneofState {
        private OneofInfo[] oneofs;

        private OneofState() {
            this.oneofs = new OneofInfo[2];
        }

        private static OneofInfo newInfo(Class<?> cls, Descriptors.OneofDescriptor oneofDescriptor) {
            String snakeCaseToCamelCase = DescriptorMessageInfoFactory.snakeCaseToCamelCase(oneofDescriptor.getName());
            return new OneofInfo(oneofDescriptor.getIndex(), DescriptorMessageInfoFactory.field(cls, snakeCaseToCamelCase + "Case_"), DescriptorMessageInfoFactory.field(cls, snakeCaseToCamelCase + "_"));
        }

        final OneofInfo getOneof(Class<?> cls, Descriptors.OneofDescriptor oneofDescriptor) {
            int index = oneofDescriptor.getIndex();
            OneofInfo[] oneofInfoArr = this.oneofs;
            if (index >= oneofInfoArr.length) {
                this.oneofs = (OneofInfo[]) Arrays.copyOf(oneofInfoArr, index * 2);
            }
            OneofInfo oneofInfo = this.oneofs[index];
            OneofInfo oneofInfo2 = oneofInfo;
            if (oneofInfo == null) {
                oneofInfo2 = newInfo(cls, oneofDescriptor);
                this.oneofs[index] = oneofInfo2;
            }
            return oneofInfo2;
        }
    }

    private DescriptorMessageInfoFactory() {
    }

    private static Field bitField(Class<?> cls, int i) {
        return field(cls, "bitField" + i + "_");
    }

    private static FieldInfo buildOneofMember(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor, OneofState oneofState, boolean z, Internal.EnumVerifier enumVerifier) {
        OneofInfo oneof = oneofState.getOneof(cls, fieldDescriptor.getContainingOneof());
        FieldType fieldType = getFieldType(fieldDescriptor);
        return FieldInfo.forOneofMemberField(fieldDescriptor.getNumber(), fieldType, oneof, getOneofStoredType(cls, fieldDescriptor, fieldType), z, enumVerifier);
    }

    private static Field cachedSizeField(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        return field(cls, getCachedSizeFieldName(fieldDescriptor));
    }

    private static MessageInfo convert(Class<?> cls, Descriptors.Descriptor descriptor) {
        int i = AnonymousClass3.$SwitchMap$com$google$protobuf$Descriptors$FileDescriptor$Syntax[descriptor.getFile().getSyntax().ordinal()];
        if (i == 1) {
            return convertProto2(cls, descriptor);
        }
        if (i == 2) {
            return convertProto3(cls, descriptor);
        }
        throw new IllegalArgumentException("Unsupported syntax: " + descriptor.getFile().getSyntax());
    }

    private static StructuralMessageInfo convertProto2(Class<?> cls, Descriptors.Descriptor descriptor) {
        List<Descriptors.FieldDescriptor> fields = descriptor.getFields();
        StructuralMessageInfo.Builder newBuilder = StructuralMessageInfo.newBuilder(fields.size());
        newBuilder.withDefaultInstance(getDefaultInstance(cls));
        newBuilder.withSyntax(ProtoSyntax.PROTO2);
        newBuilder.withMessageSetWireFormat(descriptor.getOptions().getMessageSetWireFormat());
        OneofState oneofState = new OneofState();
        Field field = null;
        int i = 0;
        int i2 = 1;
        for (int i3 = 0; i3 < fields.size(); i3++) {
            final Descriptors.FieldDescriptor fieldDescriptor = fields.get(i3);
            boolean javaStringCheckUtf8 = fieldDescriptor.getFile().getOptions().getJavaStringCheckUtf8();
            Internal.EnumVerifier enumVerifier = fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM ? new Internal.EnumVerifier() { // from class: com.explorestack.protobuf.DescriptorMessageInfoFactory.1
                @Override // com.explorestack.protobuf.Internal.EnumVerifier
                public final boolean isInRange(int i4) {
                    return Descriptors.FieldDescriptor.this.getEnumType().findValueByNumber(i4) != null;
                }
            } : null;
            if (fieldDescriptor.getContainingOneof() != null) {
                newBuilder.withField(buildOneofMember(cls, fieldDescriptor, oneofState, javaStringCheckUtf8, enumVerifier));
            } else {
                Field field2 = field(cls, fieldDescriptor);
                int number = fieldDescriptor.getNumber();
                FieldType fieldType = getFieldType(fieldDescriptor);
                if (fieldDescriptor.isMapField()) {
                    final Descriptors.FieldDescriptor findFieldByNumber = fieldDescriptor.getMessageType().findFieldByNumber(2);
                    if (findFieldByNumber.getJavaType() == Descriptors.FieldDescriptor.JavaType.ENUM) {
                        enumVerifier = new Internal.EnumVerifier() { // from class: com.explorestack.protobuf.DescriptorMessageInfoFactory.2
                            @Override // com.explorestack.protobuf.Internal.EnumVerifier
                            public final boolean isInRange(int i4) {
                                return Descriptors.FieldDescriptor.this.getEnumType().findValueByNumber(i4) != null;
                            }
                        };
                    }
                    newBuilder.withField(FieldInfo.forMapField(field2, number, SchemaUtil.getMapDefaultEntry(cls, fieldDescriptor.getName()), enumVerifier));
                    i = i;
                } else if (!fieldDescriptor.isRepeated()) {
                    Field field3 = field;
                    if (field == null) {
                        field3 = bitField(cls, i);
                    }
                    if (fieldDescriptor.isRequired()) {
                        newBuilder.withField(FieldInfo.forProto2RequiredField(field2, number, fieldType, field3, i2, javaStringCheckUtf8, enumVerifier));
                        field = field3;
                    } else {
                        newBuilder.withField(FieldInfo.forProto2OptionalField(field2, number, fieldType, field3, i2, javaStringCheckUtf8, enumVerifier));
                        field = field3;
                    }
                } else if (enumVerifier != null) {
                    if (fieldDescriptor.isPacked()) {
                        newBuilder.withField(FieldInfo.forPackedFieldWithEnumVerifier(field2, number, fieldType, enumVerifier, cachedSizeField(cls, fieldDescriptor)));
                        i = i;
                    } else {
                        newBuilder.withField(FieldInfo.forFieldWithEnumVerifier(field2, number, fieldType, enumVerifier));
                        i = i;
                    }
                } else if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                    newBuilder.withField(FieldInfo.forRepeatedMessageField(field2, number, fieldType, getTypeForRepeatedMessageField(cls, fieldDescriptor)));
                    i = i;
                } else if (fieldDescriptor.isPacked()) {
                    newBuilder.withField(FieldInfo.forPackedField(field2, number, fieldType, cachedSizeField(cls, fieldDescriptor)));
                    i = i;
                } else {
                    newBuilder.withField(FieldInfo.forField(field2, number, fieldType, javaStringCheckUtf8));
                    i = i;
                }
            }
            int i4 = i2 << 1;
            i = i;
            i2 = i4;
            if (i4 == 0) {
                i++;
                field = null;
                i2 = 1;
            }
        }
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < fields.size(); i5++) {
            Descriptors.FieldDescriptor fieldDescriptor2 = fields.get(i5);
            if (fieldDescriptor2.isRequired() || (fieldDescriptor2.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE && needsIsInitializedCheck(fieldDescriptor2.getMessageType()))) {
                arrayList.add(Integer.valueOf(fieldDescriptor2.getNumber()));
            }
        }
        int[] iArr = new int[arrayList.size()];
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            iArr[i6] = ((Integer) arrayList.get(i6)).intValue();
        }
        newBuilder.withCheckInitialized(iArr);
        return newBuilder.build();
    }

    private static StructuralMessageInfo convertProto3(Class<?> cls, Descriptors.Descriptor descriptor) {
        List<Descriptors.FieldDescriptor> fields = descriptor.getFields();
        StructuralMessageInfo.Builder newBuilder = StructuralMessageInfo.newBuilder(fields.size());
        newBuilder.withDefaultInstance(getDefaultInstance(cls));
        newBuilder.withSyntax(ProtoSyntax.PROTO3);
        OneofState oneofState = new OneofState();
        for (int i = 0; i < fields.size(); i++) {
            Descriptors.FieldDescriptor fieldDescriptor = fields.get(i);
            if (fieldDescriptor.getContainingOneof() != null) {
                newBuilder.withField(buildOneofMember(cls, fieldDescriptor, oneofState, true, null));
            } else if (fieldDescriptor.isMapField()) {
                newBuilder.withField(FieldInfo.forMapField(field(cls, fieldDescriptor), fieldDescriptor.getNumber(), SchemaUtil.getMapDefaultEntry(cls, fieldDescriptor.getName()), null));
            } else if (fieldDescriptor.isRepeated() && fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                newBuilder.withField(FieldInfo.forRepeatedMessageField(field(cls, fieldDescriptor), fieldDescriptor.getNumber(), getFieldType(fieldDescriptor), getTypeForRepeatedMessageField(cls, fieldDescriptor)));
            } else if (fieldDescriptor.isPacked()) {
                newBuilder.withField(FieldInfo.forPackedField(field(cls, fieldDescriptor), fieldDescriptor.getNumber(), getFieldType(fieldDescriptor), cachedSizeField(cls, fieldDescriptor)));
            } else {
                newBuilder.withField(FieldInfo.forField(field(cls, fieldDescriptor), fieldDescriptor.getNumber(), getFieldType(fieldDescriptor), true));
            }
        }
        return newBuilder.build();
    }

    private static Descriptors.Descriptor descriptorForType(Class<?> cls) {
        return getDefaultInstance(cls).getDescriptorForType();
    }

    private static Field field(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        return field(cls, getFieldName(fieldDescriptor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Field field(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Exception e) {
            throw new IllegalArgumentException("Unable to find field " + str + " in message class " + cls.getName());
        }
    }

    private static String getCachedSizeFieldName(Descriptors.FieldDescriptor fieldDescriptor) {
        return snakeCaseToCamelCase(fieldDescriptor.getName()) + "MemoizedSerializedSize";
    }

    private static Message getDefaultInstance(Class<?> cls) {
        try {
            return (Message) cls.getDeclaredMethod(GET_DEFAULT_INSTANCE_METHOD_NAME, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            throw new IllegalArgumentException("Unable to get default instance for message class " + cls.getName(), e);
        }
    }

    static String getFieldName(Descriptors.FieldDescriptor fieldDescriptor) {
        String name = fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP ? fieldDescriptor.getMessageType().getName() : fieldDescriptor.getName();
        String str = specialFieldNames.contains(name) ? "__" : "_";
        return snakeCaseToCamelCase(name) + str;
    }

    private static FieldType getFieldType(Descriptors.FieldDescriptor fieldDescriptor) {
        switch (AnonymousClass3.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[fieldDescriptor.getType().ordinal()]) {
            case 1:
                return !fieldDescriptor.isRepeated() ? FieldType.BOOL : fieldDescriptor.isPacked() ? FieldType.BOOL_LIST_PACKED : FieldType.BOOL_LIST;
            case 2:
                return fieldDescriptor.isRepeated() ? FieldType.BYTES_LIST : FieldType.BYTES;
            case 3:
                return !fieldDescriptor.isRepeated() ? FieldType.DOUBLE : fieldDescriptor.isPacked() ? FieldType.DOUBLE_LIST_PACKED : FieldType.DOUBLE_LIST;
            case 4:
                return !fieldDescriptor.isRepeated() ? FieldType.ENUM : fieldDescriptor.isPacked() ? FieldType.ENUM_LIST_PACKED : FieldType.ENUM_LIST;
            case 5:
                return !fieldDescriptor.isRepeated() ? FieldType.FIXED32 : fieldDescriptor.isPacked() ? FieldType.FIXED32_LIST_PACKED : FieldType.FIXED32_LIST;
            case 6:
                return !fieldDescriptor.isRepeated() ? FieldType.FIXED64 : fieldDescriptor.isPacked() ? FieldType.FIXED64_LIST_PACKED : FieldType.FIXED64_LIST;
            case 7:
                return !fieldDescriptor.isRepeated() ? FieldType.FLOAT : fieldDescriptor.isPacked() ? FieldType.FLOAT_LIST_PACKED : FieldType.FLOAT_LIST;
            case 8:
                return fieldDescriptor.isRepeated() ? FieldType.GROUP_LIST : FieldType.GROUP;
            case 9:
                return !fieldDescriptor.isRepeated() ? FieldType.INT32 : fieldDescriptor.isPacked() ? FieldType.INT32_LIST_PACKED : FieldType.INT32_LIST;
            case 10:
                return !fieldDescriptor.isRepeated() ? FieldType.INT64 : fieldDescriptor.isPacked() ? FieldType.INT64_LIST_PACKED : FieldType.INT64_LIST;
            case 11:
                return fieldDescriptor.isMapField() ? FieldType.MAP : fieldDescriptor.isRepeated() ? FieldType.MESSAGE_LIST : FieldType.MESSAGE;
            case 12:
                return !fieldDescriptor.isRepeated() ? FieldType.SFIXED32 : fieldDescriptor.isPacked() ? FieldType.SFIXED32_LIST_PACKED : FieldType.SFIXED32_LIST;
            case 13:
                return !fieldDescriptor.isRepeated() ? FieldType.SFIXED64 : fieldDescriptor.isPacked() ? FieldType.SFIXED64_LIST_PACKED : FieldType.SFIXED64_LIST;
            case 14:
                return !fieldDescriptor.isRepeated() ? FieldType.SINT32 : fieldDescriptor.isPacked() ? FieldType.SINT32_LIST_PACKED : FieldType.SINT32_LIST;
            case 15:
                return !fieldDescriptor.isRepeated() ? FieldType.SINT64 : fieldDescriptor.isPacked() ? FieldType.SINT64_LIST_PACKED : FieldType.SINT64_LIST;
            case 16:
                return fieldDescriptor.isRepeated() ? FieldType.STRING_LIST : FieldType.STRING;
            case 17:
                return !fieldDescriptor.isRepeated() ? FieldType.UINT32 : fieldDescriptor.isPacked() ? FieldType.UINT32_LIST_PACKED : FieldType.UINT32_LIST;
            case 18:
                return !fieldDescriptor.isRepeated() ? FieldType.UINT64 : fieldDescriptor.isPacked() ? FieldType.UINT64_LIST_PACKED : FieldType.UINT64_LIST;
            default:
                throw new IllegalArgumentException("Unsupported field type: " + fieldDescriptor.getType());
        }
    }

    public static DescriptorMessageInfoFactory getInstance() {
        return instance;
    }

    private static Class<?> getOneofStoredType(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor, FieldType fieldType) {
        switch (AnonymousClass3.$SwitchMap$com$google$protobuf$JavaType[fieldType.getJavaType().ordinal()]) {
            case 1:
                return Boolean.class;
            case 2:
                return ByteString.class;
            case 3:
                return Double.class;
            case 4:
                return Float.class;
            case 5:
            case 6:
                return Integer.class;
            case 7:
                return Long.class;
            case 8:
                return String.class;
            case 9:
                return getOneofStoredTypeForMessage(cls, fieldDescriptor);
            default:
                throw new IllegalArgumentException("Invalid type for oneof: ".concat(String.valueOf(fieldType)));
        }
    }

    private static Class<?> getOneofStoredTypeForMessage(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        try {
            return cls.getDeclaredMethod(getterForField(fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP ? fieldDescriptor.getMessageType().getName() : fieldDescriptor.getName()), new Class[0]).getReturnType();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static Class<?> getTypeForRepeatedMessageField(Class<?> cls, Descriptors.FieldDescriptor fieldDescriptor) {
        try {
            return cls.getDeclaredMethod(getterForField(fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP ? fieldDescriptor.getMessageType().getName() : fieldDescriptor.getName()), Integer.TYPE).getReturnType();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static String getterForField(String str) {
        String snakeCaseToCamelCase = snakeCaseToCamelCase(str);
        return "get" + Character.toUpperCase(snakeCaseToCamelCase.charAt(0)) + snakeCaseToCamelCase.substring(1, snakeCaseToCamelCase.length());
    }

    private static boolean needsIsInitializedCheck(Descriptors.Descriptor descriptor) {
        return isInitializedCheckAnalyzer.needsIsInitializedCheck(descriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String snakeCaseToCamelCase(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 1);
        boolean z = false;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != '_') {
                if (Character.isDigit(charAt)) {
                    sb.append(charAt);
                } else {
                    if (z) {
                        sb.append(Character.toUpperCase(charAt));
                        z = false;
                    } else if (i == 0) {
                        sb.append(Character.toLowerCase(charAt));
                    } else {
                        sb.append(charAt);
                    }
                }
            }
            z = true;
        }
        return sb.toString();
    }

    @Override // com.explorestack.protobuf.MessageInfoFactory
    public final boolean isSupported(Class<?> cls) {
        return GeneratedMessageV3.class.isAssignableFrom(cls);
    }

    @Override // com.explorestack.protobuf.MessageInfoFactory
    public final MessageInfo messageInfoFor(Class<?> cls) {
        if (GeneratedMessageV3.class.isAssignableFrom(cls)) {
            return convert(cls, descriptorForType(cls));
        }
        throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
    }
}
