package io.bidmachine.protobuf;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistry;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.TimestampProto;
import com.explorestack.protobuf.adcom.AdcomProto;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/ExtensionsProto.class */
public final class ExtensionsProto {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n$bidmachine/protobuf/extensions.proto\u0012\u0013bidmachine.protobuf\u001a%bidmachine/protobuf/adcom/adcom.proto\u001a\u001fgoogle/protobuf/timestamp.proto\"\u009a\u0002\n\u0010RequestExtension\u0012\u0011\n\tseller_id\u0018\u0001 \u0001(\t\u0012J\n\u000bseller_data\u0018\u0002 \u0003(\u000b25.bidmachine.protobuf.RequestExtension.SellerDataEntry\u0012C\n\u0013header_bidding_type\u0018\u0003 \u0001(\u000e2&.bidmachine.protobuf.HeaderBiddingType\u0012\u000b\n\u0003ifv\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006bm_ifv\u0018\u0005 \u0001(\t\u0012\u0012\n\nsession_id\u0018\u0006 \u0001(\t\u001a1\n\u000fSellerDataEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"µ\b\n\u000bAdExtension\u0012\u0013\n\u0007preload\u0018\u0002 \u0001(\bB\u0002\u0018\u0001\u0012\u001b\n\u000fload_skipoffset\u0018\u0003 \u0001(\rB\u0002\u0018\u0001\u0012\u0012\n\nskipoffset\u0018\t \u0001(\r\u0012\u001c\n\u0014companion_skipoffset\u0018\n \u0001(\r\u0012\u0018\n\u0010use_native_close\u0018\u000b \u0001(\b\u0012\n\n\u0002r1\u0018\f \u0001(\b\u0012\n\n\u0002r2\u0018\r \u0001(\b\u0012@\n\tcountdown\u0018\u000e \u0001(\u000b2-.bidmachine.protobuf.AdExtension.ControlAsset\u0012C\n\fclose_button\u0018\u000f \u0001(\u000b2-.bidmachine.protobuf.AdExtension.ControlAsset\u0012?\n\bprogress\u0018\u0012 \u0001(\u000b2-.bidmachine.protobuf.AdExtension.ControlAsset\u0012\u0019\n\u0011progress_duration\u0018\u0013 \u0001(\r\u0012&\n\u001eignores_safe_area_layout_guide\u0018\u0010 \u0001(\b\u0012\u0011\n\tstore_url\u0018\u0011 \u0001(\t\u0012\"\n\u001aviewability_time_threshold\u0018\u0004 \u0001(\r\u0012#\n\u001bviewability_pixel_threshold\u0018\u0005 \u0001(\u0002\u0012&\n\u001eviewability_duration_threshold\u0018\u0006 \u0001(\u0002\u0012'\n\u001fviewability_ignore_window_focus\u0018\u0014 \u0001(\b\u00122\n\u0005event\u0018\u0007 \u0003(\u000b2#.bidmachine.protobuf.adcom.Ad.Event\u0012I\n\rcustom_params\u0018\b \u0003(\u000b22.bidmachine.protobuf.AdExtension.CustomParamsEntry\u001a£\u0002\n\fControlAsset\u0012\u000f\n\u0007content\u0018\u0001 \u0001(\t\u0012\f\n\u0004fill\u0018\u0002 \u0001(\t\u0012\u0012\n\nfont_style\u0018\u0003 \u0001(\r\u0012\u000e\n\u0006height\u0018\u0004 \u0001(\r\u0012\u0011\n\thideafter\u0018\u0005 \u0001(\r\u0012\u000e\n\u0006margin\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007opacity\u0018\u0007 \u0001(\u0002\u0012\u0010\n\boutlined\u0018\b \u0001(\b\u0012\u000f\n\u0007padding\u0018\t \u0001(\t\u0012\u000e\n\u0006shadow\u0018\n \u0001(\t\u0012\u000e\n\u0006stroke\u0018\u000b \u0001(\t\u0012\u0014\n\fstroke_width\u0018\u0012 \u0001(\u0002\u0012\r\n\u0005style\u0018\r \u0001(\t\u0012\u000f\n\u0007visible\u0018\u000e \u0001(\b\u0012\r\n\u0005width\u0018\u000f \u0001(\r\u0012\t\n\u0001x\u0018\u0010 \u0001(\t\u0012\t\n\u0001y\u0018\u0011 \u0001(\t\u001a3\n\u0011CustomParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"P\n\fAppExtension\u00120\n\finstall_time\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000e\n\u0006uptime\u0018\u0002 \u0001(\u0004\"2\n\u000fDeviceExtension\u0012\u000f\n\u0007battery\u0018\u0001 \u0001(\r\u0012\u000e\n\u0006rooted\u0018\u0002 \u0001(\b\"'\n\u0011RegsCcpaExtension\u0012\u0012\n\nus_privacy\u0018\u0001 \u0001(\t\"%\n\u0007Session\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006uptime\u0018\u0002 \u0001(\u0004*ñ\f\n\u0011EventTypeExtended\u0012\u001f\n\u001bEVENT_TYPE_EXTENDED_INVALID\u0010��\u0012\"\n\u001dEVENT_TYPE_EXTENDED_AD_LOADED\u0010ô\u0003\u0012#\n\u001eEVENT_TYPE_EXTENDED_IMPRESSION\u0010õ\u0003\u0012!\n\u001cEVENT_TYPE_EXTENDED_VIEWABLE\u0010ö\u0003\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_CLICK\u0010÷\u0003\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_CLOSED\u0010ø\u0003\u0012%\n EVENT_TYPE_EXTENDED_AD_DESTROYED\u0010ù\u0003\u0012#\n\u001eEVENT_TYPE_EXTENDED_AD_EXPIRED\u0010ÿ\u0003\u0012,\n'EVENT_TYPE_EXTENDED_SESSION_INITIALIZED\u0010ú\u0003\u0012'\n\"EVENT_TYPE_EXTENDED_REQUEST_LOADED\u0010û\u0003\u0012)\n$EVENT_TYPE_EXTENDED_REQUEST_CANCELED\u0010ü\u0003\u0012(\n#EVENT_TYPE_EXTENDED_REQUEST_EXPIRED\u0010ý\u0003\u0012*\n%EVENT_TYPE_EXTENDED_REQUEST_DESTROYED\u0010þ\u0003\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_START\u0010Ø\u0004\u0012'\n\"EVENT_TYPE_EXTENDED_FIRST_QUARTILE\u0010Ù\u0004\u0012!\n\u001cEVENT_TYPE_EXTENDED_MIDPOINT\u0010Ú\u0004\u0012'\n\"EVENT_TYPE_EXTENDED_THIRD_QUARTILE\u0010Û\u0004\u0012!\n\u001cEVENT_TYPE_EXTENDED_COMPLETE\u0010Ü\u0004\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_MUTE\u0010Ý\u0004\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_UNMUTE\u0010Þ\u0004\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_SKIP\u0010ß\u0004\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_PAUSE\u0010à\u0004\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_REWIND\u0010á\u0004\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_RESUME\u0010â\u0004\u0012#\n\u001eEVENT_TYPE_EXTENDED_FULLSCREEN\u0010ã\u0004\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_EXPAND\u0010ä\u0004\u0012!\n\u001cEVENT_TYPE_EXTENDED_COLLAPSE\u0010å\u0004\u0012*\n%EVENT_TYPE_EXTENDED_ACCEPT_INVITATION\u0010æ\u0004\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_CLOSE\u0010ç\u0004\u0012&\n!EVENT_TYPE_EXTENDED_CREATIVE_VIEW\u0010è\u0004\u0012$\n\u001fEVENT_TYPE_EXTENDED_MRAID_CLICK\u0010é\u0004\u0012#\n\u001eEVENT_TYPE_EXTENDED_MRAID_OPEN\u0010ê\u0004\u0012%\n EVENT_TYPE_EXTENDED_MRAID_LOADED\u0010ë\u0004\u0012/\n*EVENT_TYPE_EXTENDED_HB_NETWORK_INITIALIZED\u0010½\u0005\u0012,\n'EVENT_TYPE_EXTENDED_HB_NETWORK_PREPARED\u0010¾\u0005\u00121\n,EVENT_TYPE_EXTENDED_ALL_HB_NETWORKS_PREPARED\u0010¿\u0005\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_BURL\u0010¡\u0006\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_NURL\u0010¢\u0006\u0012\u001d\n\u0018EVENT_TYPE_EXTENDED_LURL\u0010£\u0006\u0012\u001f\n\u001aEVENT_TYPE_EXTENDED_CUSTOM\u0010¤\u0006\u0012$\n\u001fEVENT_TYPE_EXTENDED_CUSTOM_LOSS\u0010¥\u0006\u0012#\n\u001eEVENT_TYPE_EXTENDED_CUSTOM_WIN\u0010¦\u0006\u0012\u001e\n\u0019EVENT_TYPE_EXTENDED_ERROR\u0010è\u0007\u0012'\n\"EVENT_TYPE_EXTENDED_TRACKING_ERROR\u0010é\u0007*ù\u0002\n\nActionType\u0012\u0017\n\u0013ACTION_TYPE_INVALID\u0010��\u0012\u001b\n\u0016ACTION_TYPE_AD_LOADING\u0010ô\u0003\u0012\u0018\n\u0013ACTION_TYPE_SHOWING\u0010õ\u0003\u0012\u0018\n\u0013ACTION_TYPE_VIEWING\u0010ö\u0003\u0012\u0019\n\u0014ACTION_TYPE_CLICKING\u0010÷\u0003\u0012\u0018\n\u0013ACTION_TYPE_CLOSING\u0010ø\u0003\u0012\u001e\n\u0019ACTION_TYPE_AD_DESTROYING\u0010ù\u0003\u0012%\n ACTION_TYPE_SESSION_INITIALIZING\u0010ú\u0003\u0012 \n\u001bACTION_TYPE_REQUEST_LOADING\u0010û\u0003\u0012\"\n\u001dACTION_TYPE_REQUEST_CANCELING\u0010ü\u0003\u0012 \n\u001bACTION_TYPE_HB_INITIALIZING\u0010½\u0005\u0012\u001d\n\u0018ACTION_TYPE_HB_PREPARING\u0010¾\u0005*\u009b\u0003\n\u000bErrorReason\u0012\u0018\n\u0014ERROR_REASON_INVALID\u0010��\u0012\u001e\n\u001aERROR_REASON_NO_CONNECTION\u0010d\u0012\u001c\n\u0018ERROR_REASON_BAD_CONTENT\u0010e\u0012\u0018\n\u0014ERROR_REASON_TIMEOUT\u0010f\u0012\u001b\n\u0017ERROR_REASON_NO_CONTENT\u0010g\u0012\"\n\u001eERROR_REASON_HANDLED_EXCEPTION\u0010h\u0012\u001b\n\u0017ERROR_REASON_WAS_CLOSED\u0010i\u0012\u001e\n\u001aERROR_REASON_WAS_DESTROYED\u0010j\u0012\u001c\n\u0018ERROR_REASON_WAS_EXPIRED\u0010k\u0012\u0019\n\u0015ERROR_REASON_INTERNAL\u0010l\u0012\"\n\u001eERROR_REASON_HTTP_SERVER_ERROR\u0010m\u0012!\n\u001dERROR_REASON_HTTP_BAD_REQUEST\u0010n\u0012\u001c\n\u0017ERROR_REASON_HB_NETWORK\u0010È\u0001*\u0080\u0001\n\u0011HeaderBiddingType\u0012\u001f\n\u001bHEADER_BIDDING_TYPE_INVALID\u0010��\u0012)\n\u001cHEADER_BIDDING_TYPE_DISABLED\u0010ÿÿÿÿÿÿÿÿÿ\u0001\u0012\u001f\n\u001bHEADER_BIDDING_TYPE_ENABLED\u0010\u0001B1\n\u0016io.bidmachine.protobufB\u000fExtensionsProtoP\u0001¢\u0002\u0003BDMb\u0006proto3"}, new Descriptors.FileDescriptor[]{AdcomProto.getDescriptor(), TimestampProto.getDescriptor()});

    /* renamed from: internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor */
    static final Descriptors.Descriptor f62639x19fc4d2a;

    /* renamed from: internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62640x6a08a9a8;

    /* renamed from: internal_static_bidmachine_protobuf_AdExtension_CustomParamsEntry_descriptor */
    static final Descriptors.Descriptor f62641x1e53ffa4;

    /* renamed from: internal_static_bidmachine_protobuf_AdExtension_CustomParamsEntry_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62642x652b4222;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_AdExtension_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62643x1b41ebde;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_AppExtension_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_AppExtension_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62644xf3936840;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_DeviceExtension_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_DeviceExtension_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62645x1b553c91;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_RegsCcpaExtension_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62646x806ff90b;

    /* renamed from: internal_static_bidmachine_protobuf_RequestExtension_SellerDataEntry_descriptor */
    static final Descriptors.Descriptor f62647x1ef2da26;

    /* renamed from: internal_static_bidmachine_protobuf_RequestExtension_SellerDataEntry_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62648x79107aa4;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_RequestExtension_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62649x533b76ae;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_Session_descriptor;
    static final GeneratedMessageV3.FieldAccessorTable internal_static_bidmachine_protobuf_Session_fieldAccessorTable;

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_bidmachine_protobuf_RequestExtension_descriptor = descriptor2;
        f62649x533b76ae = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"SellerId", "SellerData", "HeaderBiddingType", "Ifv", "BmIfv", "SessionId"});
        Descriptors.Descriptor descriptor3 = descriptor2.getNestedTypes().get(0);
        f62647x1ef2da26 = descriptor3;
        f62648x79107aa4 = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor4 = getDescriptor().getMessageTypes().get(1);
        internal_static_bidmachine_protobuf_AdExtension_descriptor = descriptor4;
        f62643x1b41ebde = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Preload", "LoadSkipoffset", "Skipoffset", "CompanionSkipoffset", "UseNativeClose", "R1", "R2", "Countdown", "CloseButton", "Progress", "ProgressDuration", "IgnoresSafeAreaLayoutGuide", "StoreUrl", "ViewabilityTimeThreshold", "ViewabilityPixelThreshold", "ViewabilityDurationThreshold", "ViewabilityIgnoreWindowFocus", "Event", "CustomParams"});
        Descriptors.Descriptor descriptor5 = descriptor4.getNestedTypes().get(0);
        f62639x19fc4d2a = descriptor5;
        f62640x6a08a9a8 = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"Content", "Fill", "FontStyle", "Height", "Hideafter", "Margin", "Opacity", "Outlined", "Padding", "Shadow", "Stroke", "StrokeWidth", "Style", "Visible", "Width", "X", "Y"});
        Descriptors.Descriptor descriptor6 = descriptor4.getNestedTypes().get(1);
        f62641x1e53ffa4 = descriptor6;
        f62642x652b4222 = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(2);
        internal_static_bidmachine_protobuf_AppExtension_descriptor = descriptor7;
        f62644xf3936840 = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{"InstallTime", "Uptime"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(3);
        internal_static_bidmachine_protobuf_DeviceExtension_descriptor = descriptor8;
        f62645x1b553c91 = new GeneratedMessageV3.FieldAccessorTable(descriptor8, new String[]{"Battery", "Rooted"});
        Descriptors.Descriptor descriptor9 = getDescriptor().getMessageTypes().get(4);
        internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor = descriptor9;
        f62646x806ff90b = new GeneratedMessageV3.FieldAccessorTable(descriptor9, new String[]{"UsPrivacy"});
        Descriptors.Descriptor descriptor10 = getDescriptor().getMessageTypes().get(5);
        internal_static_bidmachine_protobuf_Session_descriptor = descriptor10;
        internal_static_bidmachine_protobuf_Session_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor10, new String[]{JsonDocumentFields.POLICY_ID, "Uptime"});
        AdcomProto.getDescriptor();
        TimestampProto.getDescriptor();
    }

    private ExtensionsProto() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
