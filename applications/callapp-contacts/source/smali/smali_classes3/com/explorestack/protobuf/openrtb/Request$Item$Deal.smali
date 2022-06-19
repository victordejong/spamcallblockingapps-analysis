.class public final Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    }
.end annotation


# static fields
.field public static final AT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

.field public static final EXT_FIELD_NUMBER:I = 0x8

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x7

.field public static final FLRCUR_FIELD_NUMBER:I = 0x3

.field public static final FLR_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation
.end field

.field public static final WADOMAIN_FIELD_NUMBER:I = 0x6

.field public static final WSEAT_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private at_:I

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

.field private flr_:D

.field private volatile flrcur_:Ljava/lang/Object;

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private wadomain_:Lcom/explorestack/protobuf/LazyStringList;

.field private wseat_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6800
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    .line 6808
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4843
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5277
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->memoizedIsInitialized:B

    const-string v0, ""

    .line 4844
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;

    .line 4845
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    .line 4846
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4847
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 4848
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4867
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;-><init>()V

    .line 4869
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4873
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_11

    .line 4877
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v5, 0xa

    if-eq v4, v5, :cond_c

    const/16 v5, 0x11

    if-eq v4, v5, :cond_b

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_a

    const/16 v5, 0x20

    if-eq v4, v5, :cond_9

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_7

    const/16 v5, 0x32

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x42

    if-eq v4, v5, :cond_1

    .line 4945
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4933
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 4934
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 4936
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 4938
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 4939
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_4

    .line 4924
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 4927
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    .line 4928
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 4927
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4914
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_6

    .line 4916
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x2

    .line 4919
    :cond_6
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4905
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_8

    .line 4907
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 4910
    :cond_8
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 4901
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->at_:I

    goto/16 :goto_0

    .line 4894
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 4896
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4890
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flr_:D

    goto/16 :goto_0

    .line 4883
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 4885
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4956
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 4957
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4954
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_e

    .line 4960
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_e
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_f

    .line 4963
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_f
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_10

    .line 4966
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    .line 4968
    :cond_10
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4969
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->makeExtensionsImmutable()V

    .line 4970
    throw p1

    :cond_11
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_12

    .line 4960
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_12
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_13

    .line 4963
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_13
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_14

    .line 4966
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    .line 4968
    :cond_14
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 4969
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4834
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 4841
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5277
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 4834
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    .line 4834
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/lang/Object;
    .locals 0

    .line 4834
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4834
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;D)D
    .locals 0

    .line 4834
    iput-wide p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flr_:D

    return-wide p1
.end method

.method static synthetic access$4200(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/lang/Object;
    .locals 0

    .line 4834
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4834
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;I)I
    .locals 0

    .line 4834
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->at_:I

    return p1
.end method

.method static synthetic access$4400(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 4834
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 4834
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 4834
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 4834
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 4834
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;
    .locals 0

    .line 4834
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 4834
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4800()Z
    .locals 1

    .line 4834
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 4834
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$5000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 4834
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4834
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4834
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4834
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4834
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1

    .line 6804
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4974
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 5511
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 5514
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5484
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5485
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5491
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5492
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5452
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5458
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5497
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5498
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5504
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5505
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5472
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5473
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5479
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 5480
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5441
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5447
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5462
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5468
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation

    .line 6819
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5372
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    if-nez v1, :cond_1

    .line 5373
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5375
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    .line 5377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getId()Ljava/lang/String;

    move-result-object v1

    .line 5378
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5379
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlr()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 5381
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlr()D

    move-result-wide v5

    .line 5380
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 5382
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlrcur()Ljava/lang/String;

    move-result-object v1

    .line 5383
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlrcur()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 5384
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getAt()I

    move-result v1

    .line 5385
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getAt()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 5386
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 5387
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 5388
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 5389
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 5390
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 5391
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 5393
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 5395
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 5396
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 5397
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAt()I
    .locals 1

    .line 5096
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->at_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 4834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 4834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1

    .line 6829
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 5209
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 5219
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 5263
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 5253
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

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

    .line 5232
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 5274
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

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

    .line 5243
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getFlr()D
    .locals 2

    .line 5039
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flr_:D

    return-wide v0
.end method

.method public final getFlrcur()Ljava/lang/String;
    .locals 2

    .line 5053
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    .line 5054
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5055
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5057
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5059
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5060
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5074
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    .line 5075
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5076
    check-cast v0, Ljava/lang/String;

    .line 5077
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5079
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 5082
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 4996
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;

    .line 4997
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4998
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5000
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5002
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5003
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5017
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;

    .line 5018
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5019
    check-cast v0, Ljava/lang/String;

    .line 5020
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5022
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;

    return-object v0

    .line 5025
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
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation

    .line 6824
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 8

    .line 5320
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 5324
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5325
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5327
    :goto_0
    iget-wide v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flr_:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_2

    const/4 v5, 0x2

    .line 5329
    invoke-static {v5, v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v0, v3

    .line 5331
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 5332
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 5334
    :cond_3
    iget v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->at_:I

    if-eqz v3, :cond_4

    const/4 v4, 0x4

    .line 5336
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5340
    :goto_1
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 5341
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v4

    .line 5344
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5348
    :goto_2
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 5349
    iget-object v5, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v4

    .line 5352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 5354
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    const/4 v1, 0x7

    .line 5355
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    .line 5356
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5358
    :cond_7
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 5360
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5362
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5363
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 4861
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getWadomain(I)Ljava/lang/String;
    .locals 1

    .line 5175
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getWadomainBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 5186
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getWadomainCount()I
    .locals 1

    .line 5165
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 5155
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getWadomainList()Ljava/util/List;
    .locals 1

    .line 4834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getWseat(I)Ljava/lang/String;
    .locals 1

    .line 5130
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getWseatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 5141
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getWseatCount()I
    .locals 1

    .line 5120
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 5110
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getWseatList()Ljava/util/List;
    .locals 1

    .line 4834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 5199
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 5403
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 5404
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->memoizedHashCode:I

    return v0

    .line 5407
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 5409
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5412
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlr()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 5411
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5414
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlrcur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 5416
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getAt()I

    move-result v1

    add-int/2addr v0, v1

    .line 5417
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWseatCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 5419
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5421
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWadomainCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 5423
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5425
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 5427
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5429
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 5431
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 5433
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5434
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4980
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 4981
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5280
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5284
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 4834
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 5509
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    .line 5525
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 4855
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    .line 5518
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 5519
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5291
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5292
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5294
    :cond_0
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flr_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 5295
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 5297
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 5298
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->flrcur_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5300
    :cond_2
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->at_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 5301
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5303
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 5304
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 5306
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 5307
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5309
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    .line 5310
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5312
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 5313
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 5315
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
