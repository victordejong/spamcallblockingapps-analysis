.class public final Lio/bidmachine/protobuf/RegsCcpaExtension;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/RegsCcpaExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RegsCcpaExtension;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RegsCcpaExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static final US_PRIVACY_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile usPrivacy_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 541
    new-instance v0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RegsCcpaExtension;

    .line 549
    new-instance v0, Lio/bidmachine/protobuf/RegsCcpaExtension$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 132
    iput-byte v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->memoizedIsInitialized:B

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;-><init>()V

    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 47
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 59
    invoke-virtual {p0, p1, v0, p2, v3}, Lio/bidmachine/protobuf/RegsCcpaExtension;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 55
    iput-object v3, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 70
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 71
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 68
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 74
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->makeExtensionsImmutable()V

    .line 75
    throw p1

    .line 73
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 74
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/RegsCcpaExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 132
    iput-byte p1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/RegsCcpaExtension;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/RegsCcpaExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$600()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1

    .line 545
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 79
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 269
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RegsCcpaExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->toBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 272
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RegsCcpaExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->toBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 243
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 250
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 210
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 216
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 256
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 263
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 231
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 238
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 199
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 205
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 226
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RegsCcpaExtension;",
            ">;"
        }
    .end annotation

    .line 560
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 171
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    if-nez v1, :cond_1

    .line 172
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 174
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    .line 176
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getUsPrivacy()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getUsPrivacy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 178
    :cond_2
    iget-object v1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/RegsCcpaExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RegsCcpaExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/RegsCcpaExtension;
    .locals 1

    .line 570
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RegsCcpaExtension;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/RegsCcpaExtension;",
            ">;"
        }
    .end annotation

    .line 565
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 154
    iget v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getUsPrivacyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 159
    iget-object v2, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 161
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 162
    iput v1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUsPrivacy()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;

    .line 101
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 104
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 106
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 107
    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUsPrivacyBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 120
    iget-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;

    .line 121
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 125
    iput-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;

    return-object v0

    .line 128
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 184
    iget v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->memoizedHashCode:I

    return v0

    .line 188
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 190
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getUsPrivacy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 191
    iget-object v1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    iput v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 85
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RegsCcpaExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    const-class v2, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 135
    iget-byte v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 139
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->newBuilderForType()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->newBuilderForType()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 1

    .line 267
    invoke-static {}, Lio/bidmachine/protobuf/RegsCcpaExtension;->newBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 2

    .line 283
    new-instance v0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 26
    new-instance p1, Lio/bidmachine/protobuf/RegsCcpaExtension;

    invoke-direct {p1}, Lio/bidmachine/protobuf/RegsCcpaExtension;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->toBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->toBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;
    .locals 2

    .line 276
    sget-object v0, Lio/bidmachine/protobuf/RegsCcpaExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/RegsCcpaExtension;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;-><init>(Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;-><init>(Lio/bidmachine/protobuf/RegsCcpaExtension$1;)V

    .line 277
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RegsCcpaExtension;)Lio/bidmachine/protobuf/RegsCcpaExtension$Builder;

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

    .line 146
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RegsCcpaExtension;->getUsPrivacyBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->usPrivacy_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RegsCcpaExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
