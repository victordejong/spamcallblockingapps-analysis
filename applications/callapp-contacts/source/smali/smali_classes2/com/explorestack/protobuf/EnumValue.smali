.class public final Lcom/explorestack/protobuf/EnumValue;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/EnumValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/EnumValue$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/EnumValue;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/EnumValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private number_:I

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1060
    new-instance v0, Lcom/explorestack/protobuf/EnumValue;

    invoke-direct {v0}, Lcom/explorestack/protobuf/EnumValue;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/EnumValue;

    .line 1068
    new-instance v0, Lcom/explorestack/protobuf/EnumValue$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/EnumValue$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 223
    iput-byte v0, p0, Lcom/explorestack/protobuf/EnumValue;->memoizedIsInitialized:B

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/explorestack/protobuf/EnumValue;-><init>()V

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_1

    .line 79
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/EnumValue;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_2

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 74
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 75
    invoke-static {}, Lcom/explorestack/protobuf/Option;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 74
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/EnumValue;->number_:I

    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 61
    iput-object v4, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 90
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 91
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 88
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_6

    .line 94
    iget-object p2, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 96
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/EnumValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 97
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->makeExtensionsImmutable()V

    .line 98
    throw p1

    :cond_7
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_8

    .line 94
    iget-object p1, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 96
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/EnumValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 97
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/EnumValue$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/EnumValue;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 223
    iput-byte p1, p0, Lcom/explorestack/protobuf/EnumValue;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/EnumValue$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/EnumValue;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/EnumValue;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/EnumValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/EnumValue;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/EnumValue;->number_:I

    return p1
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/EnumValue;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/EnumValue;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/EnumValue;
    .locals 1

    .line 1064
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/EnumValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 102
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_EnumValue_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 384
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/EnumValue;->toBuilder()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 387
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/EnumValue;->toBuilder()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 358
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 365
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 371
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 378
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 346
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 353
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/EnumValue;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 1079
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 276
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/EnumValue;

    if-nez v1, :cond_1

    .line 277
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 279
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/EnumValue;

    .line 281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {p1}, Lcom/explorestack/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getNumber()I

    move-result v1

    .line 284
    invoke-virtual {p1}, Lcom/explorestack/protobuf/EnumValue;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 285
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getOptionsList()Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-virtual {p1}, Lcom/explorestack/protobuf/EnumValue;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/EnumValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/EnumValue;
    .locals 1

    .line 1089
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/EnumValue;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getDefaultInstanceForType()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getDefaultInstanceForType()Lcom/explorestack/protobuf/EnumValue;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;

    .line 124
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 127
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 129
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;

    .line 144
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Ljava/lang/String;

    .line 146
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 148
    iput-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;

    return-object v0

    .line 151
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue;->number_:I

    return v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

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

    .line 178
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

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

    .line 189
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 1084
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 251
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 258
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/EnumValue;->number_:I

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 260
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 262
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 263
    iget-object v3, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    .line 264
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 266
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    iput v0, p0, Lcom/explorestack/protobuf/EnumValue;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 293
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 294
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue;->memoizedHashCode:I

    return v0

    .line 297
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/EnumValue;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getNumber()I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 306
    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    iput v0, p0, Lcom/explorestack/protobuf/EnumValue;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 108
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_EnumValue_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/EnumValue;

    const-class v2, Lcom/explorestack/protobuf/EnumValue$Builder;

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 226
    iget-byte v0, p0, Lcom/explorestack/protobuf/EnumValue;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 230
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/EnumValue;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 1

    .line 382
    invoke-static {}, Lcom/explorestack/protobuf/EnumValue;->newBuilder()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 2

    .line 398
    new-instance v0, Lcom/explorestack/protobuf/EnumValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/EnumValue$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/EnumValue$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->newBuilderForType()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/EnumValue;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->newBuilderForType()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 31
    new-instance p1, Lcom/explorestack/protobuf/EnumValue;

    invoke-direct {p1}, Lcom/explorestack/protobuf/EnumValue;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/EnumValue$Builder;
    .locals 2

    .line 391
    sget-object v0, Lcom/explorestack/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/EnumValue;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/EnumValue$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/EnumValue$Builder;-><init>(Lcom/explorestack/protobuf/EnumValue$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/EnumValue$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/EnumValue$Builder;-><init>(Lcom/explorestack/protobuf/EnumValue$1;)V

    .line 392
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/EnumValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/EnumValue;)Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->toBuilder()Lcom/explorestack/protobuf/EnumValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->toBuilder()Lcom/explorestack/protobuf/EnumValue$Builder;

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

    .line 237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/EnumValue;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 240
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/EnumValue;->number_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 241
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    const/4 v0, 0x0

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 244
    iget-object v2, p0, Lcom/explorestack/protobuf/EnumValue;->options_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/EnumValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
