package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/EventTrackingMethod.class */
public enum EventTrackingMethod implements ProtocolMessageEnum {
    EVENT_TRACKING_METHOD_INVALID(0),
    EVENT_TRACKING_METHOD_IMAGE_PIXEL(1),
    EVENT_TRACKING_METHOD_JAVASCRIPT(2),
    UNRECOGNIZED(-1);
    
    public static final int EVENT_TRACKING_METHOD_IMAGE_PIXEL_VALUE = 1;
    public static final int EVENT_TRACKING_METHOD_INVALID_VALUE = 0;
    public static final int EVENT_TRACKING_METHOD_JAVASCRIPT_VALUE = 2;
    private final int value;
    private static final Internal.EnumLiteMap<EventTrackingMethod> internalValueMap = new Internal.EnumLiteMap<EventTrackingMethod>() { // from class: com.explorestack.protobuf.adcom.EventTrackingMethod.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final EventTrackingMethod findValueByNumber(int i) {
            return EventTrackingMethod.forNumber(i);
        }
    };
    private static final EventTrackingMethod[] VALUES = values();

    EventTrackingMethod(int i) {
        this.value = i;
    }

    public static EventTrackingMethod forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return EVENT_TRACKING_METHOD_IMAGE_PIXEL;
            }
            if (i == 2) {
                return EVENT_TRACKING_METHOD_JAVASCRIPT;
            }
            return null;
        }
        return EVENT_TRACKING_METHOD_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(14);
    }

    public static Internal.EnumLiteMap<EventTrackingMethod> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static EventTrackingMethod valueOf(int i) {
        return forNumber(i);
    }

    public static EventTrackingMethod valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
