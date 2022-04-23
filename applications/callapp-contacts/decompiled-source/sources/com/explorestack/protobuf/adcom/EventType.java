package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/EventType.class */
public enum EventType implements ProtocolMessageEnum {
    EVENT_TYPE_INVALID(0),
    EVENT_TYPE_IMPRESSION(1),
    EVENT_TYPE_VIEWABLE_MRC_50(2),
    EVENT_TYPE_VIEWABLE_MRC_100(3),
    EVENT_TYPE_VIEWABLE_VIDEO_50(4),
    UNRECOGNIZED(-1);
    
    public static final int EVENT_TYPE_IMPRESSION_VALUE = 1;
    public static final int EVENT_TYPE_INVALID_VALUE = 0;
    public static final int EVENT_TYPE_VIEWABLE_MRC_100_VALUE = 3;
    public static final int EVENT_TYPE_VIEWABLE_MRC_50_VALUE = 2;
    public static final int EVENT_TYPE_VIEWABLE_VIDEO_50_VALUE = 4;
    private final int value;
    private static final Internal.EnumLiteMap<EventType> internalValueMap = new Internal.EnumLiteMap<EventType>() { // from class: com.explorestack.protobuf.adcom.EventType.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final EventType findValueByNumber(int i) {
            return EventType.forNumber(i);
        }
    };
    private static final EventType[] VALUES = values();

    EventType(int i) {
        this.value = i;
    }

    public static EventType forNumber(int i) {
        if (i == 0) {
            return EVENT_TYPE_INVALID;
        }
        if (i == 1) {
            return EVENT_TYPE_IMPRESSION;
        }
        if (i == 2) {
            return EVENT_TYPE_VIEWABLE_MRC_50;
        }
        if (i == 3) {
            return EVENT_TYPE_VIEWABLE_MRC_100;
        }
        if (i != 4) {
            return null;
        }
        return EVENT_TYPE_VIEWABLE_VIDEO_50;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(15);
    }

    public static Internal.EnumLiteMap<EventType> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static EventType valueOf(int i) {
        return forNumber(i);
    }

    public static EventType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
