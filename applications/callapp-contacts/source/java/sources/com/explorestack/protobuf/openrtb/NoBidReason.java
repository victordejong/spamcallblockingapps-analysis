package com.explorestack.protobuf.openrtb;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/NoBidReason.class */
public enum NoBidReason implements ProtocolMessageEnum {
    NO_BID_REASON_INVALID(0),
    NO_BID_REASON_TECHNICAL_ERROR(1),
    NO_BID_REASON_INVALID_REQUEST(2),
    NO_BID_REASON_KNOWN_WEB_CRAWLER(3),
    NO_BID_REASON_NON_HUMAN_TRAFFIC(4),
    NO_BID_REASON_PROXY_IP(5),
    NO_BID_REASON_UNSUPPORTED_DEVICE(6),
    NO_BID_REASON_BLOCKED(7),
    NO_BID_REASON_UNMATCHED_USER(8),
    NO_BID_REASON_DAILY_USER_CAP_MET(9),
    NO_BID_REASON_DAILY_DOMAIN_CAP_MET(10),
    NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE(11),
    NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION(12),
    NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE(13),
    NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION(14),
    NO_BID_REASON_INSUFFICIENT_AUCTION_TIME(15),
    UNRECOGNIZED(-1);
    
    public static final int NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE_VALUE = 13;
    public static final int NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION_VALUE = 14;
    public static final int NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE_VALUE = 11;
    public static final int NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION_VALUE = 12;
    public static final int NO_BID_REASON_BLOCKED_VALUE = 7;
    public static final int NO_BID_REASON_DAILY_DOMAIN_CAP_MET_VALUE = 10;
    public static final int NO_BID_REASON_DAILY_USER_CAP_MET_VALUE = 9;
    public static final int NO_BID_REASON_INSUFFICIENT_AUCTION_TIME_VALUE = 15;
    public static final int NO_BID_REASON_INVALID_REQUEST_VALUE = 2;
    public static final int NO_BID_REASON_INVALID_VALUE = 0;
    public static final int NO_BID_REASON_KNOWN_WEB_CRAWLER_VALUE = 3;
    public static final int NO_BID_REASON_NON_HUMAN_TRAFFIC_VALUE = 4;
    public static final int NO_BID_REASON_PROXY_IP_VALUE = 5;
    public static final int NO_BID_REASON_TECHNICAL_ERROR_VALUE = 1;
    public static final int NO_BID_REASON_UNMATCHED_USER_VALUE = 8;
    public static final int NO_BID_REASON_UNSUPPORTED_DEVICE_VALUE = 6;
    private final int value;
    private static final Internal.EnumLiteMap<NoBidReason> internalValueMap = new Internal.EnumLiteMap<NoBidReason>() { // from class: com.explorestack.protobuf.openrtb.NoBidReason.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final NoBidReason findValueByNumber(int i) {
            return NoBidReason.forNumber(i);
        }
    };
    private static final NoBidReason[] VALUES = values();

    NoBidReason(int i) {
        this.value = i;
    }

    public static NoBidReason forNumber(int i) {
        switch (i) {
            case 0:
                return NO_BID_REASON_INVALID;
            case 1:
                return NO_BID_REASON_TECHNICAL_ERROR;
            case 2:
                return NO_BID_REASON_INVALID_REQUEST;
            case 3:
                return NO_BID_REASON_KNOWN_WEB_CRAWLER;
            case 4:
                return NO_BID_REASON_NON_HUMAN_TRAFFIC;
            case 5:
                return NO_BID_REASON_PROXY_IP;
            case 6:
                return NO_BID_REASON_UNSUPPORTED_DEVICE;
            case 7:
                return NO_BID_REASON_BLOCKED;
            case 8:
                return NO_BID_REASON_UNMATCHED_USER;
            case 9:
                return NO_BID_REASON_DAILY_USER_CAP_MET;
            case 10:
                return NO_BID_REASON_DAILY_DOMAIN_CAP_MET;
            case 11:
                return NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE;
            case 12:
                return NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION;
            case 13:
                return NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE;
            case 14:
                return NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION;
            case 15:
                return NO_BID_REASON_INSUFFICIENT_AUCTION_TIME;
            default:
                return null;
        }
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return OpenrtbProto.getDescriptor().getEnumTypes().get(0);
    }

    public static Internal.EnumLiteMap<NoBidReason> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static NoBidReason valueOf(int i) {
        return forNumber(i);
    }

    public static NoBidReason valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
