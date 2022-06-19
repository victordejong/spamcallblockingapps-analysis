.class public final Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;,
        Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;,
        Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final BIDDER_FIELD_NUMBER:I = 0x1

.field public static final CLIENT_PARAMS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVER_PARAMS_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile bidder_:Ljava/lang/Object;

.field private clientParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private serverParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1158
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-direct {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 1166
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 361
    iput-byte v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedIsInitialized:B

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>()V

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v5, 0xa

    if-eq v4, v5, :cond_5

    const/16 v5, 0x12

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_1

    .line 90
    invoke-virtual {p0, p1, v0, p2, v4}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_2

    .line 78
    sget-object v4, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v4}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v3, v3, 0x2

    .line 83
    :cond_2
    sget-object v4, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 84
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    .line 83
    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MapEntry;

    .line 85
    iget-object v5, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v5}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v5

    .line 86
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 85
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 65
    sget-object v4, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v4}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v3, v3, 0x1

    .line 70
    :cond_4
    sget-object v4, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 71
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    .line 70
    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MapEntry;

    .line 72
    iget-object v5, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v5}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v5

    .line 73
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 72
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 60
    iput-object v4, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 101
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 102
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 99
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->makeExtensionsImmutable()V

    .line 106
    throw p1

    .line 104
    :cond_7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 361
    iput-byte p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$700(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 13
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 13
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1

    .line 1162
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 110
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetClientParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->clientParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetServerParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->serverParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 286
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 542
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 545
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 516
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 523
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 483
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 489
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 529
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 536
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 504
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 511
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 472
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 478
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 493
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 499
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
            ">;"
        }
    .end annotation

    .line 1177
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsClientParams(Ljava/lang/String;)Z
    .locals 1

    .line 213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsServerParams(Ljava/lang/String;)Z
    .locals 1

    .line 305
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 432
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    if-nez v1, :cond_1

    .line 433
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 435
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    .line 437
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 439
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 440
    invoke-direct {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 439
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 441
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 442
    invoke-direct {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 441
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 443
    :cond_4
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBidder()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    .line 146
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 149
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 151
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 152
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getBidderBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 165
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    .line 166
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 167
    check-cast v0, Ljava/lang/String;

    .line 168
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 170
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    return-object v0

    .line 173
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getClientParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getClientParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getClientParamsCount()I
    .locals 1

    .line 201
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getClientParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getClientParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 245
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 248
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getClientParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 260
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 263
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1

    .line 1187
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
            ">;"
        }
    .end annotation

    .line 1182
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 395
    iget v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidderBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 400
    iget-object v2, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 403
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 405
    sget-object v3, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 406
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 407
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    const/4 v3, 0x2

    .line 410
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 413
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 415
    sget-object v3, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 416
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 417
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 418
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    const/4 v3, 0x3

    .line 420
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 422
    :cond_3
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 423
    iput v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedSize:I

    return v1
.end method

.method public final getServerParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getServerParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getServerParamsCount()I
    .locals 1

    .line 293
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getServerParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 324
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getServerParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 337
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 340
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getServerParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 355
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 356
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 449
    iget v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 450
    iget v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedHashCode:I

    return v0

    .line 453
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 455
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 458
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 462
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 464
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    iput v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 130
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    const-class v2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 121
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid map field number: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 364
    iget-byte v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 368
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->newBuilderForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->newBuilderForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 540
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 2

    .line 556
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 30
    new-instance p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-direct {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 2

    .line 549
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V

    .line 550
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidderBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 376
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->bidder_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 381
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/4 v2, 0x2

    .line 379
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 387
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/4 v2, 0x3

    .line 385
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 390
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
