.class public final Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPlacement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpecOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormatOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormatOrBuilder;
    }
.end annotation


# static fields
.field public static final AMPREN_FIELD_NUMBER:I = 0x6

.field public static final API_FIELD_NUMBER:I = 0xa

.field public static final CLKTYPE_FIELD_NUMBER:I = 0x5

.field public static final CONTEXT_FIELD_NUMBER:I = 0x8

.field public static final CTYPE_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

.field public static final DISPLAYFMT_FIELD_NUMBER:I = 0x10

.field public static final EVENT_FIELD_NUMBER:I = 0x12

.field public static final EXT_FIELD_NUMBER:I = 0x14

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x13

.field public static final H_FIELD_NUMBER:I = 0xd

.field public static final IFRBUST_FIELD_NUMBER:I = 0x4

.field public static final INSTL_FIELD_NUMBER:I = 0x2

.field public static final MIME_FIELD_NUMBER:I = 0x9

.field public static final NATIVEFMT_FIELD_NUMBER:I = 0x11

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;",
            ">;"
        }
    .end annotation
.end field

.field public static final POS_FIELD_NUMBER:I = 0x1

.field public static final PRIV_FIELD_NUMBER:I = 0xf

.field public static final PTYPE_FIELD_NUMBER:I = 0x7

.field public static final TOPFRAME_FIELD_NUMBER:I = 0x3

.field public static final UNIT_FIELD_NUMBER:I = 0xe

.field public static final W_FIELD_NUMBER:I = 0xc

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

.field private static final ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/DisplayCreativeType;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private ampren_:I

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

.field private clktype_:I

.field private context_:I

.field private ctypeMemoizedSerializedSize:I

.field private ctype_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private displayfmt_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;",
            ">;"
        }
    .end annotation
.end field

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;",
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

.field private h_:I

.field private ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

.field private instl_:Z

.field private memoizedIsInitialized:B

.field private mime_:Lcom/explorestack/protobuf/LazyStringList;

.field private nativefmt_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

.field private pos_:I

.field private priv_:Z

.field private ptype_:I

.field private topframe_:Z

.field private unit_:I

.field private w_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14578
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 14644
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$2;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$2;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 18267
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 18275
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$3;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$3;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 762
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 15005
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 763
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    .line 764
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    .line 765
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    .line 766
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    .line 767
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    .line 768
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    .line 770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    .line 771
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    .line 772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    .line 773
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    .line 774
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 793
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;-><init>()V

    .line 795
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_15

    .line 803
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 986
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_4

    .line 974
    :sswitch_0
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_1

    .line 975
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 977
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 979
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 980
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_2

    .line 965
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    .line 968
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    .line 969
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 968
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_3

    .line 956
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 959
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    .line 960
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 959
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 943
    :sswitch_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->nativefmt_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    if-eqz v4, :cond_4

    .line 944
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    move-result-object v5

    .line 946
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->nativefmt_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    if-eqz v5, :cond_0

    .line 948
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;

    .line 949
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->nativefmt_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_5

    .line 934
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 937
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    .line 938
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 937
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 929
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->priv_:Z

    goto/16 :goto_0

    .line 922
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 924
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    goto/16 :goto_0

    .line 918
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->h_:I

    goto/16 :goto_0

    .line 913
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->w_:I

    goto/16 :goto_0

    .line 898
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 899
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 900
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_7

    .line 901
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x8

    if-nez v6, :cond_6

    .line 903
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 906
    :cond_6
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 908
    :cond_7
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 889
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_8

    .line 891
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 894
    :cond_8
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 875
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 876
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 877
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_a

    .line 878
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x4

    if-nez v6, :cond_9

    .line 880
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 883
    :cond_9
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 885
    :cond_a
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 866
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_b

    .line 868
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 871
    :cond_b
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 857
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_c

    .line 859
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x2

    .line 862
    :cond_c
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 851
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 853
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    goto/16 :goto_0

    .line 845
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 847
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    goto/16 :goto_0

    .line 841
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ampren_:I

    goto/16 :goto_0

    .line 834
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 836
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    goto/16 :goto_0

    .line 825
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_d

    .line 827
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 830
    :cond_d
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 821
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->topframe_:Z

    goto/16 :goto_0

    .line 816
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->instl_:Z

    goto/16 :goto_0

    .line 809
    :sswitch_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 811
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :sswitch_16
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

    .line 997
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 998
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 995
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_e

    .line 1001
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_e
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_f

    .line 1004
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_f
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_10

    .line 1007
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    :cond_10
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_11

    .line 1010
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_12

    .line 1013
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v3, 0x20

    if-eqz p2, :cond_13

    .line 1016
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_14

    .line 1019
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    .line 1021
    :cond_14
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->makeExtensionsImmutable()V

    .line 1023
    throw p1

    :cond_15
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_16

    .line 1001
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_16
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_17

    .line 1004
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_17
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_18

    .line 1007
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_19

    .line 1010
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_1a

    .line 1013
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_1b

    .line 1016
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_1c

    .line 1019
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    .line 1021
    :cond_1c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 1022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_16
        0x8 -> :sswitch_15
        0x10 -> :sswitch_14
        0x18 -> :sswitch_13
        0x22 -> :sswitch_12
        0x28 -> :sswitch_11
        0x30 -> :sswitch_10
        0x38 -> :sswitch_f
        0x40 -> :sswitch_e
        0x4a -> :sswitch_d
        0x50 -> :sswitch_c
        0x52 -> :sswitch_b
        0x58 -> :sswitch_a
        0x5a -> :sswitch_9
        0x60 -> :sswitch_8
        0x68 -> :sswitch_7
        0x70 -> :sswitch_6
        0x78 -> :sswitch_5
        0x82 -> :sswitch_4
        0x8a -> :sswitch_3
        0x92 -> :sswitch_2
        0x9a -> :sswitch_1
        0xa2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 760
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 15005
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 753
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10900()Z
    .locals 1

    .line 753
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11100(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)I
    .locals 0

    .line 753
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    return p0
.end method

.method static synthetic access$11102(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    return p1
.end method

.method static synthetic access$11202(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Z)Z
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->instl_:Z

    return p1
.end method

.method static synthetic access$11302(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Z)Z
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->topframe_:Z

    return p1
.end method

.method static synthetic access$11400(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$11402(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$11500(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)I
    .locals 0

    .line 753
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    return p0
.end method

.method static synthetic access$11502(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    return p1
.end method

.method static synthetic access$11602(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ampren_:I

    return p1
.end method

.method static synthetic access$11700(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)I
    .locals 0

    .line 753
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    return p0
.end method

.method static synthetic access$11702(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    return p1
.end method

.method static synthetic access$11800(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)I
    .locals 0

    .line 753
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    return p0
.end method

.method static synthetic access$11802(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    return p1
.end method

.method static synthetic access$11900(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$11902(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$12000(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Ljava/util/List;
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$12002(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Ljava/util/List;
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$12102(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->w_:I

    return p1
.end method

.method static synthetic access$12302(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->h_:I

    return p1
.end method

.method static synthetic access$12400(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)I
    .locals 0

    .line 753
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    return p0
.end method

.method static synthetic access$12402(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;I)I
    .locals 0

    .line 753
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    return p1
.end method

.method static synthetic access$12502(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Z)Z
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->priv_:Z

    return p1
.end method

.method static synthetic access$12600(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Ljava/util/List;
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$12602(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->nativefmt_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    return-object p1
.end method

.method static synthetic access$12800(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Ljava/util/List;
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$12802(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12902(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$13000(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Ljava/util/List;
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$13002(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13100()Z
    .locals 1

    .line 753
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13200()Z
    .locals 1

    .line 753
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13300()Z
    .locals 1

    .line 753
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13400(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 753
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$13500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 753
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 753
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 753
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 753
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$13900()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 753
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1

    .line 18271
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1027
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;
    .locals 1

    .line 15405
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;
    .locals 1

    .line 15408
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15378
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15379
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15385
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15386
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15346
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15352
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15391
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15392
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15398
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15399
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15366
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15367
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15373
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 15374
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15335
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15341
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15356
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15362
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;",
            ">;"
        }
    .end annotation

    .line 18286
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 15211
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-nez v1, :cond_1

    .line 15212
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 15214
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 15216
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 15217
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getInstl()Z

    move-result v1

    .line 15218
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getInstl()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 15219
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getTopframe()Z

    move-result v1

    .line 15220
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getTopframe()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 15221
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getIfrbustList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 15222
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getIfrbustList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 15223
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    if-eq v1, v2, :cond_6

    return v3

    .line 15224
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getAmpren()I

    move-result v1

    .line 15225
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getAmpren()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 15226
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    if-eq v1, v2, :cond_8

    return v3

    .line 15227
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    if-eq v1, v2, :cond_9

    return v3

    .line 15228
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 15229
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 15230
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 15231
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 15232
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getW()I

    move-result v1

    .line 15233
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getW()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 15234
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getH()I

    move-result v1

    .line 15235
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getH()I

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 15236
    :cond_e
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    if-eq v1, v2, :cond_f

    return v3

    .line 15237
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getPriv()Z

    move-result v1

    .line 15238
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getPriv()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 15239
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDisplayfmtList()Ljava/util/List;

    move-result-object v1

    .line 15240
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDisplayfmtList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 15241
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hasNativefmt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hasNativefmt()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 15242
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hasNativefmt()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 15243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getNativefmt()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    move-result-object v1

    .line 15244
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getNativefmt()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 15246
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getEventList()Ljava/util/List;

    move-result-object v1

    .line 15247
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getEventList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    .line 15248
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 15249
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 15250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 15251
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 15253
    :cond_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 15254
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 15255
    :cond_17
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v3

    :cond_18
    return v0
.end method

.method public final getAmpren()I
    .locals 1

    .line 14477
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ampren_:I

    return v0
.end method

.method public final getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 14616
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public final getApiCount()I
    .locals 1

    .line 14606
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

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

    .line 14595
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getApiValue(I)I
    .locals 1

    .line 14637
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

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

    .line 14627
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    return-object v0
.end method

.method public final getClktype()Lcom/explorestack/protobuf/adcom/ClickType;
    .locals 1

    .line 14463
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ClickType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ClickType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14464
    sget-object v0, Lcom/explorestack/protobuf/adcom/ClickType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ClickType;

    :cond_0
    return-object v0
.end method

.method public final getClktypeValue()I
    .locals 1

    .line 14452
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    return v0
.end method

.method public final getContext()Lcom/explorestack/protobuf/adcom/DisplayContextType;
    .locals 1

    .line 14526
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DisplayContextType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DisplayContextType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14527
    sget-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    :cond_0
    return-object v0
.end method

.method public final getContextValue()I
    .locals 1

    .line 14515
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    return v0
.end method

.method public final getCtype(I)Lcom/explorestack/protobuf/adcom/DisplayCreativeType;
    .locals 2

    .line 14682
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;

    return-object p1
.end method

.method public final getCtypeCount()I
    .locals 1

    .line 14672
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCtypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/DisplayCreativeType;",
            ">;"
        }
    .end annotation

    .line 14661
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getCtypeValue(I)I
    .locals 1

    .line 14703
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getCtypeValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 14693
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1

    .line 18296
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object v0
.end method

.method public final getDisplayfmt(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;
    .locals 1

    .line 14812
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;

    return-object p1
.end method

.method public final getDisplayfmtCount()I
    .locals 1

    .line 14802
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDisplayfmtList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat;",
            ">;"
        }
    .end annotation

    .line 14781
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    return-object v0
.end method

.method public final getDisplayfmtOrBuilder(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormatOrBuilder;
    .locals 1

    .line 14823
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormatOrBuilder;

    return-object p1
.end method

.method public final getDisplayfmtOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormatOrBuilder;",
            ">;"
        }
    .end annotation

    .line 14792
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    return-object v0
.end method

.method public final getEvent(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;
    .locals 1

    .line 14903
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;

    return-object p1
.end method

.method public final getEventCount()I
    .locals 1

    .line 14893
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec;",
            ">;"
        }
    .end annotation

    .line 14872
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    return-object v0
.end method

.method public final getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpecOrBuilder;
    .locals 1

    .line 14914
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpecOrBuilder;

    return-object p1
.end method

.method public final getEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpecOrBuilder;",
            ">;"
        }
    .end annotation

    .line 14883
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 14937
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 14947
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 14991
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 14981
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

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

    .line 14960
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 15002
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

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

    .line 14971
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getH()I
    .locals 1

    .line 14730
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->h_:I

    return v0
.end method

.method public final getIfrbust(I)Ljava/lang/String;
    .locals 1

    .line 14428
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getIfrbustBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 14439
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getIfrbustCount()I
    .locals 1

    .line 14418
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getIfrbustList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 14408
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getIfrbustList()Ljava/util/List;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getIfrbustList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getInstl()Z
    .locals 1

    .line 14381
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->instl_:Z

    return v0
.end method

.method public final getMime(I)Ljava/lang/String;
    .locals 1

    .line 14561
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getMimeBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 14572
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeCount()I
    .locals 1

    .line 14551
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 14541
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getNativefmt()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;
    .locals 1

    .line 14848
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->nativefmt_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getNativefmtOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormatOrBuilder;
    .locals 1

    .line 14859
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getNativefmt()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;",
            ">;"
        }
    .end annotation

    .line 18291
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPos()Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .locals 1

    .line 14367
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14368
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    :cond_0
    return-object v0
.end method

.method public final getPosValue()I
    .locals 1

    .line 14356
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    return v0
.end method

.method public final getPriv()Z
    .locals 1

    .line 14768
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->priv_:Z

    return v0
.end method

.method public final getPtype()Lcom/explorestack/protobuf/adcom/DisplayPlacementType;
    .locals 1

    .line 14501
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DisplayPlacementType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DisplayPlacementType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14502
    sget-object v0, Lcom/explorestack/protobuf/adcom/DisplayPlacementType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DisplayPlacementType;

    :cond_0
    return-object v0
.end method

.method public final getPtypeValue()I
    .locals 1

    .line 14490
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 15093
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 15097
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_INVALID:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 15098
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    .line 15099
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15101
    :goto_0
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->instl_:Z

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    .line 15103
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15105
    :cond_2
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->topframe_:Z

    if-eqz v1, :cond_3

    const/4 v4, 0x3

    .line 15107
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 15111
    :goto_1
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 15112
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v4

    .line 15115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getIfrbustList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 15117
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/ClickType;->CLICK_TYPE_NON_CLICKABLE:Lcom/explorestack/protobuf/adcom/ClickType;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/ClickType;->getNumber()I

    move-result v4

    if-eq v1, v4, :cond_5

    const/4 v1, 0x5

    .line 15118
    iget v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    .line 15119
    invoke-static {v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15121
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ampren_:I

    if-eqz v1, :cond_6

    const/4 v4, 0x6

    .line 15123
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15125
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/DisplayPlacementType;->DISPLAY_PLACEMENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DisplayPlacementType;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/DisplayPlacementType;->getNumber()I

    move-result v4

    if-eq v1, v4, :cond_7

    const/4 v1, 0x7

    .line 15126
    iget v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    .line 15127
    invoke-static {v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15129
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/DisplayContextType;->getNumber()I

    move-result v4

    if-eq v1, v4, :cond_8

    const/16 v1, 0x8

    .line 15130
    iget v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    .line 15131
    invoke-static {v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 15135
    :goto_2
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 15136
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    add-int/2addr v0, v4

    .line 15139
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 15143
    :goto_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 15144
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    .line 15145
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    add-int/2addr v0, v2

    .line 15148
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    .line 15150
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 15151
    :cond_b
    iput v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->apiMemoizedSerializedSize:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 15155
    :goto_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 15156
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    .line 15157
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    add-int/2addr v0, v2

    .line 15160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getCtypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 15162
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 15163
    :cond_d
    iput v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctypeMemoizedSerializedSize:I

    .line 15165
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->w_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xc

    .line 15167
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15169
    :cond_e
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->h_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xd

    .line 15171
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15173
    :cond_f
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_INVALID:Lcom/explorestack/protobuf/adcom/SizeUnit;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/SizeUnit;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_10

    const/16 v1, 0xe

    .line 15174
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    .line 15175
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15177
    :cond_10
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->priv_:Z

    if-eqz v1, :cond_11

    const/16 v2, 0xf

    .line 15179
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    const/4 v1, 0x0

    .line 15181
    :goto_5
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    const/16 v2, 0x10

    .line 15182
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    .line 15183
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 15185
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->nativefmt_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    if-eqz v1, :cond_13

    const/16 v1, 0x11

    .line 15187
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getNativefmt()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    const/4 v1, 0x0

    .line 15189
    :goto_6
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    const/16 v2, 0x12

    .line 15190
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    .line 15191
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 15193
    :cond_14
    :goto_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_15

    const/16 v1, 0x13

    .line 15194
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    .line 15195
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 15197
    :cond_15
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_16

    const/16 v1, 0x14

    .line 15199
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15201
    :cond_16
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 15202
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->memoizedSize:I

    return v0
.end method

.method public final getTopframe()Z
    .locals 1

    .line 14394
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->topframe_:Z

    return v0
.end method

.method public final getUnit()Lcom/explorestack/protobuf/adcom/SizeUnit;
    .locals 1

    .line 14754
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/SizeUnit;->valueOf(I)Lcom/explorestack/protobuf/adcom/SizeUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14755
    sget-object v0, Lcom/explorestack/protobuf/adcom/SizeUnit;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/SizeUnit;

    :cond_0
    return-object v0
.end method

.method public final getUnitValue()I
    .locals 1

    .line 14743
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getW()I
    .locals 1

    .line 14717
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->w_:I

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 14927
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNativefmt()Z
    .locals 1

    .line 14837
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->nativefmt_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 15261
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 15262
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->memoizedHashCode:I

    return v0

    .line 15265
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 15267
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 15270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getInstl()Z

    move-result v1

    .line 15269
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 15273
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getTopframe()Z

    move-result v1

    .line 15272
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 15274
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getIfrbustCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 15276
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getIfrbustList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 15279
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 15281
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getAmpren()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 15283
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 15285
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    add-int/2addr v0, v1

    .line 15286
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getMimeCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 15288
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15290
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getApiCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 15292
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15294
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getCtypeCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 15296
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 15299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getW()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 15301
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getH()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 15303
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 15306
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getPriv()Z

    move-result v1

    .line 15305
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 15307
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDisplayfmtCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 15309
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDisplayfmtList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15311
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hasNativefmt()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 15313
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getNativefmt()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15315
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getEventCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 15317
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getEventList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15319
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 15321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15323
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 15325
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    mul-int/lit8 v0, v0, 0x1d

    .line 15327
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15328
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1033
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 1034
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 15008
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 15012
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 753
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;
    .locals 1

    .line 15403
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;
    .locals 2

    .line 15419
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 781
    new-instance p1, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;
    .locals 2

    .line 15412
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    .line 15413
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

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

    .line 15019
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getSerializedSize()I

    .line 15020
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_INVALID:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 15021
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->pos_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15023
    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->instl_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 15024
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15026
    :cond_1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->topframe_:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 15027
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15029
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 15030
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ifrbust_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15032
    :cond_3
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/ClickType;->CLICK_TYPE_NON_CLICKABLE:Lcom/explorestack/protobuf/adcom/ClickType;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/ClickType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x5

    .line 15033
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->clktype_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15035
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ampren_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 15036
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 15038
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/DisplayPlacementType;->DISPLAY_PLACEMENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DisplayPlacementType;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/DisplayPlacementType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_6

    const/4 v1, 0x7

    .line 15039
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ptype_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15041
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/DisplayContextType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_7

    const/16 v1, 0x8

    .line 15042
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->context_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_7
    const/4 v1, 0x0

    .line 15044
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 15045
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15047
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/16 v1, 0x52

    .line 15048
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 15049
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->apiMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_9
    const/4 v1, 0x0

    .line 15051
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 15052
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->api_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15054
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getCtypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    const/16 v1, 0x5a

    .line 15055
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 15056
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctypeMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_b
    const/4 v1, 0x0

    .line 15058
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 15059
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 15061
    :cond_c
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->w_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xc

    .line 15062
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 15064
    :cond_d
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->h_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xd

    .line 15065
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 15067
    :cond_e
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_INVALID:Lcom/explorestack/protobuf/adcom/SizeUnit;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/SizeUnit;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_f

    const/16 v1, 0xe

    .line 15068
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unit_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15070
    :cond_f
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->priv_:Z

    if-eqz v1, :cond_10

    const/16 v2, 0xf

    .line 15071
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_10
    const/4 v1, 0x0

    .line 15073
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    const/16 v2, 0x10

    .line 15074
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->displayfmt_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 15076
    :cond_11
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->nativefmt_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    if-eqz v1, :cond_12

    const/16 v1, 0x11

    .line 15077
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getNativefmt()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_12
    const/4 v1, 0x0

    .line 15079
    :goto_5
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    const/16 v2, 0x12

    .line 15080
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->event_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 15082
    :cond_13
    :goto_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    const/16 v1, 0x13

    .line 15083
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 15085
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_15

    const/16 v0, 0x14

    .line 15086
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 15088
    :cond_15
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
