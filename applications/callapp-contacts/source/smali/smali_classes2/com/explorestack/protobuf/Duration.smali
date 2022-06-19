.class public final Lcom/explorestack/protobuf/Duration;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Duration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Duration;

.field public static final NANOS_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Duration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private nanos_:I

.field private seconds_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 657
    new-instance v0, Lcom/explorestack/protobuf/Duration;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Duration;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Duration;

    .line 665
    new-instance v0, Lcom/explorestack/protobuf/Duration$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Duration$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 174
    iput-byte v0, p0, Lcom/explorestack/protobuf/Duration;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/explorestack/protobuf/Duration;-><init>()V

    .line 87
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 94
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 110
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/Duration;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/Duration;->nanos_:I

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/explorestack/protobuf/Duration;->seconds_:J
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

    .line 121
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 122
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 119
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Duration;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->makeExtensionsImmutable()V

    .line 126
    throw p1

    .line 124
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Duration;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Duration$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Duration;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 64
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 174
    iput-byte p1, p0, Lcom/explorestack/protobuf/Duration;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Duration$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Duration;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Duration;J)J
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/explorestack/protobuf/Duration;->seconds_:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Duration;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/explorestack/protobuf/Duration;->nanos_:I

    return p1
.end method

.method static synthetic access$500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 57
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Duration;
    .locals 1

    .line 661
    sget-object v0, Lcom/explorestack/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Duration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 130
    sget-object v0, Lcom/explorestack/protobuf/DurationProto;->internal_static_google_protobuf_Duration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Duration$Builder;
    .locals 1

    .line 324
    sget-object v0, Lcom/explorestack/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Duration;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Duration;->toBuilder()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Duration;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 1

    .line 327
    sget-object v0, Lcom/explorestack/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Duration;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Duration;->toBuilder()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Duration;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 298
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 305
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 311
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 318
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 286
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 293
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 275
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Duration;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Duration;",
            ">;"
        }
    .end annotation

    .line 676
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 221
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Duration;

    if-nez v1, :cond_1

    .line 222
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 224
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Duration;

    .line 226
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->getSeconds()J

    move-result-wide v1

    .line 227
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Duration;->getSeconds()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    return v5

    .line 228
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->getNanos()I

    move-result v1

    .line 229
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Duration;->getNanos()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v5

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Duration;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Duration;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v5

    :cond_4
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Duration;
    .locals 1

    .line 686
    sget-object v0, Lcom/explorestack/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Duration;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final getNanos()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/explorestack/protobuf/Duration;->nanos_:I

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Duration;",
            ">;"
        }
    .end annotation

    .line 681
    sget-object v0, Lcom/explorestack/protobuf/Duration;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSeconds()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/explorestack/protobuf/Duration;->seconds_:J

    return-wide v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 199
    iget v0, p0, Lcom/explorestack/protobuf/Duration;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 203
    :cond_0
    iget-wide v0, p0, Lcom/explorestack/protobuf/Duration;->seconds_:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 205
    invoke-static {v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v4, v0

    .line 207
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/Duration;->nanos_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 209
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v4, v0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Duration;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v4, v0

    .line 212
    iput v4, p0, Lcom/explorestack/protobuf/Duration;->memoizedSize:I

    return v4
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/explorestack/protobuf/Duration;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 236
    iget v0, p0, Lcom/explorestack/protobuf/Duration;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 237
    iget v0, p0, Lcom/explorestack/protobuf/Duration;->memoizedHashCode:I

    return v0

    .line 240
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Duration;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->getSeconds()J

    move-result-wide v1

    .line 242
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 245
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->getNanos()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 246
    iget-object v1, p0, Lcom/explorestack/protobuf/Duration;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    iput v0, p0, Lcom/explorestack/protobuf/Duration;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 136
    sget-object v0, Lcom/explorestack/protobuf/DurationProto;->internal_static_google_protobuf_Duration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Duration;

    const-class v2, Lcom/explorestack/protobuf/Duration$Builder;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 177
    iget-byte v0, p0, Lcom/explorestack/protobuf/Duration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 181
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Duration;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Duration$Builder;
    .locals 1

    .line 322
    invoke-static {}, Lcom/explorestack/protobuf/Duration;->newBuilder()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Duration$Builder;
    .locals 2

    .line 338
    new-instance v0, Lcom/explorestack/protobuf/Duration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Duration$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Duration$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->newBuilderForType()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Duration;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->newBuilderForType()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 73
    new-instance p1, Lcom/explorestack/protobuf/Duration;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Duration;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Duration$Builder;
    .locals 2

    .line 331
    sget-object v0, Lcom/explorestack/protobuf/Duration;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Duration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Duration$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Duration$Builder;-><init>(Lcom/explorestack/protobuf/Duration$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Duration$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Duration$Builder;-><init>(Lcom/explorestack/protobuf/Duration$1;)V

    .line 332
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Duration$Builder;->mergeFrom(Lcom/explorestack/protobuf/Duration;)Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->toBuilder()Lcom/explorestack/protobuf/Duration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Duration;->toBuilder()Lcom/explorestack/protobuf/Duration$Builder;

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

    .line 188
    iget-wide v0, p0, Lcom/explorestack/protobuf/Duration;->seconds_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 189
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 191
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/Duration;->nanos_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 192
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Duration;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
