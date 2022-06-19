.class public final Lcom/explorestack/protobuf/Enum;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/EnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Enum$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Enum;

.field public static final ENUMVALUE_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Enum;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x4

.field public static final SYNTAX_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private enumvalue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/EnumValue;",
            ">;"
        }
    .end annotation
.end field

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

.field private sourceContext_:Lcom/explorestack/protobuf/SourceContext;

.field private syntax_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1764
    new-instance v0, Lcom/explorestack/protobuf/Enum;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Enum;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Enum;

    .line 1772
    new-instance v0, Lcom/explorestack/protobuf/Enum$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Enum$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 351
    iput-byte v0, p0, Lcom/explorestack/protobuf/Enum;->memoizedIsInitialized:B

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

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
    invoke-direct {p0}, Lcom/explorestack/protobuf/Enum;-><init>()V

    .line 47
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0xa

    if-eq v4, v5, :cond_8

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_2

    const/16 v5, 0x28

    if-eq v4, v5, :cond_1

    .line 104
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/Enum;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 100
    iput v4, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 86
    iget-object v5, p0, Lcom/explorestack/protobuf/Enum;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v5, :cond_3

    .line 87
    invoke-virtual {v5}, Lcom/explorestack/protobuf/SourceContext;->toBuilder()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v4

    .line 89
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/SourceContext;

    iput-object v5, p0, Lcom/explorestack/protobuf/Enum;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    .line 92
    invoke-virtual {v4}, Lcom/explorestack/protobuf/SourceContext$Builder;->buildPartial()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/Enum;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    goto :goto_0

    :cond_4
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_5

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 80
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    .line 81
    invoke-static {}, Lcom/explorestack/protobuf/Option;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 80
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_7

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 71
    :cond_7
    iget-object v4, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    .line 72
    invoke-static {}, Lcom/explorestack/protobuf/EnumValue;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 71
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 61
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 63
    iput-object v4, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 115
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 116
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 113
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_a

    .line 119
    iget-object p2, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_b

    .line 122
    iget-object p2, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    .line 124
    :cond_b
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Enum;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->makeExtensionsImmutable()V

    .line 126
    throw p1

    :cond_c
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_d

    .line 119
    iget-object p1, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_e

    .line 122
    iget-object p1, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    .line 124
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Enum;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Enum$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Enum;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 351
    iput-byte p1, p0, Lcom/explorestack/protobuf/Enum;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Enum$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Enum;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/Enum;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Enum;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/Enum;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/Enum;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/Enum;Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Enum;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    return-object p1
.end method

.method static synthetic access$700(Lcom/explorestack/protobuf/Enum;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    return p0
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/Enum;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    return p1
.end method

.method static synthetic access$800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Enum;
    .locals 1

    .line 1768
    sget-object v0, Lcom/explorestack/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Enum;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 130
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Enum_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 540
    sget-object v0, Lcom/explorestack/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Enum;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Enum;->toBuilder()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Enum;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 543
    sget-object v0, Lcom/explorestack/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Enum;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Enum;->toBuilder()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/Enum;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 514
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 521
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 481
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 487
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 527
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 534
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 502
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 509
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 470
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 476
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 491
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Enum;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Enum;",
            ">;"
        }
    .end annotation

    .line 1783
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 418
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Enum;

    if-nez v1, :cond_1

    .line 419
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 421
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Enum;

    .line 423
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v1

    .line 426
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 427
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v1

    .line 428
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 429
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->hasSourceContext()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Enum;->hasSourceContext()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 430
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->hasSourceContext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 431
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    .line 432
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Enum;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/SourceContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 434
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    iget v3, p1, Lcom/explorestack/protobuf/Enum;->syntax_:I

    if-eq v1, v3, :cond_7

    return v2

    .line 435
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Enum;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Enum;
    .locals 1

    .line 1793
    sget-object v0, Lcom/explorestack/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Enum;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final getEnumvalue(I)Lcom/explorestack/protobuf/EnumValue;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValue;

    return-object p1
.end method

.method public final getEnumvalueCount()I
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getEnumvalueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    return-object v0
.end method

.method public final getEnumvalueOrBuilder(I)Lcom/explorestack/protobuf/EnumValueOrBuilder;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/EnumValueOrBuilder;

    return-object p1
.end method

.method public final getEnumvalueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/EnumValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;

    .line 152
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 155
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;

    .line 172
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 176
    iput-object v0, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;

    return-object v0

    .line 179
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

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

    .line 248
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

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

    .line 259
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Enum;",
            ">;"
        }
    .end annotation

    .line 1788
    sget-object v0, Lcom/explorestack/protobuf/Enum;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 385
    iget v0, p0, Lcom/explorestack/protobuf/Enum;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 392
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x2

    .line 393
    iget-object v4, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    .line 394
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 397
    iget-object v3, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    .line 398
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 400
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    sget-object v2, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x5

    .line 405
    iget v2, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    .line 406
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 408
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 409
    iput v0, p0, Lcom/explorestack/protobuf/Enum;->memoizedSize:I

    return v0
.end method

.method public final getSourceContext()Lcom/explorestack/protobuf/SourceContext;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSourceContextOrBuilder()Lcom/explorestack/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 347
    iget v0, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Syntax;->valueOf(I)Lcom/explorestack/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 441
    iget v0, p0, Lcom/explorestack/protobuf/Enum;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 442
    iget v0, p0, Lcom/explorestack/protobuf/Enum;->memoizedHashCode:I

    return v0

    .line 445
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Enum;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 447
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getEnumvalueCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 450
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 454
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->hasSourceContext()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 458
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SourceContext;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 461
    iget v1, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 462
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    iput v0, p0, Lcom/explorestack/protobuf/Enum;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 136
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Enum_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Enum;

    const-class v2, Lcom/explorestack/protobuf/Enum$Builder;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 354
    iget-byte v0, p0, Lcom/explorestack/protobuf/Enum;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 358
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Enum;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 1

    .line 538
    invoke-static {}, Lcom/explorestack/protobuf/Enum;->newBuilder()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Enum$Builder;
    .locals 2

    .line 554
    new-instance v0, Lcom/explorestack/protobuf/Enum$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Enum$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Enum$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->newBuilderForType()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Enum;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->newBuilderForType()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 33
    new-instance p1, Lcom/explorestack/protobuf/Enum;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Enum;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Enum$Builder;
    .locals 2

    .line 547
    sget-object v0, Lcom/explorestack/protobuf/Enum;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Enum;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Enum$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Enum$Builder;-><init>(Lcom/explorestack/protobuf/Enum$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Enum$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Enum$Builder;-><init>(Lcom/explorestack/protobuf/Enum$1;)V

    .line 548
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Enum$Builder;->mergeFrom(Lcom/explorestack/protobuf/Enum;)Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->toBuilder()Lcom/explorestack/protobuf/Enum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->toBuilder()Lcom/explorestack/protobuf/Enum$Builder;

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

    .line 365
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 368
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 369
    iget-object v3, p0, Lcom/explorestack/protobuf/Enum;->enumvalue_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 372
    iget-object v2, p0, Lcom/explorestack/protobuf/Enum;->options_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 375
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Enum;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 377
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    sget-object v1, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 378
    iget v1, p0, Lcom/explorestack/protobuf/Enum;->syntax_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/Enum;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
