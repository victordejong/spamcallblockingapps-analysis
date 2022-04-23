package io.bidmachine.protobuf.analytics;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.callapp.contacts.model.Constants;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistry;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.adcom.AdcomProto;
import com.explorestack.protobuf.openrtb.OpenrtbProto;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/analytics/AnalyticsProto.class */
public final class AnalyticsProto {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n-bidmachine/protobuf/analytics/analyctis.proto\u0012\u001dbidmachine.protobuf.analytics\u001a)bidmachine/protobuf/openrtb/openrtb.proto\u001a%bidmachine/protobuf/adcom/adcom.proto\"´\u0002\n\u000eAuctionContext\u0012\u0011\n\ttimestamp\u0018\u0001 \u0001(\t\u0012\n\n\u0002id\u0018\u0002 \u0001(\t\u0012\f\n\u0004test\u0018\u0003 \u0001(\b\u0012\n\n\u0002at\u0018\u0004 \u0001(\r\u0012B\n\rplacement_tag\u0018\u0005 \u0001(\u000e2+.bidmachine.protobuf.analytics.PlacementTag\u00127\n\u0004item\u0018\u0006 \u0001(\u000b2).bidmachine.protobuf.openrtb.Request.Item\u00127\n\tplacement\u0018\u0007 \u0001(\u000b2$.bidmachine.protobuf.adcom.Placement\u00123\n\u0007context\u0018\b \u0001(\u000b2\".bidmachine.protobuf.adcom.Context\"í\u0001\n\bBidEvent\u0012\u0011\n\ttimestamp\u0018\u0001 \u0001(\t\u0012\r\n\u0005bidid\u0018\u0002 \u0001(\t\u0012\f\n\u0004seat\u0018\u0003 \u0001(\t\u0012F\n\u000fauction_context\u0018\u0004 \u0001(\u000b2-.bidmachine.protobuf.analytics.AuctionContext\u0012>\n\u0003bid\u0018\u0005 \u0001(\u000b21.bidmachine.protobuf.openrtb.Response.Seatbid.Bid\u0012)\n\u0002ad\u0018\u0006 \u0001(\u000b2\u001d.bidmachine.protobuf.adcom.Ad*Ð\u0001\n\fPlacementTag\u0012\u0019\n\u0015PLACEMENT_TAG_INVALID\u0010��\u0012 \n\u001cPLACEMENT_TAG_DISPLAY_BANNER\u0010\u0001\u0012&\n\"PLACEMENT_TAG_DISPLAY_INTERSTITIAL\u0010\u0002\u0012 \n\u001cPLACEMENT_TAG_DISPLAY_NATIVE\u0010\u0003\u0012\u0017\n\u0013PLACEMENT_TAG_VIDEO\u0010\u0004\u0012 \n\u001cPLACEMENT_TAG_REWARDED_VIDEO\u0010\u0005B4\n io.bidmachine.protobuf.analyticsB\u000eAnalyticsProtoP\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{OpenrtbProto.getDescriptor(), AdcomProto.getDescriptor()});
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor;
    static final GeneratedMessageV3.FieldAccessorTable internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor;
    static final GeneratedMessageV3.FieldAccessorTable internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable;

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor = descriptor2;
        internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Timestamp", JsonDocumentFields.POLICY_ID, "Test", "At", "PlacementTag", "Item", "Placement", "Context"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor = descriptor3;
        internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Timestamp", "Bidid", "Seat", "AuctionContext", "Bid", Constants.AD});
        OpenrtbProto.getDescriptor();
        AdcomProto.getDescriptor();
    }

    private AnalyticsProto() {
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
