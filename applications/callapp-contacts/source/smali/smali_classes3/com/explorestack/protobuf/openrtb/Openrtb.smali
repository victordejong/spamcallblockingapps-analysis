.class public final Lcom/explorestack/protobuf/openrtb/Openrtb;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/OpenrtbOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;,
        Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

.field public static final DOMAINSPEC_FIELD_NUMBER:I = 0x2

.field public static final DOMAINVER_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x4

.field public static final RESPONSE_FIELD_NUMBER:I = 0x5

.field public static final VER_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile domainspec_:Ljava/lang/Object;

.field private volatile domainver_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;

.field private volatile ver_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1473
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 1481
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v0, -0x1

    .line 389
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedIsInitialized:B

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    .line 28
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>()V

    .line 49
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_a

    const/16 v4, 0xa

    if-eq v3, v4, :cond_9

    const/16 v4, 0x12

    if-eq v3, v4, :cond_8

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    .line 108
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/openrtb/Openrtb;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 95
    :cond_1
    iget v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 96
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v3, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/openrtb/Response;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v5

    .line 99
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 101
    check-cast v3, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 102
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    .line 104
    :cond_3
    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    goto :goto_0

    .line 81
    :cond_4
    iget v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 82
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v3, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/openrtb/Request;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    move-result-object v5

    .line 85
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 87
    check-cast v3, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 88
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    .line 90
    :cond_6
    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    goto :goto_0

    .line 74
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 76
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 70
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 64
    iput-object v3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 119
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 120
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 117
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->makeExtensionsImmutable()V

    .line 124
    throw p1

    .line 122
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 23
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 p1, -0x1

    .line 389
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 16
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/openrtb/Openrtb;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/openrtb/Openrtb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/openrtb/Openrtb;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    return p1
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1

    .line 1477
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 128
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 585
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 588
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 559
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 566
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 532
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 572
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 579
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 547
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 554
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 521
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 542
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            ">;"
        }
    .end annotation

    .line 1492
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 454
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    if-nez v1, :cond_1

    .line 455
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 457
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 463
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 465
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 466
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    goto :goto_0

    .line 472
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v1

    .line 473
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/openrtb/Response;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 468
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getRequest()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v1

    .line 469
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getRequest()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/openrtb/Request;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 478
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Openrtb;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Openrtb;
    .locals 1

    .line 1502
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    return-object v0
.end method

.method public final getDomainspec()Ljava/lang/String;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    .line 231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 234
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 236
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 237
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDomainspecBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    .line 252
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Ljava/lang/String;

    .line 254
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 256
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    return-object v0

    .line 259
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDomainver()Ljava/lang/String;
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    .line 275
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 278
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 280
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 281
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDomainverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    .line 296
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 297
    check-cast v0, Ljava/lang/String;

    .line 298
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 300
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    return-object v0

    .line 303
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
            "Lcom/explorestack/protobuf/openrtb/Openrtb;",
            ">;"
        }
    .end annotation

    .line 1497
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPayloadCase()Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 173
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public final getRequest()Lcom/explorestack/protobuf/openrtb/Request;
    .locals 2

    .line 328
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 331
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestOrBuilder()Lcom/explorestack/protobuf/openrtb/RequestOrBuilder;
    .locals 2

    .line 342
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    return-object v0

    .line 345
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v0

    return-object v0
.end method

.method public final getResponse()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 2

    .line 369
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 372
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseOrBuilder()Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;
    .locals 2

    .line 383
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    return-object v0

    .line 386
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 423
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 428
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspecBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 431
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 434
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 436
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 437
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    .line 438
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 440
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 441
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    .line 442
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 445
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getVer()Ljava/lang/String;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    .line 188
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 191
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 193
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 194
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getVerBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    .line 208
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 209
    check-cast v0, Ljava/lang/String;

    .line 210
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    return-object v0

    .line 215
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasRequest()Z
    .locals 2

    .line 317
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasResponse()Z
    .locals 2

    .line 358
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 484
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 485
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedHashCode:I

    return v0

    .line 488
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 490
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 492
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Response;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 498
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getRequest()Lcom/explorestack/protobuf/openrtb/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/openrtb/Request;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 507
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 508
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 134
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Openrtb_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 392
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 396
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 1

    .line 583
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->newBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 2

    .line 599
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 35
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Openrtb;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Openrtb;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;
    .locals 2

    .line 592
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Openrtb;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Openrtb$1;)V

    .line 593
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Openrtb;)Lcom/explorestack/protobuf/openrtb/Openrtb$Builder;

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

    .line 403
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getVerBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 404
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->ver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainspecBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 407
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainspec_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDomainverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 410
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->domainver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 412
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 413
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 415
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 416
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->payload_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
