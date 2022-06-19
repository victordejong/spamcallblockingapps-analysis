.class public final Lcom/explorestack/protobuf/adcom/Ad$Video;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$VideoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    }
.end annotation


# static fields
.field public static final ADM_FIELD_NUMBER:I = 0x4

.field public static final API_FIELD_NUMBER:I = 0x2

.field public static final CURL_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

.field public static final EXT_FIELD_NUMBER:I = 0x7

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x6

.field public static final MIME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field private static final api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J

.field private static final type_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile adm_:Ljava/lang/Object;

.field private apiMemoizedSerializedSize:I

.field private api_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile curl_:Ljava/lang/Object;

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

.field private memoizedIsInitialized:B

.field private mime_:Lcom/explorestack/protobuf/LazyStringList;

.field private typeMemoizedSerializedSize:I

.field private type_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20733
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 20799
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$2;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video$2;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 22680
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 22688
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$3;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video$3;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20512
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 21034
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedIsInitialized:B

    .line 20513
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 20514
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 20515
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    const-string v0, ""

    .line 20516
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    .line 20517
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    .line 20518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20537
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>()V

    .line 20539
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20543
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_18

    .line 20547
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_13

    const/16 v5, 0xa

    if-eq v4, v5, :cond_11

    const/16 v5, 0x10

    if-eq v4, v5, :cond_f

    const/16 v5, 0x12

    if-eq v4, v5, :cond_c

    const/16 v5, 0x18

    if-eq v4, v5, :cond_a

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_7

    const/16 v5, 0x22

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x32

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1

    .line 20642
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Ad$Video;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x0

    .line 20630
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_2

    .line 20631
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 20633
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 20635
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 20636
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_4

    .line 20621
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 20624
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 20625
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 20624
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20614
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20616
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    goto :goto_0

    .line 20608
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20610
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    goto :goto_0

    .line 20594
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 20595
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 20596
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_9

    .line 20597
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x4

    if-nez v6, :cond_8

    .line 20599
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 20602
    :cond_8
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20604
    :cond_9
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 20585
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_b

    .line 20587
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 20590
    :cond_b
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20571
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 20572
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 20573
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_e

    .line 20574
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_d

    .line 20576
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 20579
    :cond_d
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20581
    :cond_e
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 20562
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_10

    .line 20564
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 20567
    :cond_10
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 20553
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_12

    .line 20555
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 20558
    :cond_12
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_13
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 20653
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 20654
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 20651
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_14

    .line 20657
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_14
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_15

    .line 20660
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    :cond_15
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_16

    .line 20663
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    :cond_16
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_17

    .line 20666
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 20668
    :cond_17
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 20669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->makeExtensionsImmutable()V

    .line 20670
    throw p1

    :cond_18
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_19

    .line 20657
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_19
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_1a

    .line 20660
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_1b

    .line 20663
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_1c

    .line 20666
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 20668
    :cond_1c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 20669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20503
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 20510
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 21034
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 20503
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$16400()Z
    .locals 1

    .line 20503
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$16600(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 20503
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$16602(Lcom/explorestack/protobuf/adcom/Ad$Video;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 20503
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16700(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;
    .locals 0

    .line 20503
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$16702(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20503
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$16800(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;
    .locals 0

    .line 20503
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$16802(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20503
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$16900(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/lang/Object;
    .locals 0

    .line 20503
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16902(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20503
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17000(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/lang/Object;
    .locals 0

    .line 20503
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17002(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20503
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17102(Lcom/explorestack/protobuf/adcom/Ad$Video;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 20503
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$17200(Lcom/explorestack/protobuf/adcom/Ad$Video;)Ljava/util/List;
    .locals 0

    .line 20503
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$17202(Lcom/explorestack/protobuf/adcom/Ad$Video;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20503
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17300()Z
    .locals 1

    .line 20503
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$17400(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 20503
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$17500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 20503
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$17600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20503
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 20503
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$17800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 20503
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$17900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20503
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20503
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1

    .line 22684
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 20674
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Video_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21276
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21279
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21249
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 21250
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21256
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 21257
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21217
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21223
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21262
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 21263
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21269
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 21270
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21237
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 21238
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21244
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 21245
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21206
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21212
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21227
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21233
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            ">;"
        }
    .end annotation

    .line 22699
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 21143
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    if-nez v1, :cond_1

    .line 21144
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 21146
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    .line 21148
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 21149
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 21150
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    iget-object v3, p1, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 21151
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    iget-object v3, p1, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 21152
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

    move-result-object v1

    .line 21153
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 21154
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurl()Ljava/lang/String;

    move-result-object v1

    .line 21155
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 21156
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 21157
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21158
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 21159
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 21161
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 21162
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 21163
    :cond_9
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Ad$Video;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAdm()Ljava/lang/String;
    .locals 2

    .line 20872
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    .line 20873
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20874
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 20876
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20878
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20879
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAdmBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20892
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    .line 20893
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20894
    check-cast v0, Ljava/lang/String;

    .line 20895
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20897
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    return-object v0

    .line 20900
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 20771
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public final getApiCount()I
    .locals 1

    .line 20761
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;"
        }
    .end annotation

    .line 20750
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getApiValue(I)I
    .locals 1

    .line 20792
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getApiValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 20782
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    return-object v0
.end method

.method public final getCurl()Ljava/lang/String;
    .locals 2

    .line 20914
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    .line 20915
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20916
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 20918
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20920
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20921
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20934
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    .line 20935
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20936
    check-cast v0, Ljava/lang/String;

    .line 20937
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20939
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    return-object v0

    .line 20942
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 20503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 20503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Video;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Video;
    .locals 1

    .line 22709
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 20966
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 20976
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 21020
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 21010
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

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

    .line 20989
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 21031
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

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

    .line 21000
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getMime(I)Ljava/lang/String;
    .locals 1

    .line 20716
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getMimeBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 20727
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeCount()I
    .locals 1

    .line 20706
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 20696
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 20503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Video;",
            ">;"
        }
    .end annotation

    .line 22704
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 21083
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21089
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 21090
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/adcom/Ad$Video;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    .line 21093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 21097
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 21098
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    .line 21099
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v3

    .line 21102
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 21104
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 21105
    :cond_3
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->apiMemoizedSerializedSize:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 21109
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 21110
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    .line 21111
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v2, v3

    .line 21114
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 21116
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 21117
    :cond_5
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->typeMemoizedSerializedSize:I

    .line 21119
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdmBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x4

    .line 21120
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 21122
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x5

    .line 21123
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 21125
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/4 v1, 0x6

    .line 21126
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    .line 21127
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 21129
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    .line 21131
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 21133
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 21134
    iput v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedSize:I

    return v2
.end method

.method public final getType(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .locals 2

    .line 20837
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p1
.end method

.method public final getTypeCount()I
    .locals 1

    .line 20827
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation

    .line 20816
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getTypeValue(I)I
    .locals 1

    .line 20858
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getTypeValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 20848
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 20531
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 20956
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 21169
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 21170
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedHashCode:I

    return v0

    .line 21173
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 21174
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 21176
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21178
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getApiCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 21180
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21182
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getTypeCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 21184
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 21187
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 21189
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21190
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 21192
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21194
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 21196
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 21198
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21199
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 20680
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Video_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    .line 20681
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 21037
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 21041
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 20503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 20503
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 20503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 1

    .line 21274
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Video;->newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2

    .line 21290
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 20525
    new-instance p1, Lcom/explorestack/protobuf/adcom/Ad$Video;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad$Video;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 20503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 20503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;
    .locals 2

    .line 21283
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Video;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Video;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 21284
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Video;)Lcom/explorestack/protobuf/adcom/Ad$Video$Builder;

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

    .line 21048
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getSerializedSize()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21049
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 21050
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21052
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x12

    .line 21053
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 21054
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->apiMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_1
    const/4 v1, 0x0

    .line 21056
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 21057
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->api_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21059
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x1a

    .line 21060
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 21061
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->typeMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_3
    const/4 v1, 0x0

    .line 21063
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 21064
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->type_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 21066
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getAdmBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    .line 21067
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->adm_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21069
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getCurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x5

    .line 21070
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->curl_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21072
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/4 v1, 0x6

    .line 21073
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 21075
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    .line 21076
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Video;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 21078
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Video;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
