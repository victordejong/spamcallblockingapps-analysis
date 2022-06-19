.class public final Lio/bidmachine/protobuf/InitRequest$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/InitRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/InitRequest$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/InitRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private appVer_:Ljava/lang/Object;

.field private bmIfv_:Ljava/lang/Object;

.field private bundle_:Ljava/lang/Object;

.field private contype_:I

.field private deviceType_:I

.field private geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private ifa_:Ljava/lang/Object;

.field private ifv_:Ljava/lang/Object;

.field private os_:I

.field private osv_:Ljava/lang/Object;

.field private sdk_:Ljava/lang/Object;

.field private sdkver_:Ljava/lang/Object;

.field private sellerId_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1026
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1248
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 1337
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1426
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 1491
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 1733
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 1822
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 1911
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 2000
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 2089
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2178
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 2243
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 2308
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 2397
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1027
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 1032
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1248
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 1337
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1426
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 1491
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 1733
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 1822
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 1911
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 2000
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 2089
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2178
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 2243
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 2308
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 2397
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1033
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/InitRequest$1;)V
    .locals 0

    .line 1008
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/InitRequest$1;)V
    .locals 0

    .line 1008
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1014
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getGeoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1722
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1723
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1725
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 1726
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1728
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1730
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1037
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->access$200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1153
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->build()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->build()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/InitRequest;
    .locals 2

    .line 1091
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1093
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->buildPartial()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/InitRequest;
    .locals 2

    .line 1100
    new-instance v0, Lio/bidmachine/protobuf/InitRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/InitRequest;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/InitRequest$1;)V

    .line 1101
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$402(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$502(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$602(Lio/bidmachine/protobuf/InitRequest;I)I

    .line 1104
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$702(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 1106
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$802(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 1108
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$802(Lio/bidmachine/protobuf/InitRequest;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1110
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$902(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$1002(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$1102(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$1202(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$1302(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$1402(Lio/bidmachine/protobuf/InitRequest;I)I

    .line 1116
    iget v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$1502(Lio/bidmachine/protobuf/InitRequest;I)I

    .line 1117
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$1602(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/InitRequest;->access$1702(Lio/bidmachine/protobuf/InitRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clear()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 4

    .line 1042
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1043
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 1045
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1047
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 1049
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 1051
    iget-object v2, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1052
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 1054
    :cond_0
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1055
    iput-object v3, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1057
    :goto_0
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 1059
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 1061
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 1063
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 1065
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1067
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 1069
    iput v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 1071
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 1073
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public final clearAppVer()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 2374
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 2375
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBmIfv()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 2155
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2156
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBundle()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1403
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 1404
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearContype()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2303
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 2304
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeviceType()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2238
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 2239
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1136
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public final clearGeo()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 2

    .line 1675
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1676
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1677
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    goto :goto_0

    .line 1679
    :cond_0
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1680
    iput-object v1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearIfa()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1977
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 1978
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIfv()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 2066
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 2067
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1141
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public final clearOs()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1486
    iput v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 1487
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOsv()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1557
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 1558
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdk()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1799
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 1800
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdkver()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1888
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 1889
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSellerId()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1314
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 1315
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSessionId()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 2463
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2464
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1125
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->clone()Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAppVer()Ljava/lang/String;
    .locals 2

    .line 2317
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 2318
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2319
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2321
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2322
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 2325
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2337
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 2338
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2339
    check-cast v0, Ljava/lang/String;

    .line 2340
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2342
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    return-object v0

    .line 2345
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getBmIfv()Ljava/lang/String;
    .locals 2

    .line 2098
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2099
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2100
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2102
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2103
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 2106
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2118
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2119
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2120
    check-cast v0, Ljava/lang/String;

    .line 2121
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2123
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 2126
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getBundle()Ljava/lang/String;
    .locals 2

    .line 1346
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 1347
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1348
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1350
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1351
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1354
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBundleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1366
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 1367
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1368
    check-cast v0, Ljava/lang/String;

    .line 1369
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1371
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    return-object v0

    .line 1374
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .locals 1

    .line 2275
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2276
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_0
    return-object v0
.end method

.method public final getContypeValue()I
    .locals 1

    .line 2252
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/InitRequest;
    .locals 1

    .line 1086
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1081
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDeviceType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .locals 1

    .line 2210
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2211
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_0
    return-object v0
.end method

.method public final getDeviceTypeValue()I
    .locals 1

    .line 2187
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    return v0
.end method

.method public final getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 1601
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1602
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1604
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object v0
.end method

.method public final getGeoBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 1694
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1695
    invoke-direct {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->getGeoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object v0
.end method

.method public final getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 1705
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1706
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;

    return-object v0

    .line 1708
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_1

    .line 1709
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getIfa()Ljava/lang/String;
    .locals 2

    .line 1920
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 1921
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1922
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1924
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1925
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 1928
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1940
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 1941
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1942
    check-cast v0, Ljava/lang/String;

    .line 1943
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1945
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 1948
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getIfv()Ljava/lang/String;
    .locals 2

    .line 2009
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 2010
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2011
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2013
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2014
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 2017
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2029
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 2030
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2031
    check-cast v0, Ljava/lang/String;

    .line 2032
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2034
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 2037
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOs()Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 1458
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1459
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_0
    return-object v0
.end method

.method public final getOsValue()I
    .locals 1

    .line 1435
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    return v0
.end method

.method public final getOsv()Ljava/lang/String;
    .locals 2

    .line 1500
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 1501
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1502
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1504
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1505
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 1508
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1520
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 1521
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1522
    check-cast v0, Ljava/lang/String;

    .line 1523
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1525
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 1528
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdk()Ljava/lang/String;
    .locals 2

    .line 1742
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 1743
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1744
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1746
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1747
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 1750
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1762
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 1763
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1764
    check-cast v0, Ljava/lang/String;

    .line 1765
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1767
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 1770
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkver()Ljava/lang/String;
    .locals 2

    .line 1831
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 1832
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1833
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1835
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1836
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 1839
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1851
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 1852
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1853
    check-cast v0, Ljava/lang/String;

    .line 1854
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1856
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 1859
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSellerId()Ljava/lang/String;
    .locals 2

    .line 1257
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 1258
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1259
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1261
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1262
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 1265
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1277
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 1278
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1279
    check-cast v0, Ljava/lang/String;

    .line 1280
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1282
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 1285
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    .line 2406
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2407
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2408
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2410
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2411
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 2414
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2426
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2427
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2428
    check-cast v0, Ljava/lang/String;

    .line 2429
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2431
    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 2434
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasGeo()Z
    .locals 1

    .line 1591
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1020
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_InitRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/InitRequest;

    const-class v2, Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 1021
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1236
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->access$1900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1242
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1238
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/InitRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 1244
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1157
    instance-of v0, p1, Lio/bidmachine/protobuf/InitRequest;

    if-eqz v0, :cond_0

    .line 1158
    check-cast p1, Lio/bidmachine/protobuf/InitRequest;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1

    .line 1160
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/InitRequest;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1166
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->getDefaultInstance()Lio/bidmachine/protobuf/InitRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1167
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$400(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 1169
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1171
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1172
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$500(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 1173
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1175
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$600(Lio/bidmachine/protobuf/InitRequest;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1176
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getOsValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setOsValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 1178
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1179
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$700(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 1180
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1182
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1183
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 1185
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1186
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$900(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 1187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1189
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSdkver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1190
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$1000(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 1191
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1193
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1194
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$1100(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 1195
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1197
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1198
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$1200(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 1199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1201
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1202
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$1300(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1203
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1205
    :cond_a
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$1400(Lio/bidmachine/protobuf/InitRequest;)I

    move-result v0

    if-eqz v0, :cond_b

    .line 1206
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getDeviceTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setDeviceTypeValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 1208
    :cond_b
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$1500(Lio/bidmachine/protobuf/InitRequest;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 1209
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getContypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->setContypeValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 1211
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getAppVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1212
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$1600(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 1213
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1215
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitRequest;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1216
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$1700(Lio/bidmachine/protobuf/InitRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 1217
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    .line 1219
    :cond_e
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$1800(Lio/bidmachine/protobuf/InitRequest;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 1220
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1653
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1654
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    .line 1656
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 1658
    :cond_0
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1660
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    goto :goto_1

    .line 1662
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2494
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public final setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2358
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2361
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 2362
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAppVerBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2388
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2800(Lcom/explorestack/protobuf/ByteString;)V

    .line 2392
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->appVer_:Ljava/lang/Object;

    .line 2393
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2139
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2143
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 2173
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bmIfv_:Ljava/lang/Object;

    .line 2174
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBundle(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1387
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 1391
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBundleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1417
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2100(Lcom/explorestack/protobuf/ByteString;)V

    .line 1421
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->bundle_:Ljava/lang/Object;

    .line 1422
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2287
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 2291
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setContypeValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2262
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->contype_:I

    .line 2263
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 2226
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceTypeValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2197
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->deviceType_:I

    .line 2198
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/InitRequest$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1131
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public final setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1636
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1637
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1638
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    goto :goto_0

    .line 1640
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 1

    .line 1615
    iget-object v0, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1617
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 1620
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    goto :goto_0

    .line 1622
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1961
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 1965
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIfaBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1991
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1995
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifa_:Ljava/lang/Object;

    .line 1996
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2050
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 2054
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2080
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2084
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->ifv_:Ljava/lang/Object;

    .line 2085
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOs(Lcom/explorestack/protobuf/adcom/OS;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1470
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 1474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsValue(I)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1445
    iput p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->os_:I

    .line 1446
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1541
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 1545
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1571
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1575
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->osv_:Ljava/lang/Object;

    .line 1576
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/InitRequest$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1147
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method

.method public final setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1783
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 1787
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1813
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1817
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdk_:Ljava/lang/Object;

    .line 1818
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1872
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 1876
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkverBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1902
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1906
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sdkver_:Ljava/lang/Object;

    .line 1907
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1298
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 1302
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSellerIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 1328
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2000(Lcom/explorestack/protobuf/ByteString;)V

    .line 1332
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sellerId_:Ljava/lang/Object;

    .line 1333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2447
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2451
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2477
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2479
    invoke-static {p1}, Lio/bidmachine/protobuf/InitRequest;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 2481
    iput-object p1, p0, Lio/bidmachine/protobuf/InitRequest$Builder;->sessionId_:Ljava/lang/Object;

    .line 2482
    invoke-virtual {p0}, Lio/bidmachine/protobuf/InitRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1008
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/InitRequest$Builder;
    .locals 0

    .line 2488
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/InitRequest$Builder;

    return-object p1
.end method
