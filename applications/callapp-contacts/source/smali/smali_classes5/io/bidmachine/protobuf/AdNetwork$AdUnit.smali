.class public final Lio/bidmachine/protobuf/AdNetwork$AdUnit;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdUnit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;,
        Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;
    }
.end annotation


# static fields
.field public static final AD_FORMAT_FIELD_NUMBER:I = 0x1

.field public static final CUSTOM_PARAMS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile adFormat_:Ljava/lang/Object;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 967
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    .line 975
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 404
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedIsInitialized:B

    const-string v0, ""

    .line 197
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>()V

    .line 218
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 226
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    .line 251
    invoke-virtual {p0, p1, v0, p2, v4}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_2

    .line 239
    sget-object v4, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v4}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v3, v3, 0x1

    .line 244
    :cond_2
    sget-object v4, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 245
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    .line 244
    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MapEntry;

    .line 246
    iget-object v5, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v5}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v5

    .line 247
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 246
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 234
    iput-object v4, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 262
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 263
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 260
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 266
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->makeExtensionsImmutable()V

    .line 267
    throw p1

    .line 265
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 266
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 194
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 404
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 187
    sget-boolean v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Ljava/lang/Object;
    .locals 0

    .line 187
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/AdNetwork$AdUnit;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 187
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/AdNetwork$AdUnit;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 187
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 187
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 187
    iget-object p0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 187
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 187
    invoke-static {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1

    .line 971
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 271
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 344
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 345
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 563
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 566
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 537
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 544
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 504
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 510
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 550
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 557
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 525
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 532
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 493
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 499
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 514
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 520
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation

    .line 986
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsCustomParams(Ljava/lang/String;)Z
    .locals 1

    .line 360
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

    .line 459
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    if-nez v1, :cond_1

    .line 460
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 462
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    .line 464
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 466
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 467
    invoke-direct {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v3

    .line 466
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 468
    :cond_3
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAdFormat()Ljava/lang/String;
    .locals 2

    .line 300
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    .line 301
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 302
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 304
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 306
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 307
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAdFormatBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 316
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    .line 317
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 318
    check-cast v0, Ljava/lang/String;

    .line 319
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 321
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    return-object v0

    .line 324
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

    .line 368
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsCount()I
    .locals 1

    .line 352
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

    .line 375
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 384
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 387
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

    .line 395
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 398
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 399
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1

    .line 996
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation

    .line 991
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 432
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 437
    iget-object v2, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 440
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

    .line 442
    sget-object v3, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 443
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 444
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    const/4 v3, 0x2

    .line 447
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 450
    iput v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 210
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 474
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 475
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedHashCode:I

    return v0

    .line 478
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 480
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 481
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 483
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 485
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 289
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    const-class v2, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 280
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 282
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

    .line 407
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 411
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 561
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->newBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 2

    .line 577
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 204
    new-instance p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 2

    .line 570
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>(Lio/bidmachine/protobuf/AdNetwork$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>(Lio/bidmachine/protobuf/AdNetwork$1;)V

    .line 571
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

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

    .line 418
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 419
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->adFormat_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 424
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/4 v2, 0x2

    .line 422
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 427
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
