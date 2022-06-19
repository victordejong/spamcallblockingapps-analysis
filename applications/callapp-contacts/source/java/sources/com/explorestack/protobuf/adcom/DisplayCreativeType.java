package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/DisplayCreativeType.class */
public enum DisplayCreativeType implements ProtocolMessageEnum {
    DISPLAY_CREATIVE_TYPE_INVALID(0),
    DISPLAY_CREATIVE_TYPE_HTML(1),
    DISPLAY_CREATIVE_TYPE_AMPHTML(2),
    DISPLAY_CREATIVE_TYPE_IMAGE_OBJECT(3),
    DISPLAY_CREATIVE_TYPE_NATIVE_OBJECT(4),
    UNRECOGNIZED(-1);
    
    public static final int DISPLAY_CREATIVE_TYPE_AMPHTML_VALUE = 2;
    public static final int DISPLAY_CREATIVE_TYPE_HTML_VALUE = 1;
    public static final int DISPLAY_CREATIVE_TYPE_IMAGE_OBJECT_VALUE = 3;
    public static final int DISPLAY_CREATIVE_TYPE_INVALID_VALUE = 0;
    public static final int DISPLAY_CREATIVE_TYPE_NATIVE_OBJECT_VALUE = 4;
    private final int value;
    private static final Internal.EnumLiteMap<DisplayCreativeType> internalValueMap = new Internal.EnumLiteMap<DisplayCreativeType>() { // from class: com.explorestack.protobuf.adcom.DisplayCreativeType.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final DisplayCreativeType findValueByNumber(int i) {
            return DisplayCreativeType.forNumber(i);
        }
    };
    private static final DisplayCreativeType[] VALUES = values();

    DisplayCreativeType(int i) {
        this.value = i;
    }

    public static DisplayCreativeType forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return DISPLAY_CREATIVE_TYPE_HTML;
            }
            if (i == 2) {
                return DISPLAY_CREATIVE_TYPE_AMPHTML;
            }
            if (i == 3) {
                return DISPLAY_CREATIVE_TYPE_IMAGE_OBJECT;
            }
            if (i == 4) {
                return DISPLAY_CREATIVE_TYPE_NATIVE_OBJECT;
            }
            return null;
        }
        return DISPLAY_CREATIVE_TYPE_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(11);
    }

    public static Internal.EnumLiteMap<DisplayCreativeType> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static DisplayCreativeType valueOf(int i) {
        return forNumber(i);
    }

    public static DisplayCreativeType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
