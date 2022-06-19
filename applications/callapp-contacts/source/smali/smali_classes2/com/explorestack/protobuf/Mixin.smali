.class public final Lcom/explorestack/protobuf/Mixin;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MixinOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Mixin$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Mixin;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Mixin;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROOT_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private volatile root_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 833
    new-instance v0, Lcom/explorestack/protobuf/Mixin;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Mixin;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Mixin;

    .line 841
    new-instance v0, Lcom/explorestack/protobuf/Mixin$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Mixin$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 248
    iput-byte v0, p0, Lcom/explorestack/protobuf/Mixin;->memoizedIsInitialized:B

    const-string v0, ""

    .line 84
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;

    .line 85
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/explorestack/protobuf/Mixin;-><init>()V

    .line 106
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 113
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    .line 131
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/Mixin;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 127
    iput-object v3, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 121
    iput-object v3, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 142
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 143
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 140
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Mixin;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->makeExtensionsImmutable()V

    .line 147
    throw p1

    .line 145
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Mixin;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Mixin$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Mixin;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 81
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 248
    iput-byte p1, p0, Lcom/explorestack/protobuf/Mixin;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Mixin$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Mixin;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/Mixin;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Mixin;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/Mixin;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Mixin;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 74
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Mixin;
    .locals 1

    .line 837
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Mixin;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 151
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 395
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Mixin;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Mixin;->toBuilder()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 398
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Mixin;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Mixin;->toBuilder()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 369
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 376
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 342
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 382
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 389
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 357
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 364
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Mixin;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Mixin;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 852
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 293
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Mixin;

    if-nez v1, :cond_1

    .line 294
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 296
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Mixin;

    .line 298
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Mixin;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Mixin;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Mixin;
    .locals 1

    .line 862
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Mixin;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;

    .line 173
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 174
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 176
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 178
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 179
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;

    .line 193
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 197
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;

    return-object v0

    .line 200
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
            "Lcom/explorestack/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 857
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getRoot()Ljava/lang/String;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    .line 216
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 217
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 219
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 221
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 222
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRootBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    .line 237
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 238
    check-cast v0, Ljava/lang/String;

    .line 239
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 241
    iput-object v0, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    return-object v0

    .line 244
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 273
    iget v0, p0, Lcom/explorestack/protobuf/Mixin;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 278
    iget-object v2, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getRootBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 281
    iget-object v2, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 284
    iput v1, p0, Lcom/explorestack/protobuf/Mixin;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 308
    iget v0, p0, Lcom/explorestack/protobuf/Mixin;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 309
    iget v0, p0, Lcom/explorestack/protobuf/Mixin;->memoizedHashCode:I

    return v0

    .line 312
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 314
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 317
    iget-object v1, p0, Lcom/explorestack/protobuf/Mixin;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    iput v0, p0, Lcom/explorestack/protobuf/Mixin;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 157
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Mixin_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Mixin;

    const-class v2, Lcom/explorestack/protobuf/Mixin$Builder;

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 251
    iget-byte v0, p0, Lcom/explorestack/protobuf/Mixin;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 255
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Mixin;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->newBuilderForType()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Mixin;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->newBuilderForType()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 1

    .line 393
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->newBuilder()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 2

    .line 409
    new-instance v0, Lcom/explorestack/protobuf/Mixin$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Mixin$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Mixin$1;)V

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 92
    new-instance p1, Lcom/explorestack/protobuf/Mixin;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Mixin;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->toBuilder()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->toBuilder()Lcom/explorestack/protobuf/Mixin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Mixin$Builder;
    .locals 2

    .line 402
    sget-object v0, Lcom/explorestack/protobuf/Mixin;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Mixin;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Mixin$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Mixin$Builder;-><init>(Lcom/explorestack/protobuf/Mixin$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Mixin$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Mixin$Builder;-><init>(Lcom/explorestack/protobuf/Mixin$1;)V

    .line 403
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Mixin$Builder;->mergeFrom(Lcom/explorestack/protobuf/Mixin;)Lcom/explorestack/protobuf/Mixin$Builder;

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

    .line 262
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 263
    iget-object v1, p0, Lcom/explorestack/protobuf/Mixin;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Mixin;->getRootBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 266
    iget-object v1, p0, Lcom/explorestack/protobuf/Mixin;->root_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Mixin;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
