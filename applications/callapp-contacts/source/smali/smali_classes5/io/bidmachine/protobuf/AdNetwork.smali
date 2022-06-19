.class public final Lio/bidmachine/protobuf/AdNetwork;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/AdNetworkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdNetwork$Builder;,
        Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;,
        Lio/bidmachine/protobuf/AdNetwork$AdUnit;,
        Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;
    }
.end annotation


# static fields
.field public static final AD_UNITS_FIELD_NUMBER:I = 0x4

.field public static final CLASS_NAME_FIELD_NUMBER:I = 0x2

.field public static final CUSTOM_PARAMS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private adUnits_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile className_:Ljava/lang/Object;

.field private customParams_:Lcom/explorestack/protobuf/MapField;
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

.field private volatile name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2124
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdNetwork;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    .line 2132
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdNetwork$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1180
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedIsInitialized:B

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;-><init>()V

    .line 42
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v5, 0xa

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    .line 90
    invoke-virtual {p0, p1, v0, p2, v4}, Lio/bidmachine/protobuf/AdNetwork;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_2

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 85
    :cond_2
    iget-object v4, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    .line 86
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 85
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 69
    sget-object v4, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v4}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v3, v3, 0x1

    .line 74
    :cond_4
    sget-object v4, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 75
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    .line 74
    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MapEntry;

    .line 76
    iget-object v5, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v5}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v5

    .line 77
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 76
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 64
    iput-object v4, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 58
    iput-object v4, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
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

    :goto_2
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_8

    .line 105
    iget-object p2, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    .line 107
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdNetwork;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 108
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->makeExtensionsImmutable()V

    .line 109
    throw p1

    :cond_9
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_a

    .line 105
    iget-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    .line 107
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 108
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 1180
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdNetwork;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/AdNetwork;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1500(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1502(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1700(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$1702(Lio/bidmachine/protobuf/AdNetwork;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1802(Lio/bidmachine/protobuf/AdNetwork;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1900(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/AdNetwork;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2100(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/AdNetwork;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/AdNetwork;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;
    .locals 1

    .line 2128
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 113
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
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

    .line 1085
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1086
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1362
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1365
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1335
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1336
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1342
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1343
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1303
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1309
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1348
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1349
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1355
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1356
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1323
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1324
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1330
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1331
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1292
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1298
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1313
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1319
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation

    .line 2143
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsCustomParams(Ljava/lang/String;)Z
    .locals 1

    .line 1101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

    .line 1248
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/AdNetwork;

    if-nez v1, :cond_1

    .line 1249
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1251
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    .line 1253
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1254
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1255
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1256
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1257
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 1258
    invoke-direct {p1}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 1257
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1259
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsList()Ljava/util/List;

    move-result-object v1

    .line 1260
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1261
    :cond_5
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/AdNetwork;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAdUnits(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1

    .line 1170
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p1
.end method

.method public final getAdUnitsCount()I
    .locals 1

    .line 1164
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getAdUnitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1151
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-object v0
.end method

.method public final getAdUnitsOrBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;
    .locals 1

    .line 1177
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;

    return-object p1
.end method

.method public final getAdUnitsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1158
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 2

    .line 1041
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    .line 1042
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1043
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1045
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1047
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1048
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getClassNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1057
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    .line 1058
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1059
    check-cast v0, Ljava/lang/String;

    .line 1060
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1062
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    return-object v0

    .line 1065
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getCustomParams()Ljava/util/Map;
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

    .line 1109
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsCount()I
    .locals 1

    .line 1093
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getCustomParamsMap()Ljava/util/Map;
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

    .line 1116
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1125
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1128
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

.method public final getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1136
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1139
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1140
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;
    .locals 1

    .line 2153
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1007
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    .line 1008
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1009
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1011
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1013
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1014
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1023
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    .line 1024
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1025
    check-cast v0, Ljava/lang/String;

    .line 1026
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1028
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    return-object v0

    .line 1031
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation

    .line 2148
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 1214
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1219
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1221
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getClassNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 1222
    iget-object v3, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1225
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1227
    sget-object v4, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 1228
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v4

    .line 1229
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 1230
    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v3

    const/4 v4, 0x3

    .line 1232
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 1234
    :cond_3
    :goto_2
    iget-object v2, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 1235
    iget-object v3, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    .line 1236
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1238
    :cond_4
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1239
    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1267
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1268
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedHashCode:I

    return v0

    .line 1271
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1273
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1275
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1276
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1278
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1280
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1282
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getAdUnitsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 1284
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1285
    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 131
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdNetwork;

    const-class v2, Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 122
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid map field number: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1183
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1187
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdNetwork;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1360
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->newBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2

    .line 1376
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 28
    new-instance p1, Lio/bidmachine/protobuf/AdNetwork;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdNetwork;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2

    .line 1369
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>(Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>(Lio/bidmachine/protobuf/AdNetwork$1;)V

    .line 1370
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1194
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1195
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork;->getClassNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1198
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork;->className_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1203
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/4 v2, 0x3

    .line 1201
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    const/4 v0, 0x0

    .line 1206
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x4

    .line 1207
    iget-object v2, p0, Lio/bidmachine/protobuf/AdNetwork;->adUnits_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1209
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
