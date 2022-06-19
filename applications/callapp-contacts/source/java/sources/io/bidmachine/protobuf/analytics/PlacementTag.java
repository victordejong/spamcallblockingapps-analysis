package io.bidmachine.protobuf.analytics;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/analytics/PlacementTag.class */
public enum PlacementTag implements ProtocolMessageEnum {
    PLACEMENT_TAG_INVALID(0),
    PLACEMENT_TAG_DISPLAY_BANNER(1),
    PLACEMENT_TAG_DISPLAY_INTERSTITIAL(2),
    PLACEMENT_TAG_DISPLAY_NATIVE(3),
    PLACEMENT_TAG_VIDEO(4),
    PLACEMENT_TAG_REWARDED_VIDEO(5),
    UNRECOGNIZED(-1);
    
    public static final int PLACEMENT_TAG_DISPLAY_BANNER_VALUE = 1;
    public static final int PLACEMENT_TAG_DISPLAY_INTERSTITIAL_VALUE = 2;
    public static final int PLACEMENT_TAG_DISPLAY_NATIVE_VALUE = 3;
    public static final int PLACEMENT_TAG_INVALID_VALUE = 0;
    public static final int PLACEMENT_TAG_REWARDED_VIDEO_VALUE = 5;
    public static final int PLACEMENT_TAG_VIDEO_VALUE = 4;
    private final int value;
    private static final Internal.EnumLiteMap<PlacementTag> internalValueMap = new Internal.EnumLiteMap<PlacementTag>() { // from class: io.bidmachine.protobuf.analytics.PlacementTag.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final PlacementTag findValueByNumber(int i) {
            return PlacementTag.forNumber(i);
        }
    };
    private static final PlacementTag[] VALUES = values();

    PlacementTag(int i) {
        this.value = i;
    }

    public static PlacementTag forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return PLACEMENT_TAG_DISPLAY_BANNER;
            }
            if (i == 2) {
                return PLACEMENT_TAG_DISPLAY_INTERSTITIAL;
            }
            if (i == 3) {
                return PLACEMENT_TAG_DISPLAY_NATIVE;
            }
            if (i == 4) {
                return PLACEMENT_TAG_VIDEO;
            }
            if (i == 5) {
                return PLACEMENT_TAG_REWARDED_VIDEO;
            }
            return null;
        }
        return PLACEMENT_TAG_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AnalyticsProto.getDescriptor().getEnumTypes().get(0);
    }

    public static Internal.EnumLiteMap<PlacementTag> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static PlacementTag valueOf(int i) {
        return forNumber(i);
    }

    public static PlacementTag valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
