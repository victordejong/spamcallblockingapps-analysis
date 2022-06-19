.class public final Lio/bidmachine/protobuf/analytics/AuctionContext;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/analytics/AuctionContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    }
.end annotation


# static fields
.field public static final AT_FIELD_NUMBER:I = 0x4

.field public static final CONTEXT_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final ITEM_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLACEMENT_FIELD_NUMBER:I = 0x7

.field public static final PLACEMENT_TAG_FIELD_NUMBER:I = 0x5

.field public static final TEST_FIELD_NUMBER:I = 0x3

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private at_:I

.field private context_:Lcom/explorestack/protobuf/adcom/Context;

.field private volatile id_:Ljava/lang/Object;

.field private item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

.field private memoizedIsInitialized:B

.field private placementTag_:I

.field private placement_:Lcom/explorestack/protobuf/adcom/Placement;

.field private test_:Z

.field private volatile timestamp_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1383
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-direct {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 1391
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 319
    iput-byte v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedIsInitialized:B

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>()V

    .line 42
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_c

    const/16 v4, 0xa

    if-eq v3, v4, :cond_b

    const/16 v4, 0x12

    if-eq v3, v4, :cond_a

    const/16 v4, 0x18

    if-eq v3, v4, :cond_9

    const/16 v4, 0x20

    if-eq v3, v4, :cond_8

    const/16 v4, 0x28

    if-eq v3, v4, :cond_7

    const/16 v4, 0x32

    const/4 v5, 0x0

    if-eq v3, v4, :cond_5

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_1

    .line 122
    invoke-virtual {p0, p1, v0, p2, v3}, Lio/bidmachine/protobuf/analytics/AuctionContext;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 110
    :cond_1
    iget-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;

    move-result-object v5

    .line 113
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context;

    iput-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/adcom/Context$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 116
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Context$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    goto :goto_0

    .line 97
    :cond_3
    iget-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v3, :cond_4

    .line 98
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v5

    .line 100
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Placement;

    iput-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v5, :cond_0

    .line 102
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 103
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    goto :goto_0

    .line 84
    :cond_5
    iget-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v3, :cond_6

    .line 85
    invoke-virtual {v3}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v5

    .line 87
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/openrtb/Request$Item;

    iput-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v5, :cond_0

    .line 89
    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 90
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    goto/16 :goto_0

    .line 77
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 79
    iput v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    goto/16 :goto_0

    .line 73
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    goto/16 :goto_0

    .line 68
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    goto/16 :goto_0

    .line 61
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 63
    iput-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 55
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 57
    iput-object v3, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 133
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 134
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 131
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->makeExtensionsImmutable()V

    .line 138
    throw p1

    .line 136
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 319
    iput-byte p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    return-object p1
.end method

.method static synthetic access$1102(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/adcom/Context;)Lcom/explorestack/protobuf/adcom/Context;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    return-object p1
.end method

.method static synthetic access$1200(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/analytics/AuctionContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/analytics/AuctionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/analytics/AuctionContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/analytics/AuctionContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/analytics/AuctionContext;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    return p1
.end method

.method static synthetic access$702(Lio/bidmachine/protobuf/analytics/AuctionContext;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    return p1
.end method

.method static synthetic access$800(Lio/bidmachine/protobuf/analytics/AuctionContext;)I
    .locals 0

    .line 9
    iget p0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    return p0
.end method

.method static synthetic access$802(Lio/bidmachine/protobuf/analytics/AuctionContext;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    return p1
.end method

.method static synthetic access$902(Lio/bidmachine/protobuf/analytics/AuctionContext;Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1

    .line 1387
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 142
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 547
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 550
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 521
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 528
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 488
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 494
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 534
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 541
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 509
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 516
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 477
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 483
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 498
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 504
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            ">;"
        }
    .end annotation

    .line 1402
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 406
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    if-nez v1, :cond_1

    .line 407
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 409
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    .line 411
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 413
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 415
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v1

    .line 416
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 417
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v1

    .line 418
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 419
    :cond_5
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    iget v3, p1, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    if-eq v1, v3, :cond_6

    return v2

    .line 420
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 421
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 422
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    .line 423
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/openrtb/Request$Item;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 425
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 426
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 427
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    .line 428
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Placement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 430
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 431
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 432
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    .line 433
    invoke-virtual {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 435
    :cond_c
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/analytics/AuctionContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAt()I
    .locals 1

    .line 236
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    return v0
.end method

.method public final getContext()Lcom/explorestack/protobuf/adcom/Context;
    .locals 1

    .line 310
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getContextOrBuilder()Lcom/explorestack/protobuf/adcom/ContextOrBuilder;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/analytics/AuctionContext;
    .locals 1

    .line 1412
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 193
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    .line 194
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 197
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 199
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 200
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 209
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    .line 210
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Ljava/lang/String;

    .line 212
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 214
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    return-object v0

    .line 217
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 268
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getItemOrBuilder()Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;
    .locals 1

    .line 274
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/analytics/AuctionContext;",
            ">;"
        }
    .end annotation

    .line 1407
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPlacement()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 289
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getPlacementOrBuilder()Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;
    .locals 1

    .line 295
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final getPlacementTag()Lio/bidmachine/protobuf/analytics/PlacementTag;
    .locals 1

    .line 252
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/analytics/PlacementTag;->valueOf(I)Lio/bidmachine/protobuf/analytics/PlacementTag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    sget-object v0, Lio/bidmachine/protobuf/analytics/PlacementTag;->UNRECOGNIZED:Lio/bidmachine/protobuf/analytics/PlacementTag;

    :cond_0
    return-object v0
.end method

.method public final getPlacementTagValue()I
    .locals 1

    .line 245
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 362
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestampBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 367
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 370
    iget-object v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 372
    :cond_2
    iget-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 374
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 376
    :cond_3
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    .line 378
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 380
    :cond_4
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    sget-object v2, Lio/bidmachine/protobuf/analytics/PlacementTag;->PLACEMENT_TAG_INVALID:Lio/bidmachine/protobuf/analytics/PlacementTag;

    invoke-virtual {v2}, Lio/bidmachine/protobuf/analytics/PlacementTag;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_5

    const/4 v0, 0x5

    .line 381
    iget v2, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    .line 382
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 384
    :cond_5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    .line 386
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 388
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    .line 390
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 392
    :cond_7
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    .line 394
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 396
    :cond_8
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 397
    iput v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedSize:I

    return v1
.end method

.method public final getTest()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    return v0
.end method

.method public final getTimestamp()Ljava/lang/String;
    .locals 2

    .line 159
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    .line 160
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 163
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 165
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 166
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimestampBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 175
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    .line 176
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 180
    iput-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    return-object v0

    .line 183
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasContext()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasItem()Z
    .locals 1

    .line 262
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPlacement()Z
    .locals 1

    .line 283
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 441
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 442
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedHashCode:I

    return v0

    .line 445
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 447
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 449
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 452
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTest()Z

    move-result v1

    .line 451
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 454
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getAt()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 456
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    add-int/2addr v0, v1

    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasItem()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 459
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasPlacement()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 463
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Placement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Context;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 469
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    iput v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 148
    sget-object v0, Lio/bidmachine/protobuf/analytics/AnalyticsProto;->internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    const-class v2, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 322
    iget-byte v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 326
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilderForType()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilderForType()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 1

    .line 545
    invoke-static {}, Lio/bidmachine/protobuf/analytics/AuctionContext;->newBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 2

    .line 561
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 28
    new-instance p1, Lio/bidmachine/protobuf/analytics/AuctionContext;

    invoke-direct {p1}, Lio/bidmachine/protobuf/analytics/AuctionContext;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;
    .locals 2

    .line 554
    sget-object v0, Lio/bidmachine/protobuf/analytics/AuctionContext;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/analytics/AuctionContext;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>(Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;-><init>(Lio/bidmachine/protobuf/analytics/AuctionContext$1;)V

    .line 555
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;->mergeFrom(Lio/bidmachine/protobuf/analytics/AuctionContext;)Lio/bidmachine/protobuf/analytics/AuctionContext$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getTimestampBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 334
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->timestamp_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 336
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 337
    iget-object v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 339
    :cond_1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->test_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 340
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 342
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->at_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 343
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 345
    :cond_3
    iget v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    sget-object v1, Lio/bidmachine/protobuf/analytics/PlacementTag;->PLACEMENT_TAG_INVALID:Lio/bidmachine/protobuf/analytics/PlacementTag;

    invoke-virtual {v1}, Lio/bidmachine/protobuf/analytics/PlacementTag;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 346
    iget v1, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placementTag_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 348
    :cond_4
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->item_:Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 349
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getItem()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 351
    :cond_5
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->placement_:Lcom/explorestack/protobuf/adcom/Placement;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 352
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getPlacement()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 354
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->context_:Lcom/explorestack/protobuf/adcom/Context;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 355
    invoke-virtual {p0}, Lio/bidmachine/protobuf/analytics/AuctionContext;->getContext()Lcom/explorestack/protobuf/adcom/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 357
    :cond_7
    iget-object v0, p0, Lio/bidmachine/protobuf/analytics/AuctionContext;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
