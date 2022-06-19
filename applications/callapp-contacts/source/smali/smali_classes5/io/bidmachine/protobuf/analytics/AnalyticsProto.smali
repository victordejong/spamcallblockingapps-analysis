.class public final Lio/bidmachine/protobuf/analytics/AnalyticsProto;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field static final internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\n-bidmachine/protobuf/analytics/analyctis.proto\u0012\u001dbidmachine.protobuf.analytics\u001a)bidmachine/protobuf/openrtb/openrtb.proto\u001a%bidmachine/protobuf/adcom/adcom.proto\"\u00b4\u0002\n\u000eAuctionContext\u0012\u0011\n\ttimestamp\u0018\u0001 \u0001(\t\u0012\n\n\u0002id\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004test\u0018\u0003 \u0001(\u0008\u0012\n\n\u0002at\u0018\u0004 \u0001(\r\u0012B\n\rplacement_tag\u0018\u0005 \u0001(\u000e2+.bidmachine.protobuf.analytics.PlacementTag\u00127\n\u0004item\u0018\u0006 \u0001(\u000b2).bidmachine.protobuf.openrtb.Request.Item\u00127\n\tplacement\u0018\u0007 \u0001(\u000b2$.bidmachine.protobuf.adcom.Placement\u00123\n\u0007context\u0018\u0008 \u0001(\u000b2\".bidmachine.protobuf.adcom.Context\"\u00ed\u0001\n\u0008BidEvent\u0012\u0011\n\ttimestamp\u0018\u0001 \u0001(\t\u0012\r\n\u0005bidid\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004seat\u0018\u0003 \u0001(\t\u0012F\n\u000fauction_context\u0018\u0004 \u0001(\u000b2-.bidmachine.protobuf.analytics.AuctionContext\u0012>\n\u0003bid\u0018\u0005 \u0001(\u000b21.bidmachine.protobuf.openrtb.Response.Seatbid.Bid\u0012)\n\u0002ad\u0018\u0006 \u0001(\u000b2\u001d.bidmachine.protobuf.adcom.Ad*\u00d0\u0001\n\u000cPlacementTag\u0012\u0019\n\u0015PLACEMENT_TAG_INVALID\u0010\u0000\u0012 \n\u001cPLACEMENT_TAG_DISPLAY_BANNER\u0010\u0001\u0012&\n\"PLACEMENT_TAG_DISPLAY_INTERSTITIAL\u0010\u0002\u0012 \n\u001cPLACEMENT_TAG_DISPLAY_NATIVE\u0010\u0003\u0012\u0017\n\u0013PLACEMENT_TAG_VIDEO\u0010\u0004\u0012 \n\u001cPLACEMENT_TAG_REWARDED_VIDEO\u0010\u0005B4\n io.bidmachine.protobuf.analyticsB\u000eAnalyticsProtoP\u0001b\u0006proto3"

    .line 35
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 65
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 66
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 63
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 69
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 70
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v5, "Timestamp"

    const-string v6, "Id"

    const-string v7, "Test"

    const-string v8, "At"

    const-string v9, "PlacementTag"

    const-string v10, "Item"

    const-string v11, "Placement"

    const-string v12, "Context"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 75
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    sput-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 76
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Timestamp"

    const-string v3, "Bidid"

    const-string v4, "Seat"

    const-string v5, "AuctionContext"

    const-string v6, "Bid"

    const-string v7, "Ad"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 80
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 81
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 30
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method
