.class public final Lcom/explorestack/protobuf/Method;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Method$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Method;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_STREAMING_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_TYPE_URL_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_STREAMING_FIELD_NUMBER:I = 0x5

.field public static final RESPONSE_TYPE_URL_FIELD_NUMBER:I = 0x4

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private requestStreaming_:Z

.field private volatile requestTypeUrl_:Ljava/lang/Object;

.field private responseStreaming_:Z

.field private volatile responseTypeUrl_:Ljava/lang/Object;

.field private syntax_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1558
    new-instance v0, Lcom/explorestack/protobuf/Method;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Method;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Method;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Method;

    .line 1566
    new-instance v0, Lcom/explorestack/protobuf/Method$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Method$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 371
    iput-byte v0, p0, Lcom/explorestack/protobuf/Method;->memoizedIsInitialized:B

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/explorestack/protobuf/Method;-><init>()V

    .line 48
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_8

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7

    const/16 v5, 0x18

    if-eq v4, v5, :cond_6

    const/16 v5, 0x22

    if-eq v4, v5, :cond_5

    const/16 v5, 0x28

    if-eq v4, v5, :cond_4

    const/16 v5, 0x32

    if-eq v4, v5, :cond_2

    const/16 v5, 0x38

    if-eq v4, v5, :cond_1

    .line 105
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/Method;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 101
    iput v4, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_3

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 94
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    .line 95
    invoke-static {}, Lcom/explorestack/protobuf/Option;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 94
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/Method;->responseStreaming_:Z

    goto :goto_0

    .line 79
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 81
    iput-object v4, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/Method;->requestStreaming_:Z

    goto :goto_0

    .line 68
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 70
    iput-object v4, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 64
    iput-object v4, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 116
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 117
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 114
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_a

    .line 120
    iget-object p2, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    .line 122
    :cond_a
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Method;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->makeExtensionsImmutable()V

    .line 124
    throw p1

    :cond_b
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_c

    .line 120
    iget-object p1, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    .line 122
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Method;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Method$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Method;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 371
    iput-byte p1, p0, Lcom/explorestack/protobuf/Method;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Method$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Method;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/Method;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/Method;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/Method;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Method;->requestStreaming_:Z

    return p1
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/Method;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/Method;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Method;->responseStreaming_:Z

    return p1
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/Method;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/Method;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/Method;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    return p0
.end method

.method static synthetic access$902(Lcom/explorestack/protobuf/Method;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Method;
    .locals 1

    .line 1562
    sget-object v0, Lcom/explorestack/protobuf/Method;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Method;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 128
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Method_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 575
    sget-object v0, Lcom/explorestack/protobuf/Method;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Method;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Method;->toBuilder()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 578
    sget-object v0, Lcom/explorestack/protobuf/Method;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Method;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Method;->toBuilder()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 549
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 556
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 516
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 522
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 562
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 569
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 537
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 544
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 505
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 532
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Method;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 1577
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 450
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Method;

    if-nez v1, :cond_1

    .line 451
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 453
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Method;

    .line 455
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 459
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getRequestStreaming()Z

    move-result v1

    .line 460
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getRequestStreaming()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 461
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 463
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getResponseStreaming()Z

    move-result v1

    .line 464
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getResponseStreaming()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 465
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v1

    .line 466
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 467
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    iget v3, p1, Lcom/explorestack/protobuf/Method;->syntax_:I

    if-eq v1, v3, :cond_8

    return v2

    .line 468
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/Method;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Method;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Method;
    .locals 1

    .line 1587
    sget-object v0, Lcom/explorestack/protobuf/Method;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Method;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;

    .line 150
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 151
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 153
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 155
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;

    .line 170
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Ljava/lang/String;

    .line 172
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 174
    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;

    return-object v0

    .line 177
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public final getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 1582
    sget-object v0, Lcom/explorestack/protobuf/Method;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getRequestStreaming()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Method;->requestStreaming_:Z

    return v0
.end method

.method public final getRequestTypeUrl()Ljava/lang/String;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    .line 192
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 193
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 195
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 197
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 198
    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRequestTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    .line 212
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 216
    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    return-object v0

    .line 219
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getResponseStreaming()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Method;->responseStreaming_:Z

    return v0
.end method

.method public final getResponseTypeUrl()Ljava/lang/String;
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 247
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 250
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 252
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 253
    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getResponseTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    .line 267
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 268
    check-cast v0, Ljava/lang/String;

    .line 269
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    return-object v0

    .line 274
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 411
    iget v0, p0, Lcom/explorestack/protobuf/Method;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 418
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getRequestTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 419
    iget-object v3, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 421
    :cond_2
    iget-boolean v2, p0, Lcom/explorestack/protobuf/Method;->requestStreaming_:Z

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 423
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 425
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getResponseTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 426
    iget-object v3, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 428
    :cond_4
    iget-boolean v2, p0, Lcom/explorestack/protobuf/Method;->responseStreaming_:Z

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 430
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 432
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x6

    .line 433
    iget-object v3, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    .line 434
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    sget-object v2, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_7

    const/4 v1, 0x7

    .line 437
    iget v2, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    .line 438
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/Method;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    iput v0, p0, Lcom/explorestack/protobuf/Method;->memoizedSize:I

    return v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 367
    iget v0, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Syntax;->valueOf(I)Lcom/explorestack/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 474
    iget v0, p0, Lcom/explorestack/protobuf/Method;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 475
    iget v0, p0, Lcom/explorestack/protobuf/Method;->memoizedHashCode:I

    return v0

    .line 478
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Method;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 480
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 482
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 485
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getRequestStreaming()Z

    move-result v1

    .line 484
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 487
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 490
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getResponseStreaming()Z

    move-result v1

    .line 489
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 493
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 496
    iget v1, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 497
    iget-object v1, p0, Lcom/explorestack/protobuf/Method;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    iput v0, p0, Lcom/explorestack/protobuf/Method;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 134
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Method_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Method;

    const-class v2, Lcom/explorestack/protobuf/Method$Builder;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 374
    iget-byte v0, p0, Lcom/explorestack/protobuf/Method;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 378
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Method;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->newBuilderForType()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Method;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Method$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->newBuilderForType()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Method$Builder;
    .locals 1

    .line 573
    invoke-static {}, Lcom/explorestack/protobuf/Method;->newBuilder()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Method$Builder;
    .locals 2

    .line 589
    new-instance v0, Lcom/explorestack/protobuf/Method$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Method$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Method$1;)V

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 34
    new-instance p1, Lcom/explorestack/protobuf/Method;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Method;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->toBuilder()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->toBuilder()Lcom/explorestack/protobuf/Method$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Method$Builder;
    .locals 2

    .line 582
    sget-object v0, Lcom/explorestack/protobuf/Method;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Method;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Method$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Method$Builder;-><init>(Lcom/explorestack/protobuf/Method$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Method$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Method$Builder;-><init>(Lcom/explorestack/protobuf/Method$1;)V

    .line 583
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Method$Builder;->mergeFrom(Lcom/explorestack/protobuf/Method;)Lcom/explorestack/protobuf/Method$Builder;

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

    .line 385
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getRequestTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 389
    iget-object v1, p0, Lcom/explorestack/protobuf/Method;->requestTypeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 391
    :cond_1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Method;->requestStreaming_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 392
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Method;->getResponseTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 395
    iget-object v1, p0, Lcom/explorestack/protobuf/Method;->responseTypeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 397
    :cond_3
    iget-boolean v0, p0, Lcom/explorestack/protobuf/Method;->responseStreaming_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 398
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_4
    const/4 v0, 0x0

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    .line 401
    iget-object v2, p0, Lcom/explorestack/protobuf/Method;->options_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    sget-object v1, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x7

    .line 404
    iget v1, p0, Lcom/explorestack/protobuf/Method;->syntax_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 406
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/Method;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
