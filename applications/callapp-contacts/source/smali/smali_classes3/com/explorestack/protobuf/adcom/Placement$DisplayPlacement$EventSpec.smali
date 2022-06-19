.class public final Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpecOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;
    }
.end annotation


# static fields
.field public static final API_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

.field public static final EXT_FIELD_NUMBER:I = 0x9

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x8

.field public static final JSTRK_FIELD_NUMBER:I = 0x4

.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final PXTRK_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final WJS_FIELD_NUMBER:I = 0x5

.field public static final WPX_FIELD_NUMBER:I = 0x7

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

.field private static final method_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/EventTrackingMethod;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
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

.field private jstrk_:Lcom/explorestack/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private methodMemoizedSerializedSize:I

.field private method_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

.field private type_:I

.field private wjs_:Z

.field private wpx_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12120
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 12186
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$2;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$2;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 14312
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    .line 14320
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$3;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$3;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11903
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 12473
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 11904
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    .line 11905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    .line 11906
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    .line 11907
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11908
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    .line 11909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11928
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;-><init>()V

    .line 11930
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11934
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 11938
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 12046
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_4

    :sswitch_0
    const/4 v4, 0x0

    .line 12034
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_1

    .line 12035
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 12037
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 12039
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 12040
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_2

    .line 12025
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 12028
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    .line 12029
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 12028
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12020
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wpx_:Z

    goto :goto_0

    .line 12010
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_3

    .line 12012
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x8

    .line 12015
    :cond_3
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12006
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wjs_:Z

    goto :goto_0

    .line 11996
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_4

    .line 11998
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x4

    .line 12001
    :cond_4
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11982
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 11983
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 11984
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_6

    .line 11985
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_5

    .line 11987
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 11990
    :cond_5
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11992
    :cond_6
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 11973
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_7

    .line 11975
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 11978
    :cond_7
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11959
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 11960
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 11961
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_9

    .line 11962
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_8

    .line 11964
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 11967
    :cond_8
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11969
    :cond_9
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 11950
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_a

    .line 11952
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 11955
    :cond_a
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 11944
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 11946
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :sswitch_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_4
    if-nez v4, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 12057
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 12058
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 12055
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_b

    .line 12061
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    :cond_b
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_c

    .line 12064
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_d

    .line 12067
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_e

    .line 12070
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_e
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_f

    .line 12073
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    .line 12075
    :cond_f
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 12076
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->makeExtensionsImmutable()V

    .line 12077
    throw p1

    :cond_10
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_11

    .line 12061
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_12

    .line 12064
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_13

    .line 12067
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_13
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_14

    .line 12070
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_14
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_15

    .line 12073
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    .line 12075
    :cond_15
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 12076
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x12 -> :sswitch_8
        0x18 -> :sswitch_7
        0x1a -> :sswitch_6
        0x22 -> :sswitch_5
        0x28 -> :sswitch_4
        0x32 -> :sswitch_3
        0x38 -> :sswitch_2
        0x42 -> :sswitch_1
        0x4a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11894
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 11901
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 12473
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 11894
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 11894
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$10100()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 11894
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$10200()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 11894
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$10300()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 11894
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 11894
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 11894
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8800()Z
    .locals 1

    .line 11894
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)I
    .locals 0

    .line 11894
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    return p0
.end method

.method static synthetic access$9002(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;I)I
    .locals 0

    .line 11894
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    return p1
.end method

.method static synthetic access$9100(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)Ljava/util/List;
    .locals 0

    .line 11894
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9102(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 11894
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)Ljava/util/List;
    .locals 0

    .line 11894
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9202(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 11894
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 11894
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$9302(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 11894
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;Z)Z
    .locals 0

    .line 11894
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wjs_:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 11894
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$9502(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 11894
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$9602(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;Z)Z
    .locals 0

    .line 11894
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wpx_:Z

    return p1
.end method

.method static synthetic access$9702(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 11894
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$9800(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)Ljava/util/List;
    .locals 0

    .line 11894
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9802(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 11894
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9900()Z
    .locals 1

    .line 11894
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1

    .line 14316
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12081
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_EventSpec_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;
    .locals 1

    .line 12746
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;
    .locals 1

    .line 12749
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12719
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12720
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12726
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12727
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12687
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12693
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12732
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12733
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12739
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12740
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12707
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12708
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12714
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 12715
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12676
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12682
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12697
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12703
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;",
            ">;"
        }
    .end annotation

    .line 14331
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12602
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    if-nez v1, :cond_1

    .line 12603
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 12605
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    .line 12607
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 12608
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 12609
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 12610
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getJstrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 12611
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getJstrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12612
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getWjs()Z

    move-result v1

    .line 12613
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getWjs()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 12614
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getPxtrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 12615
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getPxtrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 12616
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getWpx()Z

    move-result v1

    .line 12617
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getWpx()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 12618
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 12619
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 12620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 12621
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 12623
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 12624
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 12625
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v3

    :cond_c
    return v0
.end method

.method public final getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 12224
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public final getApiCount()I
    .locals 1

    .line 12214
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

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

    .line 12203
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getApiValue(I)I
    .locals 1

    .line 12245
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

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

    .line 12235
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 11894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 11894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1

    .line 14341
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 12405
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 12415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 12459
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 12449
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

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

    .line 12428
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 12470
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

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

    .line 12439
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getJstrk(I)Ljava/lang/String;
    .locals 1

    .line 12286
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getJstrkBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 12299
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getJstrkCount()I
    .locals 1

    .line 12274
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getJstrkList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 12262
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getJstrkList()Ljava/util/List;
    .locals 1

    .line 11894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getJstrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod(I)Lcom/explorestack/protobuf/adcom/EventTrackingMethod;
    .locals 2

    .line 12158
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;

    return-object p1
.end method

.method public final getMethodCount()I
    .locals 1

    .line 12148
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getMethodList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/EventTrackingMethod;",
            ">;"
        }
    .end annotation

    .line 12137
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getMethodValue(I)I
    .locals 1

    .line 12179
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getMethodValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 12169
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;",
            ">;"
        }
    .end annotation

    .line 14336
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPxtrk(I)Ljava/lang/String;
    .locals 1

    .line 12354
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getPxtrkBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 12367
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getPxtrkCount()I
    .locals 1

    .line 12342
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getPxtrkList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 12330
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getPxtrkList()Ljava/util/List;
    .locals 1

    .line 11894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getPxtrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 12528
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 12532
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/EventType;->EVENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/EventType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/EventType;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 12533
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    .line 12534
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 12538
    :goto_1
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 12539
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    .line 12540
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 12543
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getMethodList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 12545
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 12546
    :cond_3
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->methodMemoizedSerializedSize:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 12550
    :goto_2
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 12551
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    .line 12552
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v4

    .line 12555
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 12557
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 12558
    :cond_5
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->apiMemoizedSerializedSize:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 12562
    :goto_3
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 12563
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-int/2addr v0, v4

    .line 12566
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getJstrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 12568
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wjs_:Z

    if-eqz v1, :cond_7

    const/4 v4, 0x5

    .line 12570
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 12574
    :goto_4
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 12575
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v4

    .line 12578
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getPxtrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 12580
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wpx_:Z

    if-eqz v1, :cond_9

    const/4 v2, 0x7

    .line 12582
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12584
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    const/16 v1, 0x8

    .line 12585
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    .line 12586
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 12588
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_b

    const/16 v1, 0x9

    .line 12590
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12592
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12593
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->memoizedSize:I

    return v0
.end method

.method public final getType()Lcom/explorestack/protobuf/adcom/EventType;
    .locals 1

    .line 12113
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/EventType;->valueOf(I)Lcom/explorestack/protobuf/adcom/EventType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12114
    sget-object v0, Lcom/explorestack/protobuf/adcom/EventType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/EventType;

    :cond_0
    return-object v0
.end method

.method public final getTypeValue()I
    .locals 1

    .line 12102
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 11922
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getWjs()Z
    .locals 1

    .line 12314
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wjs_:Z

    return v0
.end method

.method public final getWpx()Z
    .locals 1

    .line 12382
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wpx_:Z

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 12395
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 12631
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 12632
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->memoizedHashCode:I

    return v0

    .line 12635
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 12637
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    add-int/2addr v0, v1

    .line 12638
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getMethodCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 12640
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12642
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getApiCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 12644
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12646
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getJstrkCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 12648
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getJstrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12652
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getWjs()Z

    move-result v1

    .line 12651
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 12653
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getPxtrkCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12655
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getPxtrkList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 12659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getWpx()Z

    move-result v1

    .line 12658
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 12660
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 12662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12664
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 12666
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 12668
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12669
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 12087
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_EventSpec_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    .line 12088
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 12476
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 12480
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 11894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 11894
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 11894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;
    .locals 1

    .line 12744
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;
    .locals 2

    .line 12760
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 11916
    new-instance p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 11894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 11894
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;
    .locals 2

    .line 12753
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    .line 12754
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder;

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

    .line 12487
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getSerializedSize()I

    .line 12488
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/EventType;->EVENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/EventType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/EventType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 12489
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->type_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12491
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x12

    .line 12492
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 12493
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->methodMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 12495
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 12496
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->method_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12498
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x1a

    .line 12499
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 12500
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->apiMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_3
    const/4 v1, 0x0

    .line 12502
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 12503
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->api_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 12505
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x4

    .line 12506
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->jstrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12508
    :cond_5
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wjs_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x5

    .line 12509
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_6
    const/4 v1, 0x0

    .line 12511
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/4 v2, 0x6

    .line 12512
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->pxtrk_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 12514
    :cond_7
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->wpx_:Z

    if-eqz v1, :cond_8

    const/4 v2, 0x7

    .line 12515
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12517
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0x8

    .line 12518
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12520
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    .line 12521
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 12523
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
