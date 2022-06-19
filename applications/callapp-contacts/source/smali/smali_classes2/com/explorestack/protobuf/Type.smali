.class public final Lcom/explorestack/protobuf/Type;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Type$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Type;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final ONEOFS_FIELD_NUMBER:I = 0x3

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final SYNTAX_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private fields_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private oneofs_:Lcom/explorestack/protobuf/LazyStringList;

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

    .line 1986
    new-instance v0, Lcom/explorestack/protobuf/Type;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Type;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Type;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Type;

    .line 1994
    new-instance v0, Lcom/explorestack/protobuf/Type$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Type$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 409
    iput-byte v0, p0, Lcom/explorestack/protobuf/Type;->memoizedIsInitialized:B

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    .line 25
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

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
    invoke-direct {p0}, Lcom/explorestack/protobuf/Type;-><init>()V

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
    if-nez v1, :cond_f

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0xa

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12

    if-eq v4, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x22

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_2

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1

    .line 114
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/Type;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 110
    iput v4, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 96
    iget-object v5, p0, Lcom/explorestack/protobuf/Type;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v5, :cond_3

    .line 97
    invoke-virtual {v5}, Lcom/explorestack/protobuf/SourceContext;->toBuilder()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v4

    .line 99
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/SourceContext;

    iput-object v5, p0, Lcom/explorestack/protobuf/Type;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    .line 102
    invoke-virtual {v4}, Lcom/explorestack/protobuf/SourceContext$Builder;->buildPartial()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/Type;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    goto :goto_0

    :cond_4
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_5

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 90
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    .line 91
    invoke-static {}, Lcom/explorestack/protobuf/Option;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 90
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_7

    .line 79
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x2

    .line 82
    :cond_7
    iget-object v5, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_9

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 72
    :cond_9
    iget-object v4, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    .line 73
    invoke-static {}, Lcom/explorestack/protobuf/Field;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 72
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 62
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 64
    iput-object v4, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;
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

    .line 125
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 126
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 123
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_c

    .line 129
    iget-object p2, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_d

    .line 132
    iget-object p2, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_e

    .line 135
    iget-object p2, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    .line 137
    :cond_e
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Type;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->makeExtensionsImmutable()V

    .line 139
    throw p1

    :cond_f
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_10

    .line 129
    iget-object p1, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    :cond_10
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_11

    .line 132
    iget-object p1, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_11
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_12

    .line 135
    iget-object p1, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    .line 137
    :cond_12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Type;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Type$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Type;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 409
    iput-byte p1, p0, Lcom/explorestack/protobuf/Type;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Type$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Type;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/Type;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/Type;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Type;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/Type;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/Type;)Ljava/util/List;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/Type;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/Type;Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/explorestack/protobuf/Type;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    return-object p1
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/Type;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    return p0
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/Type;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    return p1
.end method

.method static synthetic access$900()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Type;
    .locals 1

    .line 1990
    sget-object v0, Lcom/explorestack/protobuf/Type;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Type;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 143
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Type_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 615
    sget-object v0, Lcom/explorestack/protobuf/Type;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Type;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Type;->toBuilder()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 618
    sget-object v0, Lcom/explorestack/protobuf/Type;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Type;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Type;->toBuilder()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 589
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 596
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 556
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 562
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 602
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 609
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 577
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 584
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 545
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 566
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 572
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Type;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 2005
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 487
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Type;

    if-nez v1, :cond_1

    .line 488
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 490
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Type;

    .line 492
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 494
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getFieldsList()Ljava/util/List;

    move-result-object v1

    .line 495
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->getFieldsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 496
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getOneofsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 497
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->getOneofsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 498
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getOptionsList()Ljava/util/List;

    move-result-object v1

    .line 499
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 500
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->hasSourceContext()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->hasSourceContext()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 501
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->hasSourceContext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    .line 503
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Type;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/SourceContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 505
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    iget v3, p1, Lcom/explorestack/protobuf/Type;->syntax_:I

    if-eq v1, v3, :cond_8

    return v2

    .line 506
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/Type;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Type;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Type;
    .locals 1

    .line 2015
    sget-object v0, Lcom/explorestack/protobuf/Type;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Type;

    return-object v0
.end method

.method public final getFields(I)Lcom/explorestack/protobuf/Field;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Field;

    return-object p1
.end method

.method public final getFieldsCount()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    return-object v0
.end method

.method public final getFieldsOrBuilder(I)Lcom/explorestack/protobuf/FieldOrBuilder;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/FieldOrBuilder;

    return-object p1
.end method

.method public final getFieldsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/FieldOrBuilder;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;

    .line 165
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 166
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 168
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 170
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;

    .line 185
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 189
    iput-object v0, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;

    return-object v0

    .line 192
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOneofs(I)Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getOneofsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getOneofsCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getOneofsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getOneofsList()Ljava/util/List;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getOneofsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

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

    .line 306
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

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

    .line 317
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 2010
    sget-object v0, Lcom/explorestack/protobuf/Type;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 446
    iget v0, p0, Lcom/explorestack/protobuf/Type;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 453
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x2

    .line 454
    iget-object v5, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    .line 455
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 459
    :goto_2
    iget-object v5, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 460
    iget-object v5, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/Type;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v4

    .line 463
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getOneofsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 465
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    const/4 v1, 0x4

    .line 466
    iget-object v3, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    .line 467
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 469
    :cond_4
    iget-object v1, p0, Lcom/explorestack/protobuf/Type;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    sget-object v2, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_6

    const/4 v1, 0x6

    .line 474
    iget v2, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    .line 475
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/Type;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    iput v0, p0, Lcom/explorestack/protobuf/Type;->memoizedSize:I

    return v0
.end method

.method public final getSourceContext()Lcom/explorestack/protobuf/SourceContext;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSourceContextOrBuilder()Lcom/explorestack/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 405
    iget v0, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Syntax;->valueOf(I)Lcom/explorestack/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 512
    iget v0, p0, Lcom/explorestack/protobuf/Type;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 513
    iget v0, p0, Lcom/explorestack/protobuf/Type;->memoizedHashCode:I

    return v0

    .line 516
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Type;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 518
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getFieldsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 521
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getFieldsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getOneofsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 525
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getOneofsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 529
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->hasSourceContext()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 533
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SourceContext;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 536
    iget v1, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 537
    iget-object v1, p0, Lcom/explorestack/protobuf/Type;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 538
    iput v0, p0, Lcom/explorestack/protobuf/Type;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 149
    sget-object v0, Lcom/explorestack/protobuf/TypeProto;->internal_static_google_protobuf_Type_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Type;

    const-class v2, Lcom/explorestack/protobuf/Type$Builder;

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 412
    iget-byte v0, p0, Lcom/explorestack/protobuf/Type;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 416
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Type;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->newBuilderForType()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Type;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->newBuilderForType()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Type$Builder;
    .locals 1

    .line 613
    invoke-static {}, Lcom/explorestack/protobuf/Type;->newBuilder()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Type$Builder;
    .locals 2

    .line 629
    new-instance v0, Lcom/explorestack/protobuf/Type$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Type$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Type$1;)V

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 34
    new-instance p1, Lcom/explorestack/protobuf/Type;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Type;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->toBuilder()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->toBuilder()Lcom/explorestack/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Type$Builder;
    .locals 2

    .line 622
    sget-object v0, Lcom/explorestack/protobuf/Type;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Type;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Type$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Type$Builder;-><init>(Lcom/explorestack/protobuf/Type$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Type$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Type$Builder;-><init>(Lcom/explorestack/protobuf/Type$1;)V

    .line 623
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Type$Builder;->mergeFrom(Lcom/explorestack/protobuf/Type;)Lcom/explorestack/protobuf/Type$Builder;

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

    .line 423
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 426
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 427
    iget-object v3, p0, Lcom/explorestack/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 429
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 430
    iget-object v3, p0, Lcom/explorestack/protobuf/Type;->oneofs_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 432
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    .line 433
    iget-object v2, p0, Lcom/explorestack/protobuf/Type;->options_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 436
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Type;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 438
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    sget-object v1, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x6

    .line 439
    iget v1, p0, Lcom/explorestack/protobuf/Type;->syntax_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/Type;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
