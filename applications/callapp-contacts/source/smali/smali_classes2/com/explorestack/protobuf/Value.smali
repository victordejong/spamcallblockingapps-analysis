.class public final Lcom/explorestack/protobuf/Value;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Value$Builder;,
        Lcom/explorestack/protobuf/Value$KindCase;
    }
.end annotation


# static fields
.field public static final BOOL_VALUE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

.field public static final LIST_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_VALUE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x3

.field public static final STRUCT_VALUE_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private kindCase_:I

.field private kind_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1468
    new-instance v0, Lcom/explorestack/protobuf/Value;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Value;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    .line 1476
    new-instance v0, Lcom/explorestack/protobuf/Value$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Value$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v0, -0x1

    .line 375
    iput-byte v0, p0, Lcom/explorestack/protobuf/Value;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/explorestack/protobuf/Value;-><init>()V

    .line 47
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 54
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v4, 0x8

    if-eq v3, v4, :cond_a

    const/16 v4, 0x11

    if-eq v3, v4, :cond_9

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_8

    const/16 v4, 0x20

    if-eq v3, v4, :cond_7

    const/16 v4, 0x2a

    const/4 v5, 0x0

    if-eq v3, v4, :cond_4

    const/16 v4, 0x32

    if-eq v3, v4, :cond_1

    .line 110
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/Value;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 97
    :cond_1
    iget v3, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 98
    iget-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v3, Lcom/explorestack/protobuf/ListValue;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ListValue;->toBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    move-result-object v5

    .line 101
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 103
    check-cast v3, Lcom/explorestack/protobuf/ListValue;

    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/ListValue$Builder;->mergeFrom(Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 104
    invoke-virtual {v5}, Lcom/explorestack/protobuf/ListValue$Builder;->buildPartial()Lcom/explorestack/protobuf/ListValue;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 106
    :cond_3
    iput v4, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    goto :goto_0

    .line 83
    :cond_4
    iget v3, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 84
    iget-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v3, Lcom/explorestack/protobuf/Struct;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 87
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 89
    check-cast v3, Lcom/explorestack/protobuf/Struct;

    invoke-virtual {v5, v3}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 90
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    .line 92
    :cond_6
    iput v4, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    .line 77
    iput v3, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    .line 78
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 71
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 72
    iput v4, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    .line 73
    iput-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x2

    .line 66
    iput v3, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    .line 67
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 60
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 61
    iput v2, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

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

    iput-object p2, p0, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->makeExtensionsImmutable()V

    .line 126
    throw p1

    .line 124
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Value$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Value;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 24
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, 0x0

    .line 141
    iput p1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 p1, -0x1

    .line 375
    iput-byte p1, p0, Lcom/explorestack/protobuf/Value;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Value$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Value;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Value;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Value;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    return p1
.end method

.method static synthetic access$500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 17
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Value;
    .locals 1

    .line 1472
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 130
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 607
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 610
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 581
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 588
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 554
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 594
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 601
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 569
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 576
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 537
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 558
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Value;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 564
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Value;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 1487
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 453
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Value;

    if-nez v1, :cond_1

    .line 454
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 456
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Value;

    .line 458
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getKindCase()Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getKindCase()Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Value$KindCase;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 459
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 482
    :pswitch_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object v1

    .line 483
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/ListValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 478
    :pswitch_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 479
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 474
    :pswitch_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v1

    .line 475
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 470
    :pswitch_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 465
    :pswitch_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 467
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v5

    .line 466
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 461
    :pswitch_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNullValueValue()I

    move-result v1

    .line 462
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNullValueValue()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 488
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getBoolValue()Z
    .locals 2

    .line 293
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Value;
    .locals 1

    .line 1497
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    return-object v0
.end method

.method public final getKindCase()Lcom/explorestack/protobuf/Value$KindCase;
    .locals 1

    .line 183
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Value$KindCase;->forNumber(I)Lcom/explorestack/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public final getListValue()Lcom/explorestack/protobuf/ListValue;
    .locals 2

    .line 356
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 359
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final getListValueOrBuilder()Lcom/explorestack/protobuf/ListValueOrBuilder;
    .locals 2

    .line 369
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    return-object v0

    .line 372
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->getDefaultInstance()Lcom/explorestack/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public final getNullValue()Lcom/explorestack/protobuf/NullValue;
    .locals 2

    .line 209
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 212
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 211
    invoke-static {v0}, Lcom/explorestack/protobuf/NullValue;->valueOf(I)Lcom/explorestack/protobuf/NullValue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->UNRECOGNIZED:Lcom/explorestack/protobuf/NullValue;

    :cond_0
    return-object v0

    .line 215
    :cond_1
    sget-object v0, Lcom/explorestack/protobuf/NullValue;->NULL_VALUE:Lcom/explorestack/protobuf/NullValue;

    return-object v0
.end method

.method public final getNullValueValue()I
    .locals 2

    .line 196
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNumberValue()D
    .locals 2

    .line 227
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 1492
    sget-object v0, Lcom/explorestack/protobuf/Value;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 414
    iget v0, p0, Lcom/explorestack/protobuf/Value;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 418
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 419
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 420
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 422
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 423
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 425
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 424
    invoke-static {v1, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v0

    add-int/2addr v2, v0

    .line 427
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 428
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 430
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 431
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 433
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 432
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 435
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 436
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    .line 437
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 439
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 440
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    .line 441
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 443
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 444
    iput v2, p0, Lcom/explorestack/protobuf/Value;->memoizedSize:I

    return v2
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 3

    .line 243
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 246
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 247
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 249
    :cond_1
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 251
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 252
    iget v2, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    if-ne v2, v1, :cond_2

    .line 253
    iput-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getStringValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 3

    .line 268
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 271
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 272
    check-cast v0, Ljava/lang/String;

    .line 273
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 275
    iget v2, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    if-ne v2, v1, :cond_1

    .line 276
    iput-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 280
    :cond_2
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getStructValue()Lcom/explorestack/protobuf/Struct;
    .locals 2

    .line 318
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 321
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getStructValueOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 2

    .line 331
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0

    .line 334
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasListValue()Z
    .locals 2

    .line 346
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStructValue()Z
    .locals 2

    .line 308
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

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

    .line 494
    iget v0, p0, Lcom/explorestack/protobuf/Value;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 495
    iget v0, p0, Lcom/explorestack/protobuf/Value;->memoizedHashCode:I

    return v0

    .line 498
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Value;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 499
    iget v1, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 524
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ListValue;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 516
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v1

    .line 515
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 511
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 506
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v1

    goto :goto_0

    :pswitch_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNullValueValue()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 529
    iget-object v1, p0, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 530
    iput v0, p0, Lcom/explorestack/protobuf/Value;->memoizedHashCode:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 136
    sget-object v0, Lcom/explorestack/protobuf/StructProto;->internal_static_google_protobuf_Value_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Value;

    const-class v2, Lcom/explorestack/protobuf/Value$Builder;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 378
    iget-byte v0, p0, Lcom/explorestack/protobuf/Value;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 382
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Value;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->newBuilderForType()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Value;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->newBuilderForType()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Value$Builder;
    .locals 1

    .line 605
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 621
    new-instance v0, Lcom/explorestack/protobuf/Value$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Value$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Value$1;)V

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 33
    new-instance p1, Lcom/explorestack/protobuf/Value;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Value;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Value$Builder;
    .locals 2

    .line 614
    sget-object v0, Lcom/explorestack/protobuf/Value;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Value;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Value$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;-><init>(Lcom/explorestack/protobuf/Value$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Value$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Value$Builder;-><init>(Lcom/explorestack/protobuf/Value$1;)V

    .line 615
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->mergeFrom(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 392
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 393
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 394
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 393
    invoke-virtual {p1, v1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 396
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 397
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 399
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 400
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 401
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 400
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 403
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 404
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 406
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/Value;->kindCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 407
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->kind_:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/protobuf/ListValue;

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 409
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/Value;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
