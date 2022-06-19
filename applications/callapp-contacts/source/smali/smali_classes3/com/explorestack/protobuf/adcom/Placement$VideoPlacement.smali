.class public final Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Placement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoPlacement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;,
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;,
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;
    }
.end annotation


# static fields
.field public static final API_FIELD_NUMBER:I = 0xb

.field public static final BOXING_FIELD_NUMBER:I = 0x18

.field public static final CLKTYPE_FIELD_NUMBER:I = 0x9

.field public static final COMPTYPE_FIELD_NUMBER:I = 0x1a

.field public static final COMP_FIELD_NUMBER:I = 0x19

.field public static final CTYPE_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

.field public static final DELAY_FIELD_NUMBER:I = 0x3

.field public static final DELIVERY_FIELD_NUMBER:I = 0x15

.field public static final EXT_FIELD_NUMBER:I = 0x1c

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x1b

.field public static final H_FIELD_NUMBER:I = 0xe

.field public static final LINEAR_FIELD_NUMBER:I = 0x17

.field public static final MAXBITR_FIELD_NUMBER:I = 0x14

.field public static final MAXDUR_FIELD_NUMBER:I = 0x11

.field public static final MAXEXT_FIELD_NUMBER:I = 0x12

.field public static final MAXSEQ_FIELD_NUMBER:I = 0x16

.field public static final MIME_FIELD_NUMBER:I = 0xa

.field public static final MINBITR_FIELD_NUMBER:I = 0x13

.field public static final MINDUR_FIELD_NUMBER:I = 0x10

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAYEND_FIELD_NUMBER:I = 0x8

.field public static final PLAYMETHOD_FIELD_NUMBER:I = 0x7

.field public static final POS_FIELD_NUMBER:I = 0x2

.field public static final PTYPE_FIELD_NUMBER:I = 0x1

.field public static final SKIPAFTER_FIELD_NUMBER:I = 0x6

.field public static final SKIPMIN_FIELD_NUMBER:I = 0x5

.field public static final SKIP_FIELD_NUMBER:I = 0x4

.field public static final UNIT_FIELD_NUMBER:I = 0xf

.field public static final W_FIELD_NUMBER:I = 0xd

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

.field private static final comptype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/CompanionType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation
.end field

.field private static final delivery_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/DeliveryMethod;",
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

.field private boxing_:Z

.field private clktype_:I

.field private comp_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;"
        }
    .end annotation
.end field

.field private comptypeMemoizedSerializedSize:I

.field private comptype_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private delay_:I

.field private deliveryMemoizedSerializedSize:I

.field private delivery_:Ljava/util/List;
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

.field private h_:I

.field private linear_:I

.field private maxbitr_:I

.field private maxdur_:I

.field private maxext_:I

.field private maxseq_:I

.field private memoizedIsInitialized:B

.field private mime_:Lcom/explorestack/protobuf/LazyStringList;

.field private minbitr_:I

.field private mindur_:I

.field private playend_:I

.field private playmethod_:I

.field private pos_:I

.field private ptype_:I

.field private skip_:Z

.field private skipafter_:I

.field private skipmin_:I

.field private unit_:I

.field private w_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21121
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 21187
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$2;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$2;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 21369
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$3;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$3;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 21546
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$4;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$4;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 25220
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 25228
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$5;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$5;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18876
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 21697
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 18877
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 18878
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    .line 18879
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 18880
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 18881
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 18882
    sget-object v1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 18884
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 18885
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 18886
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 18887
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 18888
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 18889
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 18890
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18909
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>()V

    .line 18911
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18915
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_18

    .line 18919
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 19164
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_6

    :sswitch_0
    const/4 v4, 0x0

    .line 19152
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_1

    .line 19153
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v4

    .line 19155
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/explorestack/protobuf/Struct;

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 19157
    invoke-virtual {v4, v5}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 19158
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_2

    .line 19143
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x40

    .line 19146
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 19147
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 19146
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19128
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 19129
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 19130
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_4

    .line 19131
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x20

    if-nez v6, :cond_3

    .line 19133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 19136
    :cond_3
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19138
    :cond_4
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 19119
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x20

    if-nez v5, :cond_5

    .line 19121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 19124
    :cond_5
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_6

    .line 19111
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 19114
    :cond_6
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 19115
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 19114
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19106
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    goto/16 :goto_0

    .line 19099
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 19101
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    goto/16 :goto_0

    .line 19095
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    goto/16 :goto_0

    .line 19080
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 19081
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 19082
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_8

    .line 19083
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x8

    if-nez v6, :cond_7

    .line 19085
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 19088
    :cond_7
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19090
    :cond_8
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 19071
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_9

    .line 19073
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 19076
    :cond_9
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 19067
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    goto/16 :goto_0

    .line 19062
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    goto/16 :goto_0

    .line 19057
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    goto/16 :goto_0

    .line 19052
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    goto/16 :goto_0

    .line 19047
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

    goto/16 :goto_0

    .line 19040
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 19042
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    goto/16 :goto_0

    .line 19036
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    goto/16 :goto_0

    .line 19031
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    goto/16 :goto_0

    .line 19016
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 19017
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 19018
    :goto_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_b

    .line 19019
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x4

    if-nez v6, :cond_a

    .line 19021
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 19024
    :cond_a
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19026
    :cond_b
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 19007
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_c

    .line 19009
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 19012
    :cond_c
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18993
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 18994
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 18995
    :goto_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_e

    .line 18996
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_d

    .line 18998
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 19001
    :cond_d
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 19003
    :cond_e
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 18984
    :sswitch_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_f

    .line 18986
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 18989
    :cond_f
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18975
    :sswitch_16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_10

    .line 18977
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 18980
    :cond_10
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18969
    :sswitch_17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 18971
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    goto/16 :goto_0

    .line 18963
    :sswitch_18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 18965
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    goto/16 :goto_0

    .line 18957
    :sswitch_19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 18959
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    goto/16 :goto_0

    .line 18953
    :sswitch_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    goto/16 :goto_0

    .line 18948
    :sswitch_1b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    goto/16 :goto_0

    .line 18943
    :sswitch_1c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    goto/16 :goto_0

    .line 18938
    :sswitch_1d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    goto/16 :goto_0

    .line 18931
    :sswitch_1e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 18933
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    goto/16 :goto_0

    .line 18925
    :sswitch_1f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 18927
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_5
    :sswitch_20
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_6
    if-nez v4, :cond_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 19175
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 19176
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 19173
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_11

    .line 19179
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_11
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_12

    .line 19182
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_13

    .line 19185
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_14

    .line 19188
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_15

    .line 19191
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    :cond_15
    and-int/lit8 p2, v3, 0x20

    if-eqz p2, :cond_16

    .line 19194
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    :cond_16
    and-int/lit8 p2, v3, 0x40

    if-eqz p2, :cond_17

    .line 19197
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 19199
    :cond_17
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 19200
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->makeExtensionsImmutable()V

    .line 19201
    throw p1

    :cond_18
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_19

    .line 19179
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_19
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_1a

    .line 19182
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_1b

    .line 19185
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_1c

    .line 19188
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_1d

    .line 19191
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    :cond_1d
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_1e

    .line 19194
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    :cond_1e
    and-int/lit8 p1, v3, 0x40

    if-eqz p1, :cond_1f

    .line 19197
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 19199
    :cond_1f
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 19200
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_20
        0x8 -> :sswitch_1f
        0x10 -> :sswitch_1e
        0x18 -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x28 -> :sswitch_1b
        0x30 -> :sswitch_1a
        0x38 -> :sswitch_19
        0x40 -> :sswitch_18
        0x48 -> :sswitch_17
        0x52 -> :sswitch_16
        0x58 -> :sswitch_15
        0x5a -> :sswitch_14
        0x60 -> :sswitch_13
        0x62 -> :sswitch_12
        0x68 -> :sswitch_11
        0x70 -> :sswitch_10
        0x78 -> :sswitch_f
        0x80 -> :sswitch_e
        0x88 -> :sswitch_d
        0x90 -> :sswitch_c
        0x98 -> :sswitch_b
        0xa0 -> :sswitch_a
        0xa8 -> :sswitch_9
        0xaa -> :sswitch_8
        0xb0 -> :sswitch_7
        0xb8 -> :sswitch_6
        0xc0 -> :sswitch_5
        0xca -> :sswitch_4
        0xd0 -> :sswitch_3
        0xd2 -> :sswitch_2
        0xda -> :sswitch_1
        0xe2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18867
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 18874
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 21697
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 18867
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$15700()Z
    .locals 1

    .line 18867
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 18867
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    return p0
.end method

.method static synthetic access$15902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    return p1
.end method

.method static synthetic access$16000(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 18867
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    return p0
.end method

.method static synthetic access$16002(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    return p1
.end method

.method static synthetic access$16102(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    return p1
.end method

.method static synthetic access$16202(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Z)Z
    .locals 0

    .line 18867
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    return p1
.end method

.method static synthetic access$16302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    return p1
.end method

.method static synthetic access$16402(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    return p1
.end method

.method static synthetic access$16500(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 18867
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    return p0
.end method

.method static synthetic access$16502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    return p1
.end method

.method static synthetic access$16600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 18867
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    return p0
.end method

.method static synthetic access$16602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    return p1
.end method

.method static synthetic access$16700(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 18867
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    return p0
.end method

.method static synthetic access$16702(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    return p1
.end method

.method static synthetic access$16800(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 18867
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$16802(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 18867
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$16900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 18867
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$16902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18867
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17000(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 18867
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$17002(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18867
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17102(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    return p1
.end method

.method static synthetic access$17202(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    return p1
.end method

.method static synthetic access$17300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 18867
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    return p0
.end method

.method static synthetic access$17302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    return p1
.end method

.method static synthetic access$17402(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

    return p1
.end method

.method static synthetic access$17502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    return p1
.end method

.method static synthetic access$17602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    return p1
.end method

.method static synthetic access$17702(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    return p1
.end method

.method static synthetic access$17802(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    return p1
.end method

.method static synthetic access$17900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 18867
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$17902(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18867
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18002(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    return p1
.end method

.method static synthetic access$18100(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)I
    .locals 0

    .line 18867
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    return p0
.end method

.method static synthetic access$18102(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;I)I
    .locals 0

    .line 18867
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    return p1
.end method

.method static synthetic access$18202(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Z)Z
    .locals 0

    .line 18867
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    return p1
.end method

.method static synthetic access$18300(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 18867
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$18302(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18867
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18400(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 18867
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$18402(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18867
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18502(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 18867
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$18600(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Ljava/util/List;
    .locals 0

    .line 18867
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$18602(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18867
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18700()Z
    .locals 1

    .line 18867
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18800()Z
    .locals 1

    .line 18867
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18900(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 18867
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$19000()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 18867
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$19100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 18867
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19200()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 18867
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$19300()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 18867
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$19400()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 18867
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$19500()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 18867
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1

    .line 25224
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19205
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 22195
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 22198
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22168
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22169
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22175
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22176
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22136
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22142
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22181
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22182
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22188
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22189
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22156
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22157
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22163
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22164
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22125
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22131
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22146
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22152
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            ">;"
        }
    .end annotation

    .line 25239
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 21979
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-nez v1, :cond_1

    .line 21980
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 21982
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 21984
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 21985
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    if-eq v1, v2, :cond_3

    return v3

    .line 21986
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDelay()I

    move-result v1

    .line 21987
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDelay()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 21988
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkip()Z

    move-result v1

    .line 21989
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkip()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 21990
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipmin()I

    move-result v1

    .line 21991
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipmin()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 21992
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipafter()I

    move-result v1

    .line 21993
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipafter()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 21994
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    if-eq v1, v2, :cond_8

    return v3

    .line 21995
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    if-eq v1, v2, :cond_9

    return v3

    .line 21996
    :cond_9
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    if-eq v1, v2, :cond_a

    return v3

    .line 21997
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 21998
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 21999
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 22000
    :cond_c
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 22001
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getW()I

    move-result v1

    .line 22002
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getW()I

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 22003
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getH()I

    move-result v1

    .line 22004
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getH()I

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 22005
    :cond_f
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    if-eq v1, v2, :cond_10

    return v3

    .line 22006
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMindur()I

    move-result v1

    .line 22007
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMindur()I

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 22008
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxdur()I

    move-result v1

    .line 22009
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxdur()I

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 22010
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxext()I

    move-result v1

    .line 22011
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxext()I

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    .line 22012
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMinbitr()I

    move-result v1

    .line 22013
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMinbitr()I

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 22014
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxbitr()I

    move-result v1

    .line 22015
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxbitr()I

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 22016
    :cond_15
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 22017
    :cond_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxseq()I

    move-result v1

    .line 22018
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxseq()I

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    .line 22019
    :cond_17
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    if-eq v1, v2, :cond_18

    return v3

    .line 22020
    :cond_18
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getBoxing()Z

    move-result v1

    .line 22021
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getBoxing()Z

    move-result v2

    if-eq v1, v2, :cond_19

    return v3

    .line 22022
    :cond_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCompList()Ljava/util/List;

    move-result-object v1

    .line 22023
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCompList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v3

    .line 22024
    :cond_1a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    iget-object v2, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v3

    .line 22025
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_1c

    return v3

    .line 22026
    :cond_1c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 22027
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 22028
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v3

    .line 22030
    :cond_1d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 22031
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 22032
    :cond_1e
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    return v3

    :cond_1f
    return v0
.end method

.method public final getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 21159
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public final getApiCount()I
    .locals 1

    .line 21149
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

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

    .line 21138
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getApiValue(I)I
    .locals 1

    .line 21180
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

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

    .line 21170
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    return-object v0
.end method

.method public final getBoxing()Z
    .locals 1

    .line 21480
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    return v0
.end method

.method public final getClktype()Lcom/explorestack/protobuf/adcom/ClickType;
    .locals 1

    .line 21069
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ClickType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ClickType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21070
    sget-object v0, Lcom/explorestack/protobuf/adcom/ClickType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ClickType;

    :cond_0
    return-object v0
.end method

.method public final getClktypeValue()I
    .locals 1

    .line 21058
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    return v0
.end method

.method public final getComp(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;
    .locals 1

    .line 21528
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;

    return-object p1
.end method

.method public final getCompCount()I
    .locals 1

    .line 21517
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCompList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion;",
            ">;"
        }
    .end annotation

    .line 21494
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    return-object v0
.end method

.method public final getCompOrBuilder(I)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;
    .locals 1

    .line 21540
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;

    return-object p1
.end method

.method public final getCompOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 21506
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    return-object v0
.end method

.method public final getComptype(I)Lcom/explorestack/protobuf/adcom/CompanionType;
    .locals 2

    .line 21584
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/CompanionType;

    return-object p1
.end method

.method public final getComptypeCount()I
    .locals 1

    .line 21574
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getComptypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/CompanionType;",
            ">;"
        }
    .end annotation

    .line 21563
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getComptypeValue(I)I
    .locals 1

    .line 21605
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getComptypeValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21595
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    return-object v0
.end method

.method public final getCtype(I)Lcom/explorestack/protobuf/adcom/VideoCreativeType;
    .locals 2

    .line 21225
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/VideoCreativeType;

    return-object p1
.end method

.method public final getCtypeCount()I
    .locals 1

    .line 21215
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

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
            "Lcom/explorestack/protobuf/adcom/VideoCreativeType;",
            ">;"
        }
    .end annotation

    .line 21204
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getCtypeValue(I)I
    .locals 1

    .line 21246
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

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

    .line 21236
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 18867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 18867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1

    .line 25249
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object v0
.end method

.method public final getDelay()I
    .locals 1

    .line 20955
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    return v0
.end method

.method public final getDelivery(I)Lcom/explorestack/protobuf/adcom/DeliveryMethod;
    .locals 2

    .line 21407
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/DeliveryMethod;

    return-object p1
.end method

.method public final getDeliveryCount()I
    .locals 1

    .line 21397
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDeliveryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/DeliveryMethod;",
            ">;"
        }
    .end annotation

    .line 21386
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getDeliveryValue(I)I
    .locals 1

    .line 21428
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getDeliveryValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21418
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 21629
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 21639
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 21683
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 21673
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

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

    .line 21652
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 21694
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

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

    .line 21663
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getH()I
    .locals 1

    .line 21273
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    return v0
.end method

.method public final getLinear()Lcom/explorestack/protobuf/adcom/LinearityMode;
    .locals 1

    .line 21466
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/LinearityMode;->valueOf(I)Lcom/explorestack/protobuf/adcom/LinearityMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21467
    sget-object v0, Lcom/explorestack/protobuf/adcom/LinearityMode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/LinearityMode;

    :cond_0
    return-object v0
.end method

.method public final getLinearValue()I
    .locals 1

    .line 21455
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    return v0
.end method

.method public final getMaxbitr()I
    .locals 1

    .line 21363
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    return v0
.end method

.method public final getMaxdur()I
    .locals 1

    .line 21324
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    return v0
.end method

.method public final getMaxext()I
    .locals 1

    .line 21337
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    return v0
.end method

.method public final getMaxseq()I
    .locals 1

    .line 21442
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    return v0
.end method

.method public final getMime(I)Ljava/lang/String;
    .locals 1

    .line 21104
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getMimeBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 21115
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeCount()I
    .locals 1

    .line 21094
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 21084
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 18867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getMinbitr()I
    .locals 1

    .line 21350
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    return v0
.end method

.method public final getMindur()I
    .locals 1

    .line 21311
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;",
            ">;"
        }
    .end annotation

    .line 25244
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPlayend()Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;
    .locals 1

    .line 21044
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21045
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    :cond_0
    return-object v0
.end method

.method public final getPlayendValue()I
    .locals 1

    .line 21033
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    return v0
.end method

.method public final getPlaymethod()Lcom/explorestack/protobuf/adcom/PlaybackMethod;
    .locals 1

    .line 21019
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21020
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    :cond_0
    return-object v0
.end method

.method public final getPlaymethodValue()I
    .locals 1

    .line 21008
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    return v0
.end method

.method public final getPos()Lcom/explorestack/protobuf/adcom/PlacementPosition;
    .locals 1

    .line 20940
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->valueOf(I)Lcom/explorestack/protobuf/adcom/PlacementPosition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20941
    sget-object v0, Lcom/explorestack/protobuf/adcom/PlacementPosition;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    :cond_0
    return-object v0
.end method

.method public final getPosValue()I
    .locals 1

    .line 20929
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    return v0
.end method

.method public final getPtype()Lcom/explorestack/protobuf/adcom/VideoPlacementType;
    .locals 1

    .line 20915
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->valueOf(I)Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20916
    sget-object v0, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    :cond_0
    return-object v0
.end method

.method public final getPtypeValue()I
    .locals 1

    .line 20904
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 21817
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 21821
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->VIDEO_PLACEMENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 21822
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    .line 21823
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 21825
    :goto_0
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_INVALID:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getNumber()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 21826
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    const/4 v4, 0x2

    .line 21827
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21829
    :cond_2
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    if-eqz v1, :cond_3

    const/4 v4, 0x3

    .line 21831
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21833
    :cond_3
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    if-eqz v1, :cond_4

    const/4 v4, 0x4

    .line 21835
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21837
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    if-eqz v1, :cond_5

    const/4 v4, 0x5

    .line 21839
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21841
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    if-eqz v1, :cond_6

    const/4 v4, 0x6

    .line 21843
    invoke-static {v4, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21845
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->getNumber()I

    move-result v4

    if-eq v1, v4, :cond_7

    const/4 v1, 0x7

    .line 21846
    iget v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    .line 21847
    invoke-static {v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21849
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->PLAYBACK_CESSATION_MODE_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->getNumber()I

    move-result v4

    if-eq v1, v4, :cond_8

    const/16 v1, 0x8

    .line 21850
    iget v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    .line 21851
    invoke-static {v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21853
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/ClickType;->CLICK_TYPE_NON_CLICKABLE:Lcom/explorestack/protobuf/adcom/ClickType;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/ClickType;->getNumber()I

    move-result v4

    if-eq v1, v4, :cond_9

    const/16 v1, 0x9

    .line 21854
    iget v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    .line 21855
    invoke-static {v1, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 21859
    :goto_1
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 21860
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    add-int/2addr v0, v4

    .line 21863
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21867
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 21868
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    .line 21869
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    add-int/2addr v0, v2

    .line 21872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    .line 21874
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 21875
    :cond_c
    iput v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->apiMemoizedSerializedSize:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21879
    :goto_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    .line 21880
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    .line 21881
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

    :cond_d
    add-int/2addr v0, v2

    .line 21884
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCtypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    .line 21886
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 21887
    :cond_e
    iput v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctypeMemoizedSerializedSize:I

    .line 21889
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xd

    .line 21891
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21893
    :cond_f
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    if-eqz v1, :cond_10

    const/16 v2, 0xe

    .line 21895
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21897
    :cond_10
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_INVALID:Lcom/explorestack/protobuf/adcom/SizeUnit;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/SizeUnit;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_11

    const/16 v1, 0xf

    .line 21898
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    .line 21899
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21901
    :cond_11
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x10

    .line 21903
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21905
    :cond_12
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    if-eqz v1, :cond_13

    const/16 v2, 0x11

    .line 21907
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21909
    :cond_13
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    if-eqz v1, :cond_14

    const/16 v2, 0x12

    .line 21911
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21913
    :cond_14
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    if-eqz v1, :cond_15

    const/16 v2, 0x13

    .line 21915
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21917
    :cond_15
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    if-eqz v1, :cond_16

    const/16 v2, 0x14

    .line 21919
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21923
    :goto_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_17

    .line 21924
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    .line 21925
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

    :cond_17
    add-int/2addr v0, v2

    .line 21928
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDeliveryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    add-int/lit8 v0, v0, 0x2

    .line 21930
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 21931
    :cond_18
    iput v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->deliveryMemoizedSerializedSize:I

    .line 21933
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    if-eqz v1, :cond_19

    const/16 v2, 0x16

    .line 21935
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21937
    :cond_19
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/LinearityMode;->LINEARITY_MODE_INVALID:Lcom/explorestack/protobuf/adcom/LinearityMode;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/LinearityMode;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1a

    const/16 v1, 0x17

    .line 21938
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    .line 21939
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21941
    :cond_1a
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    if-eqz v1, :cond_1b

    const/16 v2, 0x18

    .line 21943
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    const/4 v1, 0x0

    .line 21945
    :goto_5
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    const/16 v2, 0x19

    .line 21946
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    .line 21947
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1c
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21951
    :goto_6
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1d

    .line 21952
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    .line 21953
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    add-int/2addr v0, v2

    .line 21956
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getComptypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    add-int/lit8 v0, v0, 0x2

    .line 21958
    invoke-static {v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 21959
    :cond_1e
    iput v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptypeMemoizedSerializedSize:I

    .line 21961
    :goto_7
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1f

    const/16 v1, 0x1b

    .line 21962
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    .line 21963
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 21965
    :cond_1f
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_20

    const/16 v1, 0x1c

    .line 21967
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21969
    :cond_20
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 21970
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedSize:I

    return v0
.end method

.method public final getSkip()Z
    .locals 1

    .line 20968
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    return v0
.end method

.method public final getSkipafter()I
    .locals 1

    .line 20995
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    return v0
.end method

.method public final getSkipmin()I
    .locals 1

    .line 20982
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    return v0
.end method

.method public final getUnit()Lcom/explorestack/protobuf/adcom/SizeUnit;
    .locals 1

    .line 21297
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/SizeUnit;->valueOf(I)Lcom/explorestack/protobuf/adcom/SizeUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21298
    sget-object v0, Lcom/explorestack/protobuf/adcom/SizeUnit;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/SizeUnit;

    :cond_0
    return-object v0
.end method

.method public final getUnitValue()I
    .locals 1

    .line 21286
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 18903
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getW()I
    .locals 1

    .line 21260
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 21619
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 22038
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 22039
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedHashCode:I

    return v0

    .line 22042
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 22044
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 22046
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 22048
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDelay()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 22051
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkip()Z

    move-result v1

    .line 22050
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 22053
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipmin()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 22055
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSkipafter()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 22057
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 22059
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 22061
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    add-int/2addr v0, v1

    .line 22062
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 22064
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22066
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getApiCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 22068
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22070
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCtypeCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 22072
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 22075
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getW()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 22077
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getH()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 22079
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 22081
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMindur()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 22083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxdur()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 22085
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxext()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 22087
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMinbitr()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 22089
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxbitr()I

    move-result v1

    add-int/2addr v0, v1

    .line 22090
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDeliveryCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 22092
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 22095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getMaxseq()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 22097
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 22100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getBoxing()Z

    move-result v1

    .line 22099
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 22101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCompCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 22103
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCompList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22105
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getComptypeCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 22107
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22109
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 22111
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22113
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 22115
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    mul-int/lit8 v0, v0, 0x1d

    .line 22117
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22118
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 19211
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 19212
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 21700
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 21704
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 18867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18867
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 18867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 1

    .line 22193
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2

    .line 22209
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 18897
    new-instance p1, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 18867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 18867
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
    .locals 2

    .line 22202
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    .line 22203
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

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

    .line 21711
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getSerializedSize()I

    .line 21712
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->VIDEO_PLACEMENT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/VideoPlacementType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/VideoPlacementType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 21713
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ptype_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21715
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/PlacementPosition;->PLACEMENT_POSITION_INVALID:Lcom/explorestack/protobuf/adcom/PlacementPosition;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/PlacementPosition;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 21716
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->pos_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21718
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delay_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 21719
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21721
    :cond_2
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skip_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 21722
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 21724
    :cond_3
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipmin_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 21725
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21727
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->skipafter_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 21728
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21730
    :cond_5
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->PLAYBACK_METHOD_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackMethod;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/PlaybackMethod;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x7

    .line 21731
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playmethod_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21733
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->PLAYBACK_CESSATION_MODE_INVALID:Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/PlaybackCessationMode;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_7

    const/16 v0, 0x8

    .line 21734
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->playend_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21736
    :cond_7
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/ClickType;->CLICK_TYPE_NON_CLICKABLE:Lcom/explorestack/protobuf/adcom/ClickType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/ClickType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x9

    .line 21737
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->clktype_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21739
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    .line 21740
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21742
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/16 v1, 0x5a

    .line 21743
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 21744
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->apiMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_a
    const/4 v1, 0x0

    .line 21746
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 21747
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->api_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21749
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getCtypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    const/16 v1, 0x62

    .line 21750
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 21751
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctypeMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_c
    const/4 v1, 0x0

    .line 21753
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 21754
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ctype_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 21756
    :cond_d
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->w_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xd

    .line 21757
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21759
    :cond_e
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->h_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xe

    .line 21760
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21762
    :cond_f
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/SizeUnit;->SIZE_UNIT_INVALID:Lcom/explorestack/protobuf/adcom/SizeUnit;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/SizeUnit;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_10

    const/16 v1, 0xf

    .line 21763
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unit_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21765
    :cond_10
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->mindur_:I

    if-eqz v1, :cond_11

    const/16 v2, 0x10

    .line 21766
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21768
    :cond_11
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxdur_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x11

    .line 21769
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21771
    :cond_12
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxext_:I

    if-eqz v1, :cond_13

    const/16 v2, 0x12

    .line 21772
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21774
    :cond_13
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->minbitr_:I

    if-eqz v1, :cond_14

    const/16 v2, 0x13

    .line 21775
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21777
    :cond_14
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxbitr_:I

    if-eqz v1, :cond_15

    const/16 v2, 0x14

    .line 21778
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21780
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDeliveryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    const/16 v1, 0xaa

    .line 21781
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 21782
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->deliveryMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_16
    const/4 v1, 0x0

    .line 21784
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 21785
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->delivery_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 21787
    :cond_17
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->maxseq_:I

    if-eqz v1, :cond_18

    const/16 v2, 0x16

    .line 21788
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21790
    :cond_18
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/LinearityMode;->LINEARITY_MODE_INVALID:Lcom/explorestack/protobuf/adcom/LinearityMode;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/LinearityMode;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_19

    const/16 v1, 0x17

    .line 21791
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->linear_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21793
    :cond_19
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->boxing_:Z

    if-eqz v1, :cond_1a

    const/16 v2, 0x18

    .line 21794
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1a
    const/4 v1, 0x0

    .line 21796
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    const/16 v2, 0x19

    .line 21797
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comp_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 21799
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getComptypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1c

    const/16 v1, 0xd2

    .line 21800
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 21801
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptypeMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_1c
    const/4 v1, 0x0

    .line 21803
    :goto_5
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 21804
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->comptype_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 21806
    :cond_1d
    :goto_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    const/16 v1, 0x1b

    .line 21807
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 21809
    :cond_1e
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_1f

    const/16 v0, 0x1c

    .line 21810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 21812
    :cond_1f
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
