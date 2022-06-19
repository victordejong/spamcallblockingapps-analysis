.class public final Lio/bidmachine/protobuf/AppExtension;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/AppExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AppExtension$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AppExtension;

.field public static final INSTALL_TIME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AppExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPTIME_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private installTime_:Lcom/explorestack/protobuf/Timestamp;

.field private memoizedIsInitialized:B

.field private uptime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 689
    new-instance v0, Lio/bidmachine/protobuf/AppExtension;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AppExtension;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AppExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AppExtension;

    .line 697
    new-instance v0, Lio/bidmachine/protobuf/AppExtension$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AppExtension$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 147
    iput-byte v0, p0, Lio/bidmachine/protobuf/AppExtension;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/bidmachine/protobuf/AppExtension;-><init>()V

    .line 39
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 70
    invoke-virtual {p0, p1, v0, p2, v3}, Lio/bidmachine/protobuf/AppExtension;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/AppExtension;->uptime_:J

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 53
    iget-object v4, p0, Lio/bidmachine/protobuf/AppExtension;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v4, :cond_3

    .line 54
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Timestamp;->toBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    move-result-object v3

    .line 56
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Timestamp;

    iput-object v4, p0, Lio/bidmachine/protobuf/AppExtension;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Timestamp$Builder;->mergeFrom(Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 59
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Timestamp$Builder;->buildPartial()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/AppExtension;->installTime_:Lcom/explorestack/protobuf/Timestamp;
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

    .line 81
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 82
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 79
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AppExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 85
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->makeExtensionsImmutable()V

    .line 86
    throw p1

    .line 84
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AppExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 85
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AppExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AppExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 147
    iput-byte p1, p0, Lio/bidmachine/protobuf/AppExtension;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AppExtension$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AppExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/AppExtension;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/AppExtension;Lcom/explorestack/protobuf/Timestamp;)Lcom/explorestack/protobuf/Timestamp;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AppExtension;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/AppExtension;J)J
    .locals 0

    .line 9
    iput-wide p1, p0, Lio/bidmachine/protobuf/AppExtension;->uptime_:J

    return-wide p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/AppExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AppExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$700()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AppExtension;
    .locals 1

    .line 693
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AppExtension;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 90
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AppExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 1

    .line 302
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AppExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AppExtension;->toBuilder()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AppExtension;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 1

    .line 305
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AppExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AppExtension;->toBuilder()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AppExtension;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 276
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 283
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 243
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 249
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 289
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 296
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 264
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 271
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 232
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 253
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AppExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 259
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AppExtension;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AppExtension;",
            ">;"
        }
    .end annotation

    .line 708
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 194
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/AppExtension;

    if-nez v1, :cond_1

    .line 195
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 197
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/AppExtension;

    .line 199
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->hasInstallTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AppExtension;->hasInstallTime()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 200
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->hasInstallTime()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    .line 202
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AppExtension;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 204
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->getUptime()J

    move-result-wide v1

    .line 205
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AppExtension;->getUptime()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_4

    return v3

    .line 206
    :cond_4
    iget-object v1, p0, Lio/bidmachine/protobuf/AppExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/AppExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AppExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/AppExtension;
    .locals 1

    .line 718
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AppExtension;

    return-object v0
.end method

.method public final getInstallTime()Lcom/explorestack/protobuf/Timestamp;
    .locals 1

    .line 121
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->getDefaultInstance()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getInstallTimeOrBuilder()Lcom/explorestack/protobuf/TimestampOrBuilder;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AppExtension;",
            ">;"
        }
    .end annotation

    .line 713
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 172
    iget v0, p0, Lio/bidmachine/protobuf/AppExtension;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 180
    :cond_1
    iget-wide v2, p0, Lio/bidmachine/protobuf/AppExtension;->uptime_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 182
    invoke-static {v0, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 184
    :cond_2
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 185
    iput v1, p0, Lio/bidmachine/protobuf/AppExtension;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUptime()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lio/bidmachine/protobuf/AppExtension;->uptime_:J

    return-wide v0
.end method

.method public final hasInstallTime()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 212
    iget v0, p0, Lio/bidmachine/protobuf/AppExtension;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Lio/bidmachine/protobuf/AppExtension;->memoizedHashCode:I

    return v0

    .line 216
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/AppExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 217
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->hasInstallTime()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 219
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 223
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->getUptime()J

    move-result-wide v1

    .line 222
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 224
    iget-object v1, p0, Lio/bidmachine/protobuf/AppExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    iput v0, p0, Lio/bidmachine/protobuf/AppExtension;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 96
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AppExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AppExtension;

    const-class v2, Lio/bidmachine/protobuf/AppExtension$Builder;

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 150
    iget-byte v0, p0, Lio/bidmachine/protobuf/AppExtension;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 154
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/AppExtension;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->newBuilderForType()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AppExtension;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->newBuilderForType()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 1

    .line 300
    invoke-static {}, Lio/bidmachine/protobuf/AppExtension;->newBuilder()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 2

    .line 316
    new-instance v0, Lio/bidmachine/protobuf/AppExtension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AppExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AppExtension$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 25
    new-instance p1, Lio/bidmachine/protobuf/AppExtension;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AppExtension;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->toBuilder()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->toBuilder()Lio/bidmachine/protobuf/AppExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/AppExtension$Builder;
    .locals 2

    .line 309
    sget-object v0, Lio/bidmachine/protobuf/AppExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AppExtension;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/AppExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AppExtension$Builder;-><init>(Lio/bidmachine/protobuf/AppExtension$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/AppExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AppExtension$Builder;-><init>(Lio/bidmachine/protobuf/AppExtension$1;)V

    .line 310
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AppExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AppExtension;)Lio/bidmachine/protobuf/AppExtension$Builder;

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

    .line 161
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension;->installTime_:Lcom/explorestack/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AppExtension;->getInstallTime()Lcom/explorestack/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 164
    :cond_0
    iget-wide v0, p0, Lio/bidmachine/protobuf/AppExtension;->uptime_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 165
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 167
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/AppExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
