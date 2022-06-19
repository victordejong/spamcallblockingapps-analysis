package io.bidmachine.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/EventTypeExtended.class */
public enum EventTypeExtended implements ProtocolMessageEnum {
    EVENT_TYPE_EXTENDED_INVALID(0),
    EVENT_TYPE_EXTENDED_AD_LOADED(500),
    EVENT_TYPE_EXTENDED_IMPRESSION(501),
    EVENT_TYPE_EXTENDED_VIEWABLE(502),
    EVENT_TYPE_EXTENDED_CLICK(503),
    EVENT_TYPE_EXTENDED_CLOSED(504),
    EVENT_TYPE_EXTENDED_AD_DESTROYED(505),
    EVENT_TYPE_EXTENDED_AD_EXPIRED(EVENT_TYPE_EXTENDED_AD_EXPIRED_VALUE),
    EVENT_TYPE_EXTENDED_SESSION_INITIALIZED(506),
    EVENT_TYPE_EXTENDED_REQUEST_LOADED(507),
    EVENT_TYPE_EXTENDED_REQUEST_CANCELED(508),
    EVENT_TYPE_EXTENDED_REQUEST_EXPIRED(EVENT_TYPE_EXTENDED_REQUEST_EXPIRED_VALUE),
    EVENT_TYPE_EXTENDED_REQUEST_DESTROYED(EVENT_TYPE_EXTENDED_REQUEST_DESTROYED_VALUE),
    EVENT_TYPE_EXTENDED_START(600),
    EVENT_TYPE_EXTENDED_FIRST_QUARTILE(601),
    EVENT_TYPE_EXTENDED_MIDPOINT(602),
    EVENT_TYPE_EXTENDED_THIRD_QUARTILE(603),
    EVENT_TYPE_EXTENDED_COMPLETE(604),
    EVENT_TYPE_EXTENDED_MUTE(605),
    EVENT_TYPE_EXTENDED_UNMUTE(606),
    EVENT_TYPE_EXTENDED_SKIP(607),
    EVENT_TYPE_EXTENDED_PAUSE(608),
    EVENT_TYPE_EXTENDED_REWIND(609),
    EVENT_TYPE_EXTENDED_RESUME(610),
    EVENT_TYPE_EXTENDED_FULLSCREEN(611),
    EVENT_TYPE_EXTENDED_EXPAND(612),
    EVENT_TYPE_EXTENDED_COLLAPSE(EVENT_TYPE_EXTENDED_COLLAPSE_VALUE),
    EVENT_TYPE_EXTENDED_ACCEPT_INVITATION(EVENT_TYPE_EXTENDED_ACCEPT_INVITATION_VALUE),
    EVENT_TYPE_EXTENDED_CLOSE(EVENT_TYPE_EXTENDED_CLOSE_VALUE),
    EVENT_TYPE_EXTENDED_CREATIVE_VIEW(EVENT_TYPE_EXTENDED_CREATIVE_VIEW_VALUE),
    EVENT_TYPE_EXTENDED_MRAID_CLICK(EVENT_TYPE_EXTENDED_MRAID_CLICK_VALUE),
    EVENT_TYPE_EXTENDED_MRAID_OPEN(EVENT_TYPE_EXTENDED_MRAID_OPEN_VALUE),
    EVENT_TYPE_EXTENDED_MRAID_LOADED(EVENT_TYPE_EXTENDED_MRAID_LOADED_VALUE),
    EVENT_TYPE_EXTENDED_HB_NETWORK_INITIALIZED(701),
    EVENT_TYPE_EXTENDED_HB_NETWORK_PREPARED(702),
    EVENT_TYPE_EXTENDED_ALL_HB_NETWORKS_PREPARED(EVENT_TYPE_EXTENDED_ALL_HB_NETWORKS_PREPARED_VALUE),
    EVENT_TYPE_EXTENDED_BURL(EVENT_TYPE_EXTENDED_BURL_VALUE),
    EVENT_TYPE_EXTENDED_NURL(EVENT_TYPE_EXTENDED_NURL_VALUE),
    EVENT_TYPE_EXTENDED_LURL(EVENT_TYPE_EXTENDED_LURL_VALUE),
    EVENT_TYPE_EXTENDED_CUSTOM(EVENT_TYPE_EXTENDED_CUSTOM_VALUE),
    EVENT_TYPE_EXTENDED_CUSTOM_LOSS(EVENT_TYPE_EXTENDED_CUSTOM_LOSS_VALUE),
    EVENT_TYPE_EXTENDED_CUSTOM_WIN(EVENT_TYPE_EXTENDED_CUSTOM_WIN_VALUE),
    EVENT_TYPE_EXTENDED_ERROR(1000),
    EVENT_TYPE_EXTENDED_TRACKING_ERROR(1001),
    UNRECOGNIZED(-1);
    
    public static final int EVENT_TYPE_EXTENDED_ACCEPT_INVITATION_VALUE = 614;
    public static final int EVENT_TYPE_EXTENDED_AD_DESTROYED_VALUE = 505;
    public static final int EVENT_TYPE_EXTENDED_AD_EXPIRED_VALUE = 511;
    public static final int EVENT_TYPE_EXTENDED_AD_LOADED_VALUE = 500;
    public static final int EVENT_TYPE_EXTENDED_ALL_HB_NETWORKS_PREPARED_VALUE = 703;
    public static final int EVENT_TYPE_EXTENDED_BURL_VALUE = 801;
    public static final int EVENT_TYPE_EXTENDED_CLICK_VALUE = 503;
    public static final int EVENT_TYPE_EXTENDED_CLOSED_VALUE = 504;
    public static final int EVENT_TYPE_EXTENDED_CLOSE_VALUE = 615;
    public static final int EVENT_TYPE_EXTENDED_COLLAPSE_VALUE = 613;
    public static final int EVENT_TYPE_EXTENDED_COMPLETE_VALUE = 604;
    public static final int EVENT_TYPE_EXTENDED_CREATIVE_VIEW_VALUE = 616;
    public static final int EVENT_TYPE_EXTENDED_CUSTOM_LOSS_VALUE = 805;
    public static final int EVENT_TYPE_EXTENDED_CUSTOM_VALUE = 804;
    public static final int EVENT_TYPE_EXTENDED_CUSTOM_WIN_VALUE = 806;
    public static final int EVENT_TYPE_EXTENDED_ERROR_VALUE = 1000;
    public static final int EVENT_TYPE_EXTENDED_EXPAND_VALUE = 612;
    public static final int EVENT_TYPE_EXTENDED_FIRST_QUARTILE_VALUE = 601;
    public static final int EVENT_TYPE_EXTENDED_FULLSCREEN_VALUE = 611;
    public static final int EVENT_TYPE_EXTENDED_HB_NETWORK_INITIALIZED_VALUE = 701;
    public static final int EVENT_TYPE_EXTENDED_HB_NETWORK_PREPARED_VALUE = 702;
    public static final int EVENT_TYPE_EXTENDED_IMPRESSION_VALUE = 501;
    public static final int EVENT_TYPE_EXTENDED_INVALID_VALUE = 0;
    public static final int EVENT_TYPE_EXTENDED_LURL_VALUE = 803;
    public static final int EVENT_TYPE_EXTENDED_MIDPOINT_VALUE = 602;
    public static final int EVENT_TYPE_EXTENDED_MRAID_CLICK_VALUE = 617;
    public static final int EVENT_TYPE_EXTENDED_MRAID_LOADED_VALUE = 619;
    public static final int EVENT_TYPE_EXTENDED_MRAID_OPEN_VALUE = 618;
    public static final int EVENT_TYPE_EXTENDED_MUTE_VALUE = 605;
    public static final int EVENT_TYPE_EXTENDED_NURL_VALUE = 802;
    public static final int EVENT_TYPE_EXTENDED_PAUSE_VALUE = 608;
    public static final int EVENT_TYPE_EXTENDED_REQUEST_CANCELED_VALUE = 508;
    public static final int EVENT_TYPE_EXTENDED_REQUEST_DESTROYED_VALUE = 510;
    public static final int EVENT_TYPE_EXTENDED_REQUEST_EXPIRED_VALUE = 509;
    public static final int EVENT_TYPE_EXTENDED_REQUEST_LOADED_VALUE = 507;
    public static final int EVENT_TYPE_EXTENDED_RESUME_VALUE = 610;
    public static final int EVENT_TYPE_EXTENDED_REWIND_VALUE = 609;
    public static final int EVENT_TYPE_EXTENDED_SESSION_INITIALIZED_VALUE = 506;
    public static final int EVENT_TYPE_EXTENDED_SKIP_VALUE = 607;
    public static final int EVENT_TYPE_EXTENDED_START_VALUE = 600;
    public static final int EVENT_TYPE_EXTENDED_THIRD_QUARTILE_VALUE = 603;
    public static final int EVENT_TYPE_EXTENDED_TRACKING_ERROR_VALUE = 1001;
    public static final int EVENT_TYPE_EXTENDED_UNMUTE_VALUE = 606;
    public static final int EVENT_TYPE_EXTENDED_VIEWABLE_VALUE = 502;
    private final int value;
    private static final Internal.EnumLiteMap<EventTypeExtended> internalValueMap = new Internal.EnumLiteMap<EventTypeExtended>() { // from class: io.bidmachine.protobuf.EventTypeExtended.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final EventTypeExtended findValueByNumber(int i) {
            return EventTypeExtended.forNumber(i);
        }
    };
    private static final EventTypeExtended[] VALUES = values();

    EventTypeExtended(int i) {
        this.value = i;
    }

    public static EventTypeExtended forNumber(int i) {
        if (i != 0) {
            if (i == 1000) {
                return EVENT_TYPE_EXTENDED_ERROR;
            }
            if (i == 1001) {
                return EVENT_TYPE_EXTENDED_TRACKING_ERROR;
            }
            switch (i) {
                case 500:
                    return EVENT_TYPE_EXTENDED_AD_LOADED;
                case 501:
                    return EVENT_TYPE_EXTENDED_IMPRESSION;
                case 502:
                    return EVENT_TYPE_EXTENDED_VIEWABLE;
                case 503:
                    return EVENT_TYPE_EXTENDED_CLICK;
                case 504:
                    return EVENT_TYPE_EXTENDED_CLOSED;
                case 505:
                    return EVENT_TYPE_EXTENDED_AD_DESTROYED;
                case 506:
                    return EVENT_TYPE_EXTENDED_SESSION_INITIALIZED;
                case 507:
                    return EVENT_TYPE_EXTENDED_REQUEST_LOADED;
                case 508:
                    return EVENT_TYPE_EXTENDED_REQUEST_CANCELED;
                case EVENT_TYPE_EXTENDED_REQUEST_EXPIRED_VALUE:
                    return EVENT_TYPE_EXTENDED_REQUEST_EXPIRED;
                case EVENT_TYPE_EXTENDED_REQUEST_DESTROYED_VALUE:
                    return EVENT_TYPE_EXTENDED_REQUEST_DESTROYED;
                case EVENT_TYPE_EXTENDED_AD_EXPIRED_VALUE:
                    return EVENT_TYPE_EXTENDED_AD_EXPIRED;
                default:
                    switch (i) {
                        case 600:
                            return EVENT_TYPE_EXTENDED_START;
                        case 601:
                            return EVENT_TYPE_EXTENDED_FIRST_QUARTILE;
                        case 602:
                            return EVENT_TYPE_EXTENDED_MIDPOINT;
                        case 603:
                            return EVENT_TYPE_EXTENDED_THIRD_QUARTILE;
                        case 604:
                            return EVENT_TYPE_EXTENDED_COMPLETE;
                        case 605:
                            return EVENT_TYPE_EXTENDED_MUTE;
                        case 606:
                            return EVENT_TYPE_EXTENDED_UNMUTE;
                        case 607:
                            return EVENT_TYPE_EXTENDED_SKIP;
                        case 608:
                            return EVENT_TYPE_EXTENDED_PAUSE;
                        case 609:
                            return EVENT_TYPE_EXTENDED_REWIND;
                        case 610:
                            return EVENT_TYPE_EXTENDED_RESUME;
                        case 611:
                            return EVENT_TYPE_EXTENDED_FULLSCREEN;
                        case 612:
                            return EVENT_TYPE_EXTENDED_EXPAND;
                        case EVENT_TYPE_EXTENDED_COLLAPSE_VALUE:
                            return EVENT_TYPE_EXTENDED_COLLAPSE;
                        case EVENT_TYPE_EXTENDED_ACCEPT_INVITATION_VALUE:
                            return EVENT_TYPE_EXTENDED_ACCEPT_INVITATION;
                        case EVENT_TYPE_EXTENDED_CLOSE_VALUE:
                            return EVENT_TYPE_EXTENDED_CLOSE;
                        case EVENT_TYPE_EXTENDED_CREATIVE_VIEW_VALUE:
                            return EVENT_TYPE_EXTENDED_CREATIVE_VIEW;
                        case EVENT_TYPE_EXTENDED_MRAID_CLICK_VALUE:
                            return EVENT_TYPE_EXTENDED_MRAID_CLICK;
                        case EVENT_TYPE_EXTENDED_MRAID_OPEN_VALUE:
                            return EVENT_TYPE_EXTENDED_MRAID_OPEN;
                        case EVENT_TYPE_EXTENDED_MRAID_LOADED_VALUE:
                            return EVENT_TYPE_EXTENDED_MRAID_LOADED;
                        default:
                            switch (i) {
                                case 701:
                                    return EVENT_TYPE_EXTENDED_HB_NETWORK_INITIALIZED;
                                case 702:
                                    return EVENT_TYPE_EXTENDED_HB_NETWORK_PREPARED;
                                case EVENT_TYPE_EXTENDED_ALL_HB_NETWORKS_PREPARED_VALUE:
                                    return EVENT_TYPE_EXTENDED_ALL_HB_NETWORKS_PREPARED;
                                default:
                                    switch (i) {
                                        case EVENT_TYPE_EXTENDED_BURL_VALUE:
                                            return EVENT_TYPE_EXTENDED_BURL;
                                        case EVENT_TYPE_EXTENDED_NURL_VALUE:
                                            return EVENT_TYPE_EXTENDED_NURL;
                                        case EVENT_TYPE_EXTENDED_LURL_VALUE:
                                            return EVENT_TYPE_EXTENDED_LURL;
                                        case EVENT_TYPE_EXTENDED_CUSTOM_VALUE:
                                            return EVENT_TYPE_EXTENDED_CUSTOM;
                                        case EVENT_TYPE_EXTENDED_CUSTOM_LOSS_VALUE:
                                            return EVENT_TYPE_EXTENDED_CUSTOM_LOSS;
                                        case EVENT_TYPE_EXTENDED_CUSTOM_WIN_VALUE:
                                            return EVENT_TYPE_EXTENDED_CUSTOM_WIN;
                                        default:
                                            return null;
                                    }
                            }
                    }
            }
        }
        return EVENT_TYPE_EXTENDED_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return ExtensionsProto.getDescriptor().getEnumTypes().get(0);
    }

    public static Internal.EnumLiteMap<EventTypeExtended> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static EventTypeExtended valueOf(int i) {
        return forNumber(i);
    }

    public static EventTypeExtended valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
