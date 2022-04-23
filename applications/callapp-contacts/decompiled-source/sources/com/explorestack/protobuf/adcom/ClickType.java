package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/ClickType.class */
public enum ClickType implements ProtocolMessageEnum {
    CLICK_TYPE_NON_CLICKABLE(0),
    CLICK_TYPE_CLICKABLE_UNKNOWN(1),
    CLICK_TYPE_CLICKABLE_EMBEDDED_BROWSER(2),
    CLICK_TYPE_CLICKABLE_NATIVE_BROWSER(3),
    UNRECOGNIZED(-1);
    
    public static final int CLICK_TYPE_CLICKABLE_EMBEDDED_BROWSER_VALUE = 2;
    public static final int CLICK_TYPE_CLICKABLE_NATIVE_BROWSER_VALUE = 3;
    public static final int CLICK_TYPE_CLICKABLE_UNKNOWN_VALUE = 1;
    public static final int CLICK_TYPE_NON_CLICKABLE_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<ClickType> internalValueMap = new Internal.EnumLiteMap<ClickType>() { // from class: com.explorestack.protobuf.adcom.ClickType.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final ClickType findValueByNumber(int i) {
            return ClickType.forNumber(i);
        }
    };
    private static final ClickType[] VALUES = values();

    ClickType(int i) {
        this.value = i;
    }

    public static ClickType forNumber(int i) {
        if (i == 0) {
            return CLICK_TYPE_NON_CLICKABLE;
        }
        if (i == 1) {
            return CLICK_TYPE_CLICKABLE_UNKNOWN;
        }
        if (i == 2) {
            return CLICK_TYPE_CLICKABLE_EMBEDDED_BROWSER;
        }
        if (i != 3) {
            return null;
        }
        return CLICK_TYPE_CLICKABLE_NATIVE_BROWSER;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(3);
    }

    public static Internal.EnumLiteMap<ClickType> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static ClickType valueOf(int i) {
        return forNumber(i);
    }

    public static ClickType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
