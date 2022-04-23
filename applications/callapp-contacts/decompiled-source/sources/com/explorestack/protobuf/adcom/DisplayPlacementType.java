package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/DisplayPlacementType.class */
public enum DisplayPlacementType implements ProtocolMessageEnum {
    DISPLAY_PLACEMENT_TYPE_INVALID(0),
    DISPLAY_PLACEMENT_TYPE_IN_FEED_DISPLAY(1),
    DISPLAY_PLACEMENT_TYPE_IN_ATOMIC_UNIT(2),
    DISPLAY_PLACEMENT_TYPE_OUTSIDE_CORE_CONTENT(3),
    DISPLAY_PLACEMENT_TYPE_RECOMMENDATION_WIDGET(4),
    UNRECOGNIZED(-1);
    
    public static final int DISPLAY_PLACEMENT_TYPE_INVALID_VALUE = 0;
    public static final int DISPLAY_PLACEMENT_TYPE_IN_ATOMIC_UNIT_VALUE = 2;
    public static final int DISPLAY_PLACEMENT_TYPE_IN_FEED_DISPLAY_VALUE = 1;
    public static final int DISPLAY_PLACEMENT_TYPE_OUTSIDE_CORE_CONTENT_VALUE = 3;
    public static final int DISPLAY_PLACEMENT_TYPE_RECOMMENDATION_WIDGET_VALUE = 4;
    private final int value;
    private static final Internal.EnumLiteMap<DisplayPlacementType> internalValueMap = new Internal.EnumLiteMap<DisplayPlacementType>() { // from class: com.explorestack.protobuf.adcom.DisplayPlacementType.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final DisplayPlacementType findValueByNumber(int i) {
            return DisplayPlacementType.forNumber(i);
        }
    };
    private static final DisplayPlacementType[] VALUES = values();

    DisplayPlacementType(int i) {
        this.value = i;
    }

    public static DisplayPlacementType forNumber(int i) {
        if (i == 0) {
            return DISPLAY_PLACEMENT_TYPE_INVALID;
        }
        if (i == 1) {
            return DISPLAY_PLACEMENT_TYPE_IN_FEED_DISPLAY;
        }
        if (i == 2) {
            return DISPLAY_PLACEMENT_TYPE_IN_ATOMIC_UNIT;
        }
        if (i == 3) {
            return DISPLAY_PLACEMENT_TYPE_OUTSIDE_CORE_CONTENT;
        }
        if (i != 4) {
            return null;
        }
        return DISPLAY_PLACEMENT_TYPE_RECOMMENDATION_WIDGET;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(12);
    }

    public static Internal.EnumLiteMap<DisplayPlacementType> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static DisplayPlacementType valueOf(int i) {
        return forNumber(i);
    }

    public static DisplayPlacementType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
