.class public final Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Banner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

.field public static final EXT_FIELD_NUMBER:I = 0x4

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x3

.field public static final IMG_FIELD_NUMBER:I = 0x1

.field public static final LINK_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
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

.field private volatile img_:Ljava/lang/Object;

.field private volatile link_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4639
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 4647
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3294
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3572
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->memoizedIsInitialized:B

    const-string v0, ""

    .line 3295
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;

    .line 3296
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    .line 3297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3316
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;-><init>()V

    .line 3318
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3322
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 3326
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

    .line 3366
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 3354
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 3355
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 3357
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 3359
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 3360
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 3345
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 3348
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    .line 3349
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 3348
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3338
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3340
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    goto :goto_0

    .line 3332
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3334
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;
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

    .line 3377
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3378
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3375
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_8

    .line 3381
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    .line 3383
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3384
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->makeExtensionsImmutable()V

    .line 3385
    throw p1

    :cond_9
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_a

    .line 3381
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    .line 3383
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3384
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3285
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 3292
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3572
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 3285
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .line 3285
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/lang/Object;
    .locals 0

    .line 3285
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3285
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/lang/Object;
    .locals 0

    .line 3285
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3285
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 3285
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Ljava/util/List;
    .locals 0

    .line 3285
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3285
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2600()Z
    .locals 1

    .line 3285
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 3285
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 3285
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3285
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3285
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1

    .line 4643
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3389
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 3748
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 3751
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3721
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3722
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3728
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3729
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3689
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3695
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3734
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3735
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3741
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3742
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3709
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3710
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3716
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3717
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3678
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3684
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3699
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3705
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;",
            ">;"
        }
    .end annotation

    .line 4658
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3631
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-nez v1, :cond_1

    .line 3632
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3634
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 3636
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getImg()Ljava/lang/String;

    move-result-object v1

    .line 3637
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 3638
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 3639
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 3640
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 3641
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 3643
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 3645
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 3646
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 3647
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1

    .line 4668
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 3504
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 3514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 3558
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 3548
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

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

    .line 3527
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 3569
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

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

    .line 3538
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getImg()Ljava/lang/String;
    .locals 2

    .line 3410
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;

    .line 3411
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3412
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3414
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3416
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3417
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getImgBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3430
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;

    .line 3431
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3432
    check-cast v0, Ljava/lang/String;

    .line 3433
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3435
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;

    return-object v0

    .line 3438
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 2

    .line 3452
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    .line 3453
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3454
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3456
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3458
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3459
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getLinkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3472
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    .line 3473
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3474
    check-cast v0, Ljava/lang/String;

    .line 3475
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3477
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    return-object v0

    .line 3480
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
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;",
            ">;"
        }
    .end annotation

    .line 4663
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 3603
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3607
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getImgBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3608
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3610
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getLinkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 3611
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3613
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 3614
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    .line 3615
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3617
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 3619
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3621
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3622
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 3310
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 3494
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 3653
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3654
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->memoizedHashCode:I

    return v0

    .line 3657
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3661
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 3664
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3666
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 3668
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 3670
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3671
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3395
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    .line 3396
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3575
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3579
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3285
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 3746
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 2

    .line 3762
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 3304
    new-instance p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 2

    .line 3755
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 3756
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

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

    .line 3586
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getImgBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3587
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->img_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3589
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getLinkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 3590
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->link_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 3592
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 3593
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3595
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 3596
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3598
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
