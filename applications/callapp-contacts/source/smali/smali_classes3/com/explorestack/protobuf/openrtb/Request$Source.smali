.class public final Lcom/explorestack/protobuf/openrtb/Request$Source;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$SourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    }
.end annotation


# static fields
.field public static final CERT_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

.field public static final DIGEST_FIELD_NUMBER:I = 0x4

.field public static final DSGVER_FIELD_NUMBER:I = 0x3

.field public static final DS_FIELD_NUMBER:I = 0x2

.field public static final EXT_FIELD_NUMBER:I = 0x8

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            ">;"
        }
    .end annotation
.end field

.field public static final PCHAIN_FIELD_NUMBER:I = 0x6

.field public static final TID_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile cert_:Ljava/lang/Object;

.field private volatile digest_:Ljava/lang/Object;

.field private volatile ds_:Ljava/lang/Object;

.field private dsgver_:I

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

.field private volatile pchain_:Ljava/lang/Object;

.field private volatile tid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2440
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 2448
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 442
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 916
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedIsInitialized:B

    const-string v0, ""

    .line 443
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    .line 444
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    .line 445
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    .line 446
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    .line 447
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    .line 448
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 467
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>()V

    .line 469
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_d

    .line 477
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0xa

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12

    if-eq v4, v5, :cond_9

    const/16 v5, 0x18

    if-eq v4, v5, :cond_8

    const/16 v5, 0x22

    if-eq v4, v5, :cond_7

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x32

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x42

    if-eq v4, v5, :cond_1

    .line 540
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/openrtb/Request$Source;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 528
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 529
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 531
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 533
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 534
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 519
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 522
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    .line 523
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 522
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 512
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 514
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    goto :goto_0

    .line 506
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 508
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    goto :goto_0

    .line 500
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 502
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    goto :goto_0

    .line 496
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    goto/16 :goto_0

    .line 489
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 491
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 483
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 485
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 551
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 552
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 549
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_c

    .line 555
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    .line 557
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->makeExtensionsImmutable()V

    .line 559
    throw p1

    :cond_d
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_e

    .line 555
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    .line 557
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 558
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 440
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 916
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/explorestack/protobuf/openrtb/Request$Source;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/util/List;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 433
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 433
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 433
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 433
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 433
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 433
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 433
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 433
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/openrtb/Request$Source;I)I
    .locals 0

    .line 433
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    return p1
.end method

.method static synthetic access$700(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/openrtb/Request$Source;)Ljava/lang/Object;
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/explorestack/protobuf/openrtb/Request$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1

    .line 2444
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 563
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1133
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1136
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1107
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1113
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1114
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1074
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1080
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1120
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1127
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1094
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1095
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1101
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1102
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1063
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1069
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1084
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1090
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            ">;"
        }
    .end annotation

    .line 2459
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1000
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    if-nez v1, :cond_1

    .line 1001
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1003
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    .line 1005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v1

    .line 1006
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1007
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1009
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v1

    .line 1010
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 1011
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1013
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 1015
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 1017
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 1018
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1019
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 1020
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 1022
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 1023
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 1024
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCert()Ljava/lang/String;
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    .line 747
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 748
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 750
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 752
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 753
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCertBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    .line 769
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 770
    check-cast v0, Ljava/lang/String;

    .line 771
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 773
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    return-object v0

    .line 776
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Source;
    .locals 1

    .line 2469
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    return-object v0
.end method

.method public final getDigest()Ljava/lang/String;
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    .line 702
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 703
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 705
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 707
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 708
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDigestBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    .line 723
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 724
    check-cast v0, Ljava/lang/String;

    .line 725
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 727
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    return-object v0

    .line 730
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDs()Ljava/lang/String;
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    .line 640
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 641
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 643
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 645
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 646
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDsBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    .line 665
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 666
    check-cast v0, Ljava/lang/String;

    .line 667
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 669
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    return-object v0

    .line 672
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDsgver()I
    .locals 1

    .line 687
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    return v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

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

    .line 871
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

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

    .line 882
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Source;",
            ">;"
        }
    .end annotation

    .line 2464
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPchain()Ljava/lang/String;
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    .line 794
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 795
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 797
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 799
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 800
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPchainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    .line 817
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 818
    check-cast v0, Ljava/lang/String;

    .line 819
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 821
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    return-object v0

    .line 824
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 959
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 963
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 966
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 967
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 969
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 971
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 973
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigestBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 974
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 976
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCertBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 977
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 979
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    .line 980
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 982
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/4 v2, 0x7

    .line 983
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    .line 984
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 986
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 990
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 991
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedSize:I

    return v0
.end method

.method public final getTid()Ljava/lang/String;
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    .line 589
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 590
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 592
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 594
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 595
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    .line 613
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 614
    check-cast v0, Ljava/lang/String;

    .line 615
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 617
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    return-object v0

    .line 620
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1030
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1031
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedHashCode:I

    return v0

    .line 1034
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1036
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1040
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsgver()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1042
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 1044
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 1046
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1047
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 1049
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1051
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 1053
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 1055
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1056
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 569
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Source_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    .line 570
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 919
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 923
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 1

    .line 1131
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Source;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 1147
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 455
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Request$Source;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Request$Source;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;
    .locals 2

    .line 1140
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Source;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Source;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 1141
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Source;)Lcom/explorestack/protobuf/openrtb/Request$Source$Builder;

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

    .line 930
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getTidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->tid_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDsBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 934
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ds_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 936
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->dsgver_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 937
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 939
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getDigestBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 940
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->digest_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 942
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getCertBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 943
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->cert_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 945
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getPchainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 946
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->pchain_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_5
    const/4 v0, 0x0

    .line 948
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    .line 949
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Source;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 954
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Source;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
