.class public final Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

.field public static final DISPLAY_FIELD_NUMBER:I = 0x3

.field public static final EXT_FIELD_NUMBER:I = 0x5

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;"
        }
    .end annotation
.end field

.field public static final VCM_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

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

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private vcm_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20860
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    .line 20868
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19356
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 19652
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->memoizedIsInitialized:B

    const-string v0, ""

    .line 19357
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;

    .line 19358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19377
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;-><init>()V

    .line 19379
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19383
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 19387
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_8

    const/16 v5, 0x10

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_1

    .line 19439
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 19427
    :cond_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_2

    .line 19428
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v6

    .line 19430
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v6, :cond_0

    .line 19432
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 19433
    invoke-virtual {v6}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 19418
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 19421
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    .line 19422
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 19421
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19405
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v4, :cond_6

    .line 19406
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v6

    .line 19408
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v6, :cond_0

    .line 19410
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 19411
    invoke-virtual {v6}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    goto :goto_0

    .line 19400
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->vcm_:I

    goto/16 :goto_0

    .line 19393
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 19395
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;
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

    .line 19450
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 19451
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 19448
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_a

    .line 19454
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    .line 19456
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 19457
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->makeExtensionsImmutable()V

    .line 19458
    throw p1

    :cond_b
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_c

    .line 19454
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    .line 19456
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 19457
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19347
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 19354
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 19652
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 19347
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$14300()Z
    .locals 1

    .line 19347
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$14500(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;)Ljava/lang/Object;
    .locals 0

    .line 19347
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19347
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;I)I
    .locals 0

    .line 19347
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->vcm_:I

    return p1
.end method

.method static synthetic access$14702(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 0

    .line 19347
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p1
.end method

.method static synthetic access$14802(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 19347
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$14900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;)Ljava/util/List;
    .locals 0

    .line 19347
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 19347
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15000()Z
    .locals 1

    .line 19347
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15100(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 19347
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$15200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 19347
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19347
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1

    .line 20864
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19462
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_Companion_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;
    .locals 1

    .line 19845
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;
    .locals 1

    .line 19848
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19818
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19819
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19825
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19826
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19786
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19792
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19831
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19832
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19838
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19839
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19806
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19807
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19813
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 19814
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19775
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19781
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19796
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19802
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;"
        }
    .end annotation

    .line 20879
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 19719
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    if-nez v1, :cond_1

    .line 19720
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19722
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    .line 19724
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getId()Ljava/lang/String;

    move-result-object v1

    .line 19725
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 19726
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getVcm()I

    move-result v1

    .line 19727
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getVcm()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 19728
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->hasDisplay()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->hasDisplay()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 19729
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v1

    .line 19731
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 19733
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 19734
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19735
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 19736
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 19738
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 19739
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 19740
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 19347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 19347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1

    .line 20889
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object v0
.end method

.method public final getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1

    .line 19551
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getDisplayOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;
    .locals 1

    .line 19561
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 19584
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 19594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 19638
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 19628
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

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

    .line 19607
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 19649
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

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

    .line 19618
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 19483
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;

    .line 19484
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19485
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 19487
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19489
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19490
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19503
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;

    .line 19504
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19505
    check-cast v0, Ljava/lang/String;

    .line 19506
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19508
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;

    return-object v0

    .line 19511
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
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;"
        }
    .end annotation

    .line 20884
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 19686
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 19690
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 19691
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 19693
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->vcm_:I

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 19695
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 19697
    :cond_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 19699
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19701
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 19702
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    .line 19703
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19705
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 19707
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19709
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 19710
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 19371
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getVcm()I
    .locals 1

    .line 19528
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->vcm_:I

    return v0
.end method

.method public final hasDisplay()Z
    .locals 1

    .line 19541
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 19574
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 19746
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 19747
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->memoizedHashCode:I

    return v0

    .line 19750
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 19752
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 19754
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getVcm()I

    move-result v1

    add-int/2addr v0, v1

    .line 19755
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 19757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19759
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 19761
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19763
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 19765
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 19767
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19768
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 19468
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_Companion_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    .line 19469
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 19655
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 19659
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19347
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;
    .locals 1

    .line 19843
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;
    .locals 2

    .line 19859
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 19365
    new-instance p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;
    .locals 2

    .line 19852
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    .line 19853
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder;

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

    .line 19666
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19667
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19669
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->vcm_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 19670
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 19672
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 19673
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_2
    const/4 v0, 0x0

    .line 19675
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    .line 19676
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19678
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 19679
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 19681
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
