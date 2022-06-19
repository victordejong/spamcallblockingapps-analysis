.class public final Lcom/explorestack/protobuf/Any;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/AnyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Any$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Any;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_URL_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private volatile cachedUnpackValue:Lcom/explorestack/protobuf/Message;

.field private memoizedIsInitialized:B

.field private volatile typeUrl_:Ljava/lang/Object;

.field private value_:Lcom/explorestack/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 974
    new-instance v0, Lcom/explorestack/protobuf/Any;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Any;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Any;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Any;

    .line 982
    new-instance v0, Lcom/explorestack/protobuf/Any$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Any$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 331
    iput-byte v0, p0, Lcom/explorestack/protobuf/Any;->memoizedIsInitialized:B

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    iput-object v0, p0, Lcom/explorestack/protobuf/Any;->value_:Lcom/explorestack/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/explorestack/protobuf/Any;-><init>()V

    .line 107
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 114
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    .line 131
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/Any;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Any;->value_:Lcom/explorestack/protobuf/ByteString;

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 122
    iput-object v3, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;
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

    iput-object p2, p0, Lcom/explorestack/protobuf/Any;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->makeExtensionsImmutable()V

    .line 147
    throw p1

    .line 145
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Any;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Any$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Any;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 82
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 331
    iput-byte p1, p0, Lcom/explorestack/protobuf/Any;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Any$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Any;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/Any;)Ljava/lang/Object;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Any;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Any;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/explorestack/protobuf/Any;->value_:Lcom/explorestack/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 75
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 978
    sget-object v0, Lcom/explorestack/protobuf/Any;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Any;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 151
    sget-object v0, Lcom/explorestack/protobuf/AnyProto;->internal_static_google_protobuf_Any_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private static getTypeNameFromTypeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTypeUrl(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 479
    sget-object v0, Lcom/explorestack/protobuf/Any;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Any;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 482
    sget-object v0, Lcom/explorestack/protobuf/Any;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Any;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/Message;",
            ">(TT;)",
            "Lcom/explorestack/protobuf/Any;"
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/explorestack/protobuf/Any;->newBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    .line 180
    invoke-interface {p0}, Lcom/explorestack/protobuf/Message;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "type.googleapis.com"

    .line 179
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/Any;->getTypeUrl(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    .line 181
    invoke-interface {p0}, Lcom/explorestack/protobuf/Message;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Any$Builder;->setValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p0

    return-object p0
.end method

.method public static pack(Lcom/explorestack/protobuf/Message;Ljava/lang/String;)Lcom/explorestack/protobuf/Any;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/Message;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/explorestack/protobuf/Any;"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/explorestack/protobuf/Any;->newBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    .line 195
    invoke-interface {p0}, Lcom/explorestack/protobuf/Message;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 194
    invoke-static {p1, v1}, Lcom/explorestack/protobuf/Any;->getTypeUrl(Ljava/lang/String;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Any$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    .line 196
    invoke-interface {p0}, Lcom/explorestack/protobuf/Message;->toByteString()Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/Any$Builder;->setValue(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 453
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 460
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 426
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 466
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 473
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 441
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 448
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 415
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 430
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Any;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 993
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 377
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Any;

    if-nez v1, :cond_1

    .line 378
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 380
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Any;

    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 384
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getValue()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    .line 385
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any;->getValue()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Any;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Any;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 1003
    sget-object v0, Lcom/explorestack/protobuf/Any;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Any;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 998
    sget-object v0, Lcom/explorestack/protobuf/Any;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 356
    iget v0, p0, Lcom/explorestack/protobuf/Any;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 361
    iget-object v2, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->value_:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 364
    iget-object v2, p0, Lcom/explorestack/protobuf/Any;->value_:Lcom/explorestack/protobuf/ByteString;

    .line 365
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBytesSize(ILcom/explorestack/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v1, v0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 368
    iput v1, p0, Lcom/explorestack/protobuf/Any;->memoizedSize:I

    return v1
.end method

.method public final getTypeUrl()Ljava/lang/String;
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;

    .line 265
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 266
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 268
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 270
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 271
    iput-object v0, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;

    .line 307
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 308
    check-cast v0, Ljava/lang/String;

    .line 309
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 311
    iput-object v0, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;

    return-object v0

    .line 314
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getValue()Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->value_:Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 392
    iget v0, p0, Lcom/explorestack/protobuf/Any;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 393
    iget v0, p0, Lcom/explorestack/protobuf/Any;->memoizedHashCode:I

    return v0

    .line 396
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 400
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getValue()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 401
    iget-object v1, p0, Lcom/explorestack/protobuf/Any;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    iput v0, p0, Lcom/explorestack/protobuf/Any;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 157
    sget-object v0, Lcom/explorestack/protobuf/AnyProto;->internal_static_google_protobuf_Any_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Any;

    const-class v2, Lcom/explorestack/protobuf/Any$Builder;

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final is(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 203
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->getTypeNameFromTypeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 334
    iget-byte v0, p0, Lcom/explorestack/protobuf/Any;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 338
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Any;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 477
    invoke-static {}, Lcom/explorestack/protobuf/Any;->newBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 493
    new-instance v0, Lcom/explorestack/protobuf/Any$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Any$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Any$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->newBuilderForType()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->newBuilderForType()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 93
    new-instance p1, Lcom/explorestack/protobuf/Any;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Any;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 486
    sget-object v0, Lcom/explorestack/protobuf/Any;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Any;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Any$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Any$Builder;-><init>(Lcom/explorestack/protobuf/Any$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Any$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Any$Builder;-><init>(Lcom/explorestack/protobuf/Any$1;)V

    .line 487
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->cachedUnpackValue:Lcom/explorestack/protobuf/Message;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->cachedUnpackValue:Lcom/explorestack/protobuf/Message;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/explorestack/protobuf/Any;->cachedUnpackValue:Lcom/explorestack/protobuf/Message;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 221
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->getDefaultInstance(Ljava/lang/Class;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 227
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object p1

    .line 228
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getValue()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 229
    iput-object p1, p0, Lcom/explorestack/protobuf/Any;->cachedUnpackValue:Lcom/explorestack/protobuf/Message;

    return-object p1

    .line 222
    :cond_2
    new-instance p1, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    const-string v0, "Type of the Any message does not match the given class."

    invoke-direct {p1, v0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Any;->getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 346
    iget-object v1, p0, Lcom/explorestack/protobuf/Any;->typeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->value_:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 349
    iget-object v1, p0, Lcom/explorestack/protobuf/Any;->value_:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBytes(ILcom/explorestack/protobuf/ByteString;)V

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Any;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
