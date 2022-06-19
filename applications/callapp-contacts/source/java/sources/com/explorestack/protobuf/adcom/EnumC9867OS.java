package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* renamed from: com.explorestack.protobuf.adcom.OS */
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/OS.class */
public enum EnumC9867OS implements ProtocolMessageEnum {
    OS_INVALID(0),
    OS_ANDROID(2),
    OS_IOS(13),
    UNRECOGNIZED(-1);
    
    public static final int OS_ANDROID_VALUE = 2;
    public static final int OS_INVALID_VALUE = 0;
    public static final int OS_IOS_VALUE = 13;
    private final int value;
    private static final Internal.EnumLiteMap<EnumC9867OS> internalValueMap = new Internal.EnumLiteMap<EnumC9867OS>() { // from class: com.explorestack.protobuf.adcom.OS.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final EnumC9867OS findValueByNumber(int i) {
            return EnumC9867OS.forNumber(i);
        }
    };
    private static final EnumC9867OS[] VALUES = values();

    EnumC9867OS(int i) {
        this.value = i;
    }

    public static EnumC9867OS forNumber(int i) {
        if (i != 0) {
            if (i == 2) {
                return OS_ANDROID;
            }
            if (i == 13) {
                return OS_IOS;
            }
            return null;
        }
        return OS_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(22);
    }

    public static Internal.EnumLiteMap<EnumC9867OS> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static EnumC9867OS valueOf(int i) {
        return forNumber(i);
    }

    public static EnumC9867OS valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
