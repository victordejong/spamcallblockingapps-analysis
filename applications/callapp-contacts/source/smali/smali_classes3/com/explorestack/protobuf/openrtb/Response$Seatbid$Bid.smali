.class public final Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;,
        Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;,
        Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;
    }
.end annotation


# static fields
.field public static final BURL_FIELD_NUMBER:I = 0x8

.field public static final CID_FIELD_NUMBER:I = 0x5

.field public static final DEAL_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

.field public static final EXP_FIELD_NUMBER:I = 0xa

.field public static final EXT_FIELD_NUMBER:I = 0xf

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0xe

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final ITEM_FIELD_NUMBER:I = 0x2

.field public static final LURL_FIELD_NUMBER:I = 0x9

.field public static final MACRO_FIELD_NUMBER:I = 0xc

.field public static final MEDIA_FIELD_NUMBER:I = 0xd

.field public static final MID_FIELD_NUMBER:I = 0xb

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRICE_FIELD_NUMBER:I = 0x3

.field public static final PURL_FIELD_NUMBER:I = 0x7

.field public static final TACTIC_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private volatile burl_:Ljava/lang/Object;

.field private volatile cid_:Ljava/lang/Object;

.field private volatile deal_:Ljava/lang/Object;

.field private exp_:I

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

.field private volatile item_:Ljava/lang/Object;

.field private volatile lurl_:Ljava/lang/Object;

.field private macro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;",
            ">;"
        }
    .end annotation
.end field

.field private media_:Lcom/explorestack/protobuf/Any;

.field private memoizedIsInitialized:B

.field private volatile mid_:Ljava/lang/Object;

.field private price_:D

.field private volatile purl_:Ljava/lang/Object;

.field private volatile tactic_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5698
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 5706
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 826
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3148
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->memoizedIsInitialized:B

    const-string v0, ""

    .line 827
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;

    .line 828
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    .line 829
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    .line 830
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    .line 831
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    .line 832
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    .line 833
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    .line 834
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    .line 835
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    .line 836
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    .line 837
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 856
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;-><init>()V

    .line 858
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 866
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 980
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    .line 968
    :sswitch_0
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_1

    .line 969
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 971
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 973
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 974
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_2

    .line 959
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 962
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    .line 963
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 962
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 946
    :sswitch_2
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->media_:Lcom/explorestack/protobuf/Any;

    if-eqz v4, :cond_3

    .line 947
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v5

    .line 949
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Any;

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->media_:Lcom/explorestack/protobuf/Any;

    if-eqz v5, :cond_0

    .line 951
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    .line 952
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->media_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    :sswitch_3
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_4

    .line 937
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 940
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    .line 941
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 940
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 930
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 932
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 926
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->exp_:I

    goto/16 :goto_0

    .line 919
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 921
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 913
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 915
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 907
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 909
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 901
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 903
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 895
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 897
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 889
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 891
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 885
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->price_:D

    goto/16 :goto_0

    .line 878
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 880
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 872
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 874
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_f
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 991
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 992
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 989
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_5

    .line 995
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    :cond_5
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_6

    .line 998
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    .line 1000
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1001
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->makeExtensionsImmutable()V

    .line 1002
    throw p1

    :cond_7
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_8

    .line 995
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    :cond_8
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_9

    .line 998
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    .line 1000
    :cond_9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1001
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x19 -> :sswitch_c
        0x22 -> :sswitch_b
        0x2a -> :sswitch_a
        0x32 -> :sswitch_9
        0x3a -> :sswitch_8
        0x42 -> :sswitch_7
        0x4a -> :sswitch_6
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x62 -> :sswitch_3
        0x6a -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 817
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 824
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3148
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 817
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 817
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;D)D
    .locals 0

    .line 817
    iput-wide p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->price_:D

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;I)I
    .locals 0

    .line 817
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->exp_:I

    return p1
.end method

.method static synthetic access$2800(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/lang/Object;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->media_:Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Ljava/util/List;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3300()Z
    .locals 1

    .line 817
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3400()Z
    .locals 1

    .line 817
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$3600()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 817
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 817
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 817
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 817
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 817
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 817
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 817
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 817
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 817
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 817
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1

    .line 5702
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1006
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 3447
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 3450
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3420
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3421
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3427
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3428
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3388
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3394
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3433
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3434
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3440
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3441
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3408
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3409
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3415
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3416
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3377
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3383
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3398
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3404
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            ">;"
        }
    .end annotation

    .line 5717
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3277
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    if-nez v1, :cond_1

    .line 3278
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3280
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 3282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3283
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 3284
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getItem()Ljava/lang/String;

    move-result-object v1

    .line 3285
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getItem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 3286
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 3288
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPrice()D

    move-result-wide v5

    .line 3287
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 3289
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDeal()Ljava/lang/String;

    move-result-object v1

    .line 3290
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDeal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 3291
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 3292
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 3293
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getTactic()Ljava/lang/String;

    move-result-object v1

    .line 3294
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getTactic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 3295
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurl()Ljava/lang/String;

    move-result-object v1

    .line 3296
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 3297
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getBurl()Ljava/lang/String;

    move-result-object v1

    .line 3298
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getBurl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 3299
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurl()Ljava/lang/String;

    move-result-object v1

    .line 3300
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 3301
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result v1

    .line 3302
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 3303
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMid()Ljava/lang/String;

    move-result-object v1

    .line 3304
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 3305
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMacroList()Ljava/util/List;

    move-result-object v1

    .line 3306
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMacroList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 3307
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasMedia()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasMedia()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    .line 3308
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasMedia()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3309
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 3310
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 3312
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 3313
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3314
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 3315
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 3317
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 3318
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 3319
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getBurl()Ljava/lang/String;
    .locals 2

    .line 2827
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    .line 2828
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2829
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2831
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2833
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2834
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getBurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2848
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    .line 2849
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2850
    check-cast v0, Ljava/lang/String;

    .line 2851
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2853
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    return-object v0

    .line 2856
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getCid()Ljava/lang/String;
    .locals 2

    .line 2698
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    .line 2699
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2700
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2702
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2704
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2705
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2718
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    .line 2719
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2720
    check-cast v0, Ljava/lang/String;

    .line 2721
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2723
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    return-object v0

    .line 2726
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDeal()Ljava/lang/String;
    .locals 2

    .line 2655
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    .line 2656
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2657
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2659
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2661
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2662
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDealBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2676
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    .line 2677
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2678
    check-cast v0, Ljava/lang/String;

    .line 2679
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2681
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    return-object v0

    .line 2684
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1

    .line 5727
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object v0
.end method

.method public final getExp()I
    .locals 1

    .line 2913
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->exp_:I

    return v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 3080
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 3090
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 3134
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 3124
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

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

    .line 3103
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 3145
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

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

    .line 3114
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 2553
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;

    .line 2554
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2555
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2557
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2559
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2560
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2574
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;

    .line 2575
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2576
    check-cast v0, Ljava/lang/String;

    .line 2577
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2579
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;

    return-object v0

    .line 2582
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getItem()Ljava/lang/String;
    .locals 2

    .line 2597
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    .line 2598
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2599
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2601
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2603
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2604
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getItemBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2618
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    .line 2619
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2620
    check-cast v0, Ljava/lang/String;

    .line 2621
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2623
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    return-object v0

    .line 2626
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLurl()Ljava/lang/String;
    .locals 2

    .line 2870
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    .line 2871
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2872
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2874
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2876
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2877
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getLurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2890
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    .line 2891
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2892
    check-cast v0, Ljava/lang/String;

    .line 2893
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2895
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    return-object v0

    .line 2898
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMacro(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;
    .locals 1

    .line 3001
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;

    return-object p1
.end method

.method public final getMacroCount()I
    .locals 1

    .line 2991
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getMacroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro;",
            ">;"
        }
    .end annotation

    .line 2970
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    return-object v0
.end method

.method public final getMacroOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;
    .locals 1

    .line 3012
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;

    return-object p1
.end method

.method public final getMacroOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2981
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    return-object v0
.end method

.method public final getMedia()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 3043
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->media_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getMediaOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 3057
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final getMid()Ljava/lang/String;
    .locals 2

    .line 2927
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    .line 2928
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2929
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2931
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2933
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2934
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2948
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    .line 2949
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2950
    check-cast v0, Ljava/lang/String;

    .line 2951
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2953
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    return-object v0

    .line 2956
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
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            ">;"
        }
    .end annotation

    .line 5722
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPrice()D
    .locals 2

    .line 2641
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->price_:D

    return-wide v0
.end method

.method public final getPurl()Ljava/lang/String;
    .locals 2

    .line 2784
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    .line 2785
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2786
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2788
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2790
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2791
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2804
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    .line 2805
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2806
    check-cast v0, Ljava/lang/String;

    .line 2807
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2809
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    return-object v0

    .line 2812
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .line 3212
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3216
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3217
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3219
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getItemBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 3220
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3222
    :cond_2
    iget-wide v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->price_:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3

    const/4 v4, 0x3

    .line 3224
    invoke-static {v4, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 3226
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDealBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    .line 3227
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3229
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 3230
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3232
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getTacticBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x6

    .line 3233
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3235
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x7

    .line 3236
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3238
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getBurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x8

    .line 3239
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3241
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x9

    .line 3242
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3244
    :cond_9
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->exp_:I

    if-eqz v2, :cond_a

    const/16 v3, 0xa

    .line 3246
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3248
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0xb

    .line 3249
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    const/4 v2, 0x0

    .line 3251
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    const/16 v3, 0xc

    .line 3252
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    .line 3253
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3255
    :cond_c
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->media_:Lcom/explorestack/protobuf/Any;

    if-eqz v2, :cond_d

    const/16 v2, 0xd

    .line 3257
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3259
    :cond_d
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    const/16 v2, 0xe

    .line 3260
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    .line 3261
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3263
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 3265
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3267
    :cond_f
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3268
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->memoizedSize:I

    return v0
.end method

.method public final getTactic()Ljava/lang/String;
    .locals 2

    .line 2741
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    .line 2742
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2743
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2745
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2747
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2748
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTacticBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2762
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    .line 2763
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2764
    check-cast v0, Ljava/lang/String;

    .line 2765
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2767
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    return-object v0

    .line 2770
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 3070
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMedia()Z
    .locals 1

    .line 3029
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->media_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 3325
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3326
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->memoizedHashCode:I

    return v0

    .line 3329
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3331
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 3336
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 3335
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 3338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDeal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 3340
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 3342
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getTactic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 3344
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 3346
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getBurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 3348
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 3350
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExp()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 3352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3353
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMacroCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 3355
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMacroList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3357
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasMedia()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 3359
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3361
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 3363
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3365
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 3367
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 3369
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3370
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1012
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    .line 1013
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3151
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3155
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 817
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 3445
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->newBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 2

    .line 3461
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Response$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 844
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 817
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 2

    .line 3454
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V

    .line 3455
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

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

    .line 3162
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3163
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3165
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getItemBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 3166
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->item_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3168
    :cond_1
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->price_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x3

    .line 3169
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3171
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDealBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 3172
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->deal_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3174
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 3175
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->cid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3177
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getTacticBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 3178
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->tactic_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3180
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 3181
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->purl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3183
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getBurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 3184
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->burl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3186
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getLurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 3187
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->lurl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3189
    :cond_8
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->exp_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 3190
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3192
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 3193
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->mid_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3195
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0xc

    .line 3196
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->macro_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3198
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->media_:Lcom/explorestack/protobuf/Any;

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    .line 3199
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3201
    :cond_c
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    const/16 v1, 0xe

    .line 3202
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3204
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 3205
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3207
    :cond_e
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
