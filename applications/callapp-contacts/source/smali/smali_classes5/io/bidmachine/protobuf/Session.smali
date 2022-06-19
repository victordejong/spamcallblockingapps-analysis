.class public final Lio/bidmachine/protobuf/Session;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/SessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/Session$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Session;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/Session;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPTIME_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private uptime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 623
    new-instance v0, Lio/bidmachine/protobuf/Session;

    invoke-direct {v0}, Lio/bidmachine/protobuf/Session;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Session;

    .line 631
    new-instance v0, Lio/bidmachine/protobuf/Session$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/Session$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 154
    iput-byte v0, p0, Lio/bidmachine/protobuf/Session;->memoizedIsInitialized:B

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lio/bidmachine/protobuf/Session;-><init>()V

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 68
    invoke-virtual {p0, p1, v0, p2, v3}, Lio/bidmachine/protobuf/Session;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/Session;->uptime_:J

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 59
    iput-object v3, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;
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

    .line 79
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 80
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 77
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 83
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->makeExtensionsImmutable()V

    .line 84
    throw p1

    .line 82
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 83
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/Session$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/Session;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 154
    iput-byte p1, p0, Lio/bidmachine/protobuf/Session;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/Session$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/Session;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 13
    sget-boolean v0, Lio/bidmachine/protobuf/Session;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/Session;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/Session;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/Session;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lio/bidmachine/protobuf/Session;->uptime_:J

    return-wide p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/Session;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 13
    iget-object p0, p0, Lio/bidmachine/protobuf/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    invoke-static {p0}, Lio/bidmachine/protobuf/Session;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/Session;
    .locals 1

    .line 627
    sget-object v0, Lio/bidmachine/protobuf/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Session;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 88
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/Session$Builder;
    .locals 1

    .line 303
    sget-object v0, Lio/bidmachine/protobuf/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Session;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Session;->toBuilder()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 1

    .line 306
    sget-object v0, Lio/bidmachine/protobuf/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Session;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Session;->toBuilder()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 277
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 284
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 244
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 290
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 297
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 265
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 272
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 233
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 239
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 260
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/Session;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/Session;",
            ">;"
        }
    .end annotation

    .line 642
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 200
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/Session;

    if-nez v1, :cond_1

    .line 201
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 203
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/Session;

    .line 205
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->getId()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Session;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 207
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->getUptime()J

    move-result-wide v3

    .line 208
    invoke-virtual {p1}, Lio/bidmachine/protobuf/Session;->getUptime()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 209
    :cond_3
    iget-object v1, p0, Lio/bidmachine/protobuf/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->getDefaultInstanceForType()Lio/bidmachine/protobuf/Session;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/Session;
    .locals 1

    .line 652
    sget-object v0, Lio/bidmachine/protobuf/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Session;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 109
    iget-object v0, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;

    .line 110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 111
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 113
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 115
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 116
    iput-object v0, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 129
    iget-object v0, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;

    .line 130
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 134
    iput-object v0, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;

    return-object v0

    .line 137
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
            "Lio/bidmachine/protobuf/Session;",
            ">;"
        }
    .end annotation

    .line 647
    sget-object v0, Lio/bidmachine/protobuf/Session;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 179
    iget v0, p0, Lio/bidmachine/protobuf/Session;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 184
    iget-object v2, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 186
    :cond_1
    iget-wide v2, p0, Lio/bidmachine/protobuf/Session;->uptime_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 188
    invoke-static {v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 190
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 191
    iput v1, p0, Lio/bidmachine/protobuf/Session;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/bidmachine/protobuf/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUptime()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lio/bidmachine/protobuf/Session;->uptime_:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    .line 215
    iget v0, p0, Lio/bidmachine/protobuf/Session;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 216
    iget v0, p0, Lio/bidmachine/protobuf/Session;->memoizedHashCode:I

    return v0

    .line 219
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/Session;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 221
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 224
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->getUptime()J

    move-result-wide v1

    .line 223
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 225
    iget-object v1, p0, Lio/bidmachine/protobuf/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    iput v0, p0, Lio/bidmachine/protobuf/Session;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 94
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/Session;

    const-class v2, Lio/bidmachine/protobuf/Session$Builder;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 157
    iget-byte v0, p0, Lio/bidmachine/protobuf/Session;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 161
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/Session;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->newBuilderForType()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/Session;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->newBuilderForType()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/Session$Builder;
    .locals 1

    .line 301
    invoke-static {}, Lio/bidmachine/protobuf/Session;->newBuilder()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/Session$Builder;
    .locals 2

    .line 317
    new-instance v0, Lio/bidmachine/protobuf/Session$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/Session$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/Session$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 30
    new-instance p1, Lio/bidmachine/protobuf/Session;

    invoke-direct {p1}, Lio/bidmachine/protobuf/Session;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->toBuilder()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->toBuilder()Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/Session$Builder;
    .locals 2

    .line 310
    sget-object v0, Lio/bidmachine/protobuf/Session;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/Session;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/Session$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/Session$Builder;-><init>(Lio/bidmachine/protobuf/Session$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/Session$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/Session$Builder;-><init>(Lio/bidmachine/protobuf/Session$1;)V

    .line 311
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/Session$Builder;->mergeFrom(Lio/bidmachine/protobuf/Session;)Lio/bidmachine/protobuf/Session$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lio/bidmachine/protobuf/Session;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    iget-object v1, p0, Lio/bidmachine/protobuf/Session;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 171
    :cond_0
    iget-wide v0, p0, Lio/bidmachine/protobuf/Session;->uptime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 172
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 174
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/Session;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
