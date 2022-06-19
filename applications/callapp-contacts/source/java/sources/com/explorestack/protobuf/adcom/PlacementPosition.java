package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/PlacementPosition.class */
public enum PlacementPosition implements ProtocolMessageEnum {
    PLACEMENT_POSITION_INVALID(0),
    PLACEMENT_POSITION_ABOVE_THE_FOLD(1),
    PLACEMENT_POSITION_LOCKED(2),
    PLACEMENT_POSITION_BELOW_THE_FOLD(3),
    PLACEMENT_POSITION_HEADER(4),
    PLACEMENT_POSITION_FOOTER(5),
    PLACEMENT_POSITION_SIDEBAR(6),
    PLACEMENT_POSITION_FULLSCREEN(7),
    UNRECOGNIZED(-1);
    
    public static final int PLACEMENT_POSITION_ABOVE_THE_FOLD_VALUE = 1;
    public static final int PLACEMENT_POSITION_BELOW_THE_FOLD_VALUE = 3;
    public static final int PLACEMENT_POSITION_FOOTER_VALUE = 5;
    public static final int PLACEMENT_POSITION_FULLSCREEN_VALUE = 7;
    public static final int PLACEMENT_POSITION_HEADER_VALUE = 4;
    public static final int PLACEMENT_POSITION_INVALID_VALUE = 0;
    public static final int PLACEMENT_POSITION_LOCKED_VALUE = 2;
    public static final int PLACEMENT_POSITION_SIDEBAR_VALUE = 6;
    private final int value;
    private static final Internal.EnumLiteMap<PlacementPosition> internalValueMap = new Internal.EnumLiteMap<PlacementPosition>() { // from class: com.explorestack.protobuf.adcom.PlacementPosition.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final PlacementPosition findValueByNumber(int i) {
            return PlacementPosition.forNumber(i);
        }
    };
    private static final PlacementPosition[] VALUES = values();

    PlacementPosition(int i) {
        this.value = i;
    }

    public static PlacementPosition forNumber(int i) {
        switch (i) {
            case 0:
                return PLACEMENT_POSITION_INVALID;
            case 1:
                return PLACEMENT_POSITION_ABOVE_THE_FOLD;
            case 2:
                return PLACEMENT_POSITION_LOCKED;
            case 3:
                return PLACEMENT_POSITION_BELOW_THE_FOLD;
            case 4:
                return PLACEMENT_POSITION_HEADER;
            case 5:
                return PLACEMENT_POSITION_FOOTER;
            case 6:
                return PLACEMENT_POSITION_SIDEBAR;
            case 7:
                return PLACEMENT_POSITION_FULLSCREEN;
            default:
                return null;
        }
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(25);
    }

    public static Internal.EnumLiteMap<PlacementPosition> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static PlacementPosition valueOf(int i) {
        return forNumber(i);
    }

    public static PlacementPosition valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
