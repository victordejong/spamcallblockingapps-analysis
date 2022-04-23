package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/OS.class */
public enum OS implements ProtocolMessageEnum {
    OS_INVALID(0),
    OS_ANDROID(2),
    OS_IOS(13),
    UNRECOGNIZED(-1);
    
    public static final int OS_ANDROID_VALUE = 2;
    public static final int OS_INVALID_VALUE = 0;
    public static final int OS_IOS_VALUE = 13;
    private final int value;
    private static final Internal.EnumLiteMap<OS> internalValueMap = new Internal.EnumLiteMap<OS>() { // from class: com.explorestack.protobuf.adcom.OS.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final OS findValueByNumber(int i) {
            return OS.forNumber(i);
        }
    };
    private static final OS[] VALUES = values();

    OS(int i) {
        this.value = i;
    }

    public static OS forNumber(int i) {
        if (i == 0) {
            return OS_INVALID;
        }
        if (i == 2) {
            return OS_ANDROID;
        }
        if (i != 13) {
            return null;
        }
        return OS_IOS;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(22);
    }

    public static Internal.EnumLiteMap<OS> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static OS valueOf(int i) {
        return forNumber(i);
    }

    public static OS valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
