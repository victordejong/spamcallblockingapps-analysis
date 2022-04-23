package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/SizeUnit.class */
public enum SizeUnit implements ProtocolMessageEnum {
    SIZE_UNIT_INVALID(0),
    SIZE_UNIT_DIPS(1),
    SIZE_UNIT_INCHES(2),
    SIZE_UNIT_CENTIMETERS(3),
    UNRECOGNIZED(-1);
    
    public static final int SIZE_UNIT_CENTIMETERS_VALUE = 3;
    public static final int SIZE_UNIT_DIPS_VALUE = 1;
    public static final int SIZE_UNIT_INCHES_VALUE = 2;
    public static final int SIZE_UNIT_INVALID_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<SizeUnit> internalValueMap = new Internal.EnumLiteMap<SizeUnit>() { // from class: com.explorestack.protobuf.adcom.SizeUnit.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final SizeUnit findValueByNumber(int i) {
            return SizeUnit.forNumber(i);
        }
    };
    private static final SizeUnit[] VALUES = values();

    SizeUnit(int i) {
        this.value = i;
    }

    public static SizeUnit forNumber(int i) {
        if (i == 0) {
            return SIZE_UNIT_INVALID;
        }
        if (i == 1) {
            return SIZE_UNIT_DIPS;
        }
        if (i == 2) {
            return SIZE_UNIT_INCHES;
        }
        if (i != 3) {
            return null;
        }
        return SIZE_UNIT_CENTIMETERS;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(27);
    }

    public static Internal.EnumLiteMap<SizeUnit> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static SizeUnit valueOf(int i) {
        return forNumber(i);
    }

    public static SizeUnit valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
