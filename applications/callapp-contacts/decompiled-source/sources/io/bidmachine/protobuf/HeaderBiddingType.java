package io.bidmachine.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/HeaderBiddingType.class */
public enum HeaderBiddingType implements ProtocolMessageEnum {
    HEADER_BIDDING_TYPE_INVALID(0),
    HEADER_BIDDING_TYPE_DISABLED(-1),
    HEADER_BIDDING_TYPE_ENABLED(1),
    UNRECOGNIZED(-1);
    
    public static final int HEADER_BIDDING_TYPE_DISABLED_VALUE = -1;
    public static final int HEADER_BIDDING_TYPE_ENABLED_VALUE = 1;
    public static final int HEADER_BIDDING_TYPE_INVALID_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<HeaderBiddingType> internalValueMap = new Internal.EnumLiteMap<HeaderBiddingType>() { // from class: io.bidmachine.protobuf.HeaderBiddingType.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final HeaderBiddingType findValueByNumber(int i) {
            return HeaderBiddingType.forNumber(i);
        }
    };
    private static final HeaderBiddingType[] VALUES = values();

    HeaderBiddingType(int i) {
        this.value = i;
    }

    public static HeaderBiddingType forNumber(int i) {
        if (i == -1) {
            return HEADER_BIDDING_TYPE_DISABLED;
        }
        if (i == 0) {
            return HEADER_BIDDING_TYPE_INVALID;
        }
        if (i != 1) {
            return null;
        }
        return HEADER_BIDDING_TYPE_ENABLED;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return ExtensionsProto.getDescriptor().getEnumTypes().get(3);
    }

    public static Internal.EnumLiteMap<HeaderBiddingType> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static HeaderBiddingType valueOf(int i) {
        return forNumber(i);
    }

    public static HeaderBiddingType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
