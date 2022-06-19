.class public final Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Seatbid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;,
        Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;,
        Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;
    }
.end annotation


# static fields
.field public static final BID_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

.field public static final EXT_FIELD_NUMBER:I = 0x5

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x4

.field public static final PACKAGE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEAT_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            ">;"
        }
    .end annotation
.end field

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private memoizedIsInitialized:B

.field private package_:Z

.field private volatile seat_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7359
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    .line 7367
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 342
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5938
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->memoizedIsInitialized:B

    const-string v0, ""

    .line 343
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;

    .line 344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    .line 345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 364
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;-><init>()V

    .line 366
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 374
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_8

    const/16 v5, 0x10

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 422
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 410
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 411
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 413
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 416
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    .line 401
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 404
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    .line 405
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 404
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_6

    .line 392
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 395
    :cond_6
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    .line 396
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 395
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->package_:Z

    goto/16 :goto_0

    .line 380
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 382
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 433
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 434
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 431
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_a

    .line 437
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_b

    .line 440
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    .line 442
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->makeExtensionsImmutable()V

    .line 444
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_d

    .line 437
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_e

    .line 440
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    .line 442
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 340
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5938
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4900()Z
    .locals 1

    .line 333
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/lang/Object;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Z)Z
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->package_:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5302(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5502(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5600()Z
    .locals 1

    .line 333
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5700()Z
    .locals 1

    .line 333
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$5900()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 333
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 333
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1

    .line 7363
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 448
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6129
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6132
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6102
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6103
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6109
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6110
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6070
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6076
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6115
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6116
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6122
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6123
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6090
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6091
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6097
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 6098
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6059
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6065
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6080
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6086
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;"
        }
    .end annotation

    .line 7378
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 6005
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    if-nez v1, :cond_1

    .line 6006
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6008
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    .line 6010
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    move-result-object v1

    .line 6011
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6012
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getPackage()Z

    move-result v1

    .line 6013
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getPackage()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 6014
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBidList()Ljava/util/List;

    move-result-object v1

    .line 6015
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBidList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 6016
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 6017
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6018
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 6019
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 6021
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 6022
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 6023
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getBid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1

    .line 5835
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p1
.end method

.method public final getBidCount()I
    .locals 1

    .line 5824
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getBidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            ">;"
        }
    .end annotation

    .line 5801
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    return-object v0
.end method

.method public final getBidOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;
    .locals 1

    .line 5847
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;

    return-object p1
.end method

.method public final getBidOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5813
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1

    .line 7388
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 5870
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 5880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 5924
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 5914
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 5893
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 5935
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public final getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5904
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getPackage()Z
    .locals 1

    .line 5787
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->package_:Z

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;"
        }
    .end annotation

    .line 7383
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSeat()Ljava/lang/String;
    .locals 2

    .line 5742
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;

    .line 5743
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5744
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5746
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5748
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5749
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSeatBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5762
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;

    .line 5763
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5764
    check-cast v0, Ljava/lang/String;

    .line 5765
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5767
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;

    return-object v0

    .line 5770
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 5972
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 5976
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5977
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5979
    :goto_0
    iget-boolean v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->package_:Z

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 5981
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    const/4 v2, 0x0

    .line 5983
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x3

    .line 5984
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    .line 5985
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5987
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 5988
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    .line 5989
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5991
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 5993
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5995
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5996
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 5860
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 6029
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 6030
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->memoizedHashCode:I

    return v0

    .line 6033
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 6035
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getPackage()Z

    move-result v1

    .line 6037
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 6039
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBidCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6041
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBidList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6043
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 6045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6047
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6049
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 6051
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6052
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 454
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    .line 455
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5941
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5945
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 333
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6127
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->newBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 2

    .line 6143
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Response$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 352
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 2

    .line 6136
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V

    .line 6137
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeatBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5953
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->seat_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5955
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->package_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5956
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5958
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 5959
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->bid_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5961
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    .line 5962
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5964
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 5965
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5967
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
