package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/LinearityMode.class */
public enum LinearityMode implements ProtocolMessageEnum {
    LINEARITY_MODE_INVALID(0),
    LINEARITY_MODE_LINEAR(1),
    LINEARITY_MODE_NON_LINEAR(2),
    UNRECOGNIZED(-1);
    
    public static final int LINEARITY_MODE_INVALID_VALUE = 0;
    public static final int LINEARITY_MODE_LINEAR_VALUE = 1;
    public static final int LINEARITY_MODE_NON_LINEAR_VALUE = 2;
    private final int value;
    private static final Internal.EnumLiteMap<LinearityMode> internalValueMap = new Internal.EnumLiteMap<LinearityMode>() { // from class: com.explorestack.protobuf.adcom.LinearityMode.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final LinearityMode findValueByNumber(int i) {
            return LinearityMode.forNumber(i);
        }
    };
    private static final LinearityMode[] VALUES = values();

    LinearityMode(int i) {
        this.value = i;
    }

    public static LinearityMode forNumber(int i) {
        if (i == 0) {
            return LINEARITY_MODE_INVALID;
        }
        if (i == 1) {
            return LINEARITY_MODE_LINEAR;
        }
        if (i != 2) {
            return null;
        }
        return LINEARITY_MODE_NON_LINEAR;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(17);
    }

    public static Internal.EnumLiteMap<LinearityMode> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static LinearityMode valueOf(int i) {
        return forNumber(i);
    }

    public static LinearityMode valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
