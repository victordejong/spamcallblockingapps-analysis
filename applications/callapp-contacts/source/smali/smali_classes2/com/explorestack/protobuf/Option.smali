.class public final Lcom/explorestack/protobuf/Option;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/OptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Option$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private value_:Lcom/explorestack/protobuf/Any;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 837
    new-instance v0, Lcom/explorestack/protobuf/Option;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Option;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    .line 845
    new-instance v0, Lcom/explorestack/protobuf/Option$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Option$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 198
    iput-byte v0, p0, Lcom/explorestack/protobuf/Option;->memoizedIsInitialized:B

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/explorestack/protobuf/Option;-><init>()V

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_1

    .line 77
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/Option;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 65
    iget-object v4, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v4, :cond_2

    .line 66
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v3

    .line 68
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Any;

    iput-object v4, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    .line 71
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 60
    iput-object v3, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;
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

    .line 88
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 89
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 86
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Option;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->makeExtensionsImmutable()V

    .line 93
    throw p1

    .line 91
    :cond_5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Option;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 92
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Option$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Option;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 21
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 198
    iput-byte p1, p0, Lcom/explorestack/protobuf/Option;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Option$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Option;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/Option;)Ljava/lang/Object;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Option;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Option;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 14
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 841
    sget-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 97
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Option_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 351
    sget-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Option;->toBuilder()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 354
    sget-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Option;->toBuilder()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 325
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 332
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 338
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 345
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 313
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 320
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Option;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 856
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 244
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Option;

    if-nez v1, :cond_1

    .line 245
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 247
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Option;

    .line 249
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 251
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 252
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 254
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 256
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/Option;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Option;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 866
    sget-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    .line 122
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 125
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 127
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    .line 145
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Ljava/lang/String;

    .line 147
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    return-object v0

    .line 152
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
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 861
    sget-object v0, Lcom/explorestack/protobuf/Option;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 223
    iget v0, p0, Lcom/explorestack/protobuf/Option;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 228
    iget-object v2, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 232
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 235
    iput v1, p0, Lcom/explorestack/protobuf/Option;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getValue()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getValueOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final hasValue()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 262
    iget v0, p0, Lcom/explorestack/protobuf/Option;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 263
    iget v0, p0, Lcom/explorestack/protobuf/Option;->memoizedHashCode:I

    return v0

    .line 266
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Option;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 271
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 273
    iget-object v1, p0, Lcom/explorestack/protobuf/Option;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 274
    iput v0, p0, Lcom/explorestack/protobuf/Option;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 103
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Option_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Option;

    const-class v2, Lcom/explorestack/protobuf/Option$Builder;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 201
    iget-byte v0, p0, Lcom/explorestack/protobuf/Option;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 205
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Option;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->newBuilderForType()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Option;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Option$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->newBuilderForType()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Option$Builder;
    .locals 1

    .line 349
    invoke-static {}, Lcom/explorestack/protobuf/Option;->newBuilder()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 365
    new-instance v0, Lcom/explorestack/protobuf/Option$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Option$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Option$1;)V

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 31
    new-instance p1, Lcom/explorestack/protobuf/Option;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Option;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->toBuilder()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->toBuilder()Lcom/explorestack/protobuf/Option$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Option$Builder;
    .locals 2

    .line 358
    sget-object v0, Lcom/explorestack/protobuf/Option;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Option;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Option$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Option$Builder;-><init>(Lcom/explorestack/protobuf/Option$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Option$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Option$Builder;-><init>(Lcom/explorestack/protobuf/Option$1;)V

    .line 359
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Option$Builder;->mergeFrom(Lcom/explorestack/protobuf/Option;)Lcom/explorestack/protobuf/Option$Builder;

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

    .line 212
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/explorestack/protobuf/Option;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->value_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 216
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Option;->getValue()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Option;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
