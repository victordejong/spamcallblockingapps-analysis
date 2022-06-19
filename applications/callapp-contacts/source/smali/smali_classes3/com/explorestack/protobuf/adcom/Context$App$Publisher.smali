.class public final Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$App$PublisherOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Publisher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    }
.end annotation


# static fields
.field public static final CATTAX_FIELD_NUMBER:I = 0x5

.field public static final CAT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

.field public static final DOMAIN_FIELD_NUMBER:I = 0x3

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Publisher;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private cat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private volatile domain_:Ljava/lang/Object;

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2843
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 2851
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 995
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1416
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->memoizedIsInitialized:B

    const-string v0, ""

    .line 996
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;

    .line 997
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    .line 998
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    .line 999
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 1000
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    .line 1001
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1020
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;-><init>()V

    .line 1022
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    .line 1030
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0xa

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12

    if-eq v4, v5, :cond_9

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_8

    const/16 v5, 0x22

    if-eq v4, v5, :cond_6

    const/16 v5, 0x28

    if-eq v4, v5, :cond_5

    const/16 v5, 0x32

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1

    .line 1091
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1079
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 1080
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 1082
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 1084
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 1085
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    .line 1070
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 1073
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    .line 1074
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 1073
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1063
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 1065
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    goto :goto_0

    .line 1054
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_7

    .line 1056
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 1059
    :cond_7
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1048
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 1050
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1042
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 1044
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1036
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 1038
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;
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

    .line 1102
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1103
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1100
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_c

    .line 1106
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_c
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_d

    .line 1109
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    .line 1111
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1112
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->makeExtensionsImmutable()V

    .line 1113
    throw p1

    :cond_e
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_f

    .line 1106
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_f
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_10

    .line 1109
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    .line 1111
    :cond_10
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1112
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 986
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 993
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1416
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 986
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/util/List;
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 986
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 986
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 986
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 986
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 986
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 986
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 986
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/lang/Object;
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/lang/Object;
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Ljava/lang/Object;
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)I
    .locals 0

    .line 986
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    return p0
.end method

.method static synthetic access$802(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;I)I
    .locals 0

    .line 986
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    return p1
.end method

.method static synthetic access$902(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1

    .line 2847
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1117
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Publisher_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 1629
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 1632
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1602
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1603
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1609
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1610
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1570
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1576
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1615
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1616
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1622
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1623
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1591
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1597
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1598
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1559
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1565
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1580
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1586
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Publisher;",
            ">;"
        }
    .end annotation

    .line 2862
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1499
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    if-nez v1, :cond_1

    .line 1500
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1502
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    .line 1504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1505
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1506
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1507
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1508
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 1509
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1510
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 1511
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1512
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    iget v3, p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    if-eq v1, v3, :cond_6

    return v2

    .line 1513
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 1514
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1515
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 1516
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 1518
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 1519
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 1520
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCat(I)Ljava/lang/String;
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getCatCount()I
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 1324
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1325
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public final getCattaxValue()I
    .locals 1

    .line 1313
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Publisher;
    .locals 1

    .line 2872
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    .line 1223
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1224
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1226
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1228
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1229
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1242
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    .line 1243
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1244
    check-cast v0, Ljava/lang/String;

    .line 1245
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1247
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    return-object v0

    .line 1250
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 1358
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 1392
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public final getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;

    .line 1139
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1140
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1142
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1144
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1145
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1158
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;

    .line 1159
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1160
    check-cast v0, Ljava/lang/String;

    .line 1161
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1163
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;

    return-object v0

    .line 1166
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1180
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    .line 1181
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1182
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1184
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1186
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1187
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    .line 1201
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1202
    check-cast v0, Ljava/lang/String;

    .line 1203
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1205
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    return-object v0

    .line 1208
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
            "Lcom/explorestack/protobuf/adcom/Context$App$Publisher;",
            ">;"
        }
    .end annotation

    .line 2867
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 1456
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1460
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1463
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 1464
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1466
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDomainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 1467
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1471
    :goto_1
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 1472
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v4

    .line 1475
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1477
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    sget-object v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_5

    const/4 v1, 0x5

    .line 1478
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    .line 1479
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1481
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    const/4 v1, 0x6

    .line 1482
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    .line 1483
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1485
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 1487
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1489
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1490
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1526
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1527
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->memoizedHashCode:I

    return v0

    .line 1530
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1532
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getCatCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 1542
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    add-int/2addr v0, v1

    .line 1543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 1545
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1547
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 1549
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 1551
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1552
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1123
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Publisher_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    .line 1124
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1419
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1423
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 1

    .line 1627
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 2

    .line 1643
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1008
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;
    .locals 2

    .line 1636
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Publisher;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 1637
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Publisher;)Lcom/explorestack/protobuf/adcom/Context$App$Publisher$Builder;

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

    .line 1430
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1433
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1434
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1436
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getDomainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 1437
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->domain_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1439
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 1440
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1442
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x5

    .line 1443
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->cattax_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1445
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    .line 1446
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1448
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 1449
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 1451
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Publisher;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
