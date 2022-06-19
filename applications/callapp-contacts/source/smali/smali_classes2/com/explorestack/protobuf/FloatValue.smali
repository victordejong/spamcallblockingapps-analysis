.class public final Lcom/explorestack/protobuf/FloatValue;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/FloatValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/FloatValue$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FloatValue;

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/FloatValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private value_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 471
    new-instance v0, Lcom/explorestack/protobuf/FloatValue;

    invoke-direct {v0}, Lcom/explorestack/protobuf/FloatValue;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FloatValue;

    .line 483
    new-instance v0, Lcom/explorestack/protobuf/FloatValue$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/FloatValue$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 106
    iput-byte v0, p0, Lcom/explorestack/protobuf/FloatValue;->memoizedIsInitialized:B

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
    invoke-direct {p0}, Lcom/explorestack/protobuf/FloatValue;-><init>()V

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    .line 62
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/FloatValue;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/explorestack/protobuf/FloatValue;->value_:F
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

    .line 73
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 74
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 71
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :goto_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/FloatValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 77
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->makeExtensionsImmutable()V

    .line 78
    throw p1

    .line 76
    :cond_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/FloatValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 77
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/FloatValue$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/FloatValue;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 106
    iput-byte p1, p0, Lcom/explorestack/protobuf/FloatValue;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/FloatValue$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/FloatValue;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/FloatValue;F)F
    .locals 0

    .line 14
    iput p1, p0, Lcom/explorestack/protobuf/FloatValue;->value_:F

    return p1
.end method

.method static synthetic access$400()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 14
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/FloatValue;
    .locals 1

    .line 475
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FloatValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 82
    sget-object v0, Lcom/explorestack/protobuf/WrappersProto;->internal_static_google_protobuf_FloatValue_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/FloatValue$Builder;
    .locals 1

    .line 246
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FloatValue;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FloatValue;->toBuilder()Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/FloatValue;)Lcom/explorestack/protobuf/FloatValue$Builder;
    .locals 1

    .line 249
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FloatValue;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/FloatValue;->toBuilder()Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/FloatValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/FloatValue;)Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static of(F)Lcom/explorestack/protobuf/FloatValue;
    .locals 1

    .line 479
    invoke-static {}, Lcom/explorestack/protobuf/FloatValue;->newBuilder()Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/FloatValue$Builder;->setValue(F)Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue$Builder;->build()Lcom/explorestack/protobuf/FloatValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 220
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 227
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 233
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 240
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 208
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 215
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/FloatValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/FloatValue;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/FloatValue;",
            ">;"
        }
    .end annotation

    .line 494
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 146
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/FloatValue;

    if-nez v1, :cond_1

    .line 147
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 149
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/FloatValue;

    .line 151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 153
    invoke-virtual {p1}, Lcom/explorestack/protobuf/FloatValue;->getValue()F

    move-result v2

    .line 152
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/FloatValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/FloatValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v3

    :cond_3
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/FloatValue;
    .locals 1

    .line 504
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FloatValue;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->getDefaultInstanceForType()Lcom/explorestack/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->getDefaultInstanceForType()Lcom/explorestack/protobuf/FloatValue;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/FloatValue;",
            ">;"
        }
    .end annotation

    .line 499
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .line 128
    iget v0, p0, Lcom/explorestack/protobuf/FloatValue;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 132
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/FloatValue;->value_:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 134
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v2, v0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/FloatValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 137
    iput v2, p0, Lcom/explorestack/protobuf/FloatValue;->memoizedSize:I

    return v2
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/explorestack/protobuf/FloatValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getValue()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/explorestack/protobuf/FloatValue;->value_:F

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 160
    iget v0, p0, Lcom/explorestack/protobuf/FloatValue;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 161
    iget v0, p0, Lcom/explorestack/protobuf/FloatValue;->memoizedHashCode:I

    return v0

    .line 164
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/FloatValue;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 167
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->getValue()F

    move-result v1

    .line 166
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 168
    iget-object v1, p0, Lcom/explorestack/protobuf/FloatValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    iput v0, p0, Lcom/explorestack/protobuf/FloatValue;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 88
    sget-object v0, Lcom/explorestack/protobuf/WrappersProto;->internal_static_google_protobuf_FloatValue_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/FloatValue;

    const-class v2, Lcom/explorestack/protobuf/FloatValue$Builder;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 109
    iget-byte v0, p0, Lcom/explorestack/protobuf/FloatValue;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 113
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/FloatValue;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/FloatValue$Builder;
    .locals 1

    .line 244
    invoke-static {}, Lcom/explorestack/protobuf/FloatValue;->newBuilder()Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/FloatValue$Builder;
    .locals 2

    .line 260
    new-instance v0, Lcom/explorestack/protobuf/FloatValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/FloatValue$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/FloatValue$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->newBuilderForType()Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FloatValue;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->newBuilderForType()Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 30
    new-instance p1, Lcom/explorestack/protobuf/FloatValue;

    invoke-direct {p1}, Lcom/explorestack/protobuf/FloatValue;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/FloatValue$Builder;
    .locals 2

    .line 253
    sget-object v0, Lcom/explorestack/protobuf/FloatValue;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/FloatValue;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/FloatValue$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/FloatValue$Builder;-><init>(Lcom/explorestack/protobuf/FloatValue$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/FloatValue$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/FloatValue$Builder;-><init>(Lcom/explorestack/protobuf/FloatValue$1;)V

    .line 254
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/FloatValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/FloatValue;)Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->toBuilder()Lcom/explorestack/protobuf/FloatValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/FloatValue;->toBuilder()Lcom/explorestack/protobuf/FloatValue$Builder;

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

    .line 120
    iget v0, p0, Lcom/explorestack/protobuf/FloatValue;->value_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/FloatValue;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
