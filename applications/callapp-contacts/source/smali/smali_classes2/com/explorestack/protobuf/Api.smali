.class public final Lcom/explorestack/protobuf/Api;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Api$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Api;

.field public static final METHODS_FIELD_NUMBER:I = 0x2

.field public static final MIXINS_FIELD_NUMBER:I = 0x6

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Api;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7

.field public static final VERSION_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private methods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mixins_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Mixin;",
            ">;"
        }
    .end annotation
.end field

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

.field private volatile version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2499
    new-instance v0, Lcom/explorestack/protobuf/Api;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Api;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Api;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Api;

    .line 2507
    new-instance v0, Lcom/explorestack/protobuf/Api$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Api$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 512
    iput-byte v0, p0, Lcom/explorestack/protobuf/Api;->memoizedIsInitialized:B

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    .line 33
    iput-object v0, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/explorestack/protobuf/Api;-><init>()V

    .line 56
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 64
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_c

    const/16 v5, 0xa

    if-eq v4, v5, :cond_b

    const/16 v5, 0x12

    if-eq v4, v5, :cond_9

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_7

    const/16 v5, 0x22

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x32

    if-eq v4, v5, :cond_2

    const/16 v5, 0x38

    if-eq v4, v5, :cond_1

    .line 128
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/Api;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 124
    iput v4, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_3

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 117
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    .line 118
    invoke-static {}, Lcom/explorestack/protobuf/Mixin;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 117
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 101
    iget-object v5, p0, Lcom/explorestack/protobuf/Api;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v5, :cond_5

    .line 102
    invoke-virtual {v5}, Lcom/explorestack/protobuf/SourceContext;->toBuilder()Lcom/explorestack/protobuf/SourceContext$Builder;

    move-result-object v4

    .line 104
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/SourceContext;

    iput-object v5, p0, Lcom/explorestack/protobuf/Api;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/SourceContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext$Builder;

    .line 107
    invoke-virtual {v4}, Lcom/explorestack/protobuf/SourceContext$Builder;->buildPartial()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/Api;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 96
    iput-object v4, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_8

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 89
    :cond_8
    iget-object v4, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    .line 90
    invoke-static {}, Lcom/explorestack/protobuf/Option;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 89
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_a

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 80
    :cond_a
    iget-object v4, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    .line 81
    invoke-static {}, Lcom/explorestack/protobuf/Method;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 80
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 70
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 72
    iput-object v4, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 139
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 140
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 137
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_d

    .line 143
    iget-object p2, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_e

    .line 146
    iget-object p2, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_f

    .line 149
    iget-object p2, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    .line 151
    :cond_f
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/Api;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->makeExtensionsImmutable()V

    .line 153
    throw p1

    :cond_10
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_11

    .line 143
    iget-object p1, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_12

    .line 146
    iget-object p1, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_13

    .line 149
    iget-object p1, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    .line 151
    :cond_13
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/Api$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/Api;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 27
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 512
    iput-byte p1, p0, Lcom/explorestack/protobuf/Api;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/Api$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Api;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 20
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/explorestack/protobuf/Api;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/explorestack/protobuf/Api;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/Api;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/Api;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/Api;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/Api;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/Api;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/Api;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/Api;Lcom/explorestack/protobuf/SourceContext;)Lcom/explorestack/protobuf/SourceContext;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    return-object p1
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/Api;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/Api;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/Api;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    return p0
.end method

.method static synthetic access$902(Lcom/explorestack/protobuf/Api;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/Api;
    .locals 1

    .line 2503
    sget-object v0, Lcom/explorestack/protobuf/Api;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Api;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 157
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Api_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 724
    sget-object v0, Lcom/explorestack/protobuf/Api;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Api;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Api;->toBuilder()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/Api;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 727
    sget-object v0, Lcom/explorestack/protobuf/Api;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Api;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Api;->toBuilder()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/Api;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 698
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 705
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 665
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 671
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 711
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 718
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 686
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 693
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 654
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 660
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 675
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 681
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Api;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 2518
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 592
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/Api;

    if-nez v1, :cond_1

    .line 593
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 595
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/Api;

    .line 597
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 599
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v1

    .line 600
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 601
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v1

    .line 602
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 603
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 605
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->hasSourceContext()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->hasSourceContext()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 606
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->hasSourceContext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    .line 608
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/SourceContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 610
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v1

    .line 611
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 612
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    iget v3, p1, Lcom/explorestack/protobuf/Api;->syntax_:I

    if-eq v1, v3, :cond_9

    return v2

    .line 613
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/Api;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/Api;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/Api;
    .locals 1

    .line 2528
    sget-object v0, Lcom/explorestack/protobuf/Api;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Api;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public final getMethods(I)Lcom/explorestack/protobuf/Method;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Method;

    return-object p1
.end method

.method public final getMethodsCount()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    return-object v0
.end method

.method public final getMethodsOrBuilder(I)Lcom/explorestack/protobuf/MethodOrBuilder;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MethodOrBuilder;

    return-object p1
.end method

.method public final getMethodsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    return-object v0
.end method

.method public final getMixins(I)Lcom/explorestack/protobuf/Mixin;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Mixin;

    return-object p1
.end method

.method public final getMixinsCount()I
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    return-object v0
.end method

.method public final getMixinsOrBuilder(I)Lcom/explorestack/protobuf/MixinOrBuilder;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MixinOrBuilder;

    return-object p1
.end method

.method public final getMixinsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;

    .line 180
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 181
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 183
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 185
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;

    .line 201
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 202
    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 205
    iput-object v0, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;

    return-object v0

    .line 208
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions(I)Lcom/explorestack/protobuf/Option;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Option;

    return-object p1
.end method

.method public final getOptionsCount()I
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

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

    .line 277
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

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

    .line 288
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 2523
    sget-object v0, Lcom/explorestack/protobuf/Api;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 552
    iget v0, p0, Lcom/explorestack/protobuf/Api;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 559
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x2

    .line 560
    iget-object v4, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    .line 561
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 563
    :goto_2
    iget-object v3, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x3

    .line 564
    iget-object v4, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    .line 565
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 567
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 568
    iget-object v3, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 570
    :cond_4
    iget-object v2, p0, Lcom/explorestack/protobuf/Api;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 574
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x6

    .line 575
    iget-object v3, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    .line 576
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 578
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    sget-object v2, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_7

    const/4 v1, 0x7

    .line 579
    iget v2, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    .line 580
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 582
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/Api;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    iput v0, p0, Lcom/explorestack/protobuf/Api;->memoizedSize:I

    return v0
.end method

.method public final getSourceContext()Lcom/explorestack/protobuf/SourceContext;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/SourceContext;->getDefaultInstance()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSourceContextOrBuilder()Lcom/explorestack/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public final getSyntax()Lcom/explorestack/protobuf/Syntax;
    .locals 1

    .line 508
    iget v0, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/Syntax;->valueOf(I)Lcom/explorestack/protobuf/Syntax;

    move-result-object v0

    if-nez v0, :cond_0

    .line 509
    sget-object v0, Lcom/explorestack/protobuf/Syntax;->UNRECOGNIZED:Lcom/explorestack/protobuf/Syntax;

    :cond_0
    return-object v0
.end method

.method public final getSyntaxValue()I
    .locals 1

    .line 497
    iget v0, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    .line 349
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 350
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 352
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 354
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 355
    iput-object v0, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getVersionBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    .line 385
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 386
    check-cast v0, Ljava/lang/String;

    .line 387
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 389
    iput-object v0, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    return-object v0

    .line 392
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasSourceContext()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 619
    iget v0, p0, Lcom/explorestack/protobuf/Api;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 620
    iget v0, p0, Lcom/explorestack/protobuf/Api;->memoizedHashCode:I

    return v0

    .line 623
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Api;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 625
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 626
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getMethodsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 628
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 630
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getOptionsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 632
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 635
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 636
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->hasSourceContext()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 638
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/SourceContext;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 640
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getMixinsCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 642
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 645
    iget v1, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 646
    iget-object v1, p0, Lcom/explorestack/protobuf/Api;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 647
    iput v0, p0, Lcom/explorestack/protobuf/Api;->memoizedHashCode:I

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 163
    sget-object v0, Lcom/explorestack/protobuf/ApiProto;->internal_static_google_protobuf_Api_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/Api;

    const-class v2, Lcom/explorestack/protobuf/Api$Builder;

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 515
    iget-byte v0, p0, Lcom/explorestack/protobuf/Api;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 519
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/Api;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/Api$Builder;
    .locals 1

    .line 722
    invoke-static {}, Lcom/explorestack/protobuf/Api;->newBuilder()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Api$Builder;
    .locals 2

    .line 738
    new-instance v0, Lcom/explorestack/protobuf/Api$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/Api$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/Api$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->newBuilderForType()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Api;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->newBuilderForType()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 42
    new-instance p1, Lcom/explorestack/protobuf/Api;

    invoke-direct {p1}, Lcom/explorestack/protobuf/Api;-><init>()V

    return-object p1
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/Api$Builder;
    .locals 2

    .line 731
    sget-object v0, Lcom/explorestack/protobuf/Api;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/Api;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/Api$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Api$Builder;-><init>(Lcom/explorestack/protobuf/Api$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/Api$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/Api$Builder;-><init>(Lcom/explorestack/protobuf/Api$1;)V

    .line 732
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Api$Builder;->mergeFrom(Lcom/explorestack/protobuf/Api;)Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->toBuilder()Lcom/explorestack/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->toBuilder()Lcom/explorestack/protobuf/Api$Builder;

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

    .line 526
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 529
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 530
    iget-object v3, p0, Lcom/explorestack/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 532
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 533
    iget-object v3, p0, Lcom/explorestack/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 535
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getVersionBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    .line 536
    iget-object v2, p0, Lcom/explorestack/protobuf/Api;->version_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 538
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/Api;->sourceContext_:Lcom/explorestack/protobuf/SourceContext;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Api;->getSourceContext()Lcom/explorestack/protobuf/SourceContext;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 541
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    .line 542
    iget-object v2, p0, Lcom/explorestack/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 544
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    sget-object v1, Lcom/explorestack/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/explorestack/protobuf/Syntax;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Syntax;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x7

    .line 545
    iget v1, p0, Lcom/explorestack/protobuf/Api;->syntax_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 547
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/Api;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
