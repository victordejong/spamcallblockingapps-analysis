.class public final Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$App$Content$ProducerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$App$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Producer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    }
.end annotation


# static fields
.field public static final CATTAX_FIELD_NUMBER:I = 0x5

.field public static final CAT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

.field public static final DOMAIN_FIELD_NUMBER:I = 0x3

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x6

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;",
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

    .line 5737
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    .line 5745
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3889
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 4310
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedIsInitialized:B

    const-string v0, ""

    .line 3890
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    .line 3891
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    .line 3892
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    .line 3893
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 3894
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    .line 3895
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3914
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>()V

    .line 3916
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3920
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    .line 3924
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

    .line 3985
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 3973
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 3974
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 3976
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 3978
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 3979
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    .line 3964
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 3967
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    .line 3968
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 3967
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3957
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 3959
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    goto :goto_0

    .line 3948
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_7

    .line 3950
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 3953
    :cond_7
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3942
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3944
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3936
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3938
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3930
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3932
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;
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

    .line 3996
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3997
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3994
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_c

    .line 4000
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_c
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_d

    .line 4003
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    .line 4005
    :cond_d
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4006
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->makeExtensionsImmutable()V

    .line 4007
    throw p1

    :cond_e
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_f

    .line 4000
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_f
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_10

    .line 4003
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    .line 4005
    :cond_10
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4006
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3880
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 3887
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4310
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 3880
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$2100()Z
    .locals 1

    .line 3880
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;
    .locals 0

    .line 3880
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3880
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;
    .locals 0

    .line 3880
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3880
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/lang/Object;
    .locals 0

    .line 3880
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3880
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 3880
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 3880
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)I
    .locals 0

    .line 3880
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    return p0
.end method

.method static synthetic access$2702(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;I)I
    .locals 0

    .line 3880
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    return p1
.end method

.method static synthetic access$2802(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 3880
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Ljava/util/List;
    .locals 0

    .line 3880
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3880
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 3880
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 3880
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$3200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 3880
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3880
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3880
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3880
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3880
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1

    .line 5741
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4011
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4523
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4526
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4496
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4497
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4503
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4504
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4464
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4470
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4509
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4510
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4516
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4517
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4484
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4485
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4491
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 4492
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4453
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4459
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4474
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4480
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;",
            ">;"
        }
    .end annotation

    .line 5756
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4393
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    if-nez v1, :cond_1

    .line 4394
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4396
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    .line 4398
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4399
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 4400
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4401
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4402
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 4403
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 4404
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 4405
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 4406
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    iget v3, p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    if-eq v1, v3, :cond_6

    return v2

    .line 4407
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 4408
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4409
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 4410
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 4412
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 4413
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 4414
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCat(I)Ljava/lang/String;
    .locals 1

    .line 4182
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getCatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 4194
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getCatCount()I
    .locals 1

    .line 4171
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getCatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 4160
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getCatList()Ljava/util/List;
    .locals 1

    .line 3880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 4218
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4219
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public final getCattaxValue()I
    .locals 1

    .line 4207
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;
    .locals 1

    .line 5766
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 2

    .line 4116
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    .line 4117
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4118
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4120
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4122
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4123
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDomainBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4136
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    .line 4137
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4138
    check-cast v0, Ljava/lang/String;

    .line 4139
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4141
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    return-object v0

    .line 4144
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 4242
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 4252
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 4296
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 4286
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

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

    .line 4265
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 4307
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

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

    .line 4276
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 4032
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    .line 4033
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4034
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4036
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4038
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4039
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4052
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    .line 4053
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4054
    check-cast v0, Ljava/lang/String;

    .line 4055
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4057
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    return-object v0

    .line 4060
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 4074
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    .line 4075
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4076
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4078
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 4080
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4081
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 4094
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    .line 4095
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4096
    check-cast v0, Ljava/lang/String;

    .line 4097
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 4099
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    return-object v0

    .line 4102
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
            "Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;",
            ">;"
        }
    .end annotation

    .line 5761
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 4350
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4354
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4355
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4357
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 4358
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4360
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 4361
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4365
    :goto_1
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 4366
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v4

    .line 4369
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 4371
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    sget-object v3, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_5

    const/4 v1, 0x5

    .line 4372
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    .line 4373
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4375
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    const/4 v1, 0x6

    .line 4376
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    .line 4377
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4379
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 4381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4383
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4384
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 3908
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 4232
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 4420
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 4421
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedHashCode:I

    return v0

    .line 4424
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4426
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 4430
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4431
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 4433
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getCatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 4436
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    add-int/2addr v0, v1

    .line 4437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 4439
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4441
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 4443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 4445
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4446
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4017
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_App_Content_Producer_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    .line 4018
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4313
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4317
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3880
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 1

    .line 4521
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 4537
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 3902
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3880
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;
    .locals 2

    .line 4530
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 4531
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;)Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer$Builder;

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

    .line 4324
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4325
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4327
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getNameBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4328
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4330
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getDomainBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 4331
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->domain_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4333
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 4334
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4336
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x5

    .line 4337
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->cattax_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4339
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    .line 4340
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4342
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 4343
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 4345
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$App$Content$Producer;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
