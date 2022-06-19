package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/CompanionType.class */
public enum CompanionType implements ProtocolMessageEnum {
    COMPANION_TYPE_INVALID(0),
    COMPANION_TYPE_STATIC_RESOURCE(1),
    COMPANION_TYPE_HTML_RESOURCE(2),
    COMPANION_TYPE_IFRAME_RESOURCE(3),
    UNRECOGNIZED(-1);
    
    public static final int COMPANION_TYPE_HTML_RESOURCE_VALUE = 2;
    public static final int COMPANION_TYPE_IFRAME_RESOURCE_VALUE = 3;
    public static final int COMPANION_TYPE_INVALID_VALUE = 0;
    public static final int COMPANION_TYPE_STATIC_RESOURCE_VALUE = 1;
    private final int value;
    private static final Internal.EnumLiteMap<CompanionType> internalValueMap = new Internal.EnumLiteMap<CompanionType>() { // from class: com.explorestack.protobuf.adcom.CompanionType.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final CompanionType findValueByNumber(int i) {
            return CompanionType.forNumber(i);
        }
    };
    private static final CompanionType[] VALUES = values();

    CompanionType(int i) {
        this.value = i;
    }

    public static CompanionType forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return COMPANION_TYPE_STATIC_RESOURCE;
            }
            if (i == 2) {
                return COMPANION_TYPE_HTML_RESOURCE;
            }
            if (i == 3) {
                return COMPANION_TYPE_IFRAME_RESOURCE;
            }
            return null;
        }
        return COMPANION_TYPE_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(4);
    }

    public static Internal.EnumLiteMap<CompanionType> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static CompanionType valueOf(int i) {
        return forNumber(i);
    }

    public static CompanionType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            return enumValueDescriptor.getIndex() == -1 ? UNRECOGNIZED : VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }

    @Override // com.explorestack.protobuf.ProtocolMessageEnum
    public final Descriptors.EnumDescriptor getDescriptorForType() {
        return getDescriptor();
    }

    @Override // com.explorestack.protobuf.ProtocolMessageEnum, com.explorestack.protobuf.Internal.EnumLite
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // com.explorestack.protobuf.ProtocolMessageEnum
    public final Descriptors.EnumValueDescriptor getValueDescriptor() {
        return getDescriptor().getValues().get(ordinal());
    }
}
