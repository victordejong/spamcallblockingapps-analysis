.class public final Lcom/explorestack/protobuf/adcom/Placement;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/PlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Placement$Builder;,
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;,
        Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;,
        Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;
    }
.end annotation


# static fields
.field public static final ADMX_FIELD_NUMBER:I = 0xe

.field public static final BADV_FIELD_NUMBER:I = 0x9

.field public static final BAPP_FIELD_NUMBER:I = 0xa

.field public static final BATTR_FIELD_NUMBER:I = 0xb

.field public static final BCAT_FIELD_NUMBER:I = 0x6

.field public static final CATTAX_FIELD_NUMBER:I = 0x7

.field public static final CURLX_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

.field public static final DISPLAY_FIELD_NUMBER:I = 0x10

.field public static final EXT_FIELD_NUMBER:I = 0x14

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x13

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            ">;"
        }
    .end annotation
.end field

.field public static final REWARD_FIELD_NUMBER:I = 0x5

.field public static final SDKVER_FIELD_NUMBER:I = 0x4

.field public static final SDK_FIELD_NUMBER:I = 0x3

.field public static final SECURE_FIELD_NUMBER:I = 0xd

.field public static final SSAI_FIELD_NUMBER:I = 0x2

.field public static final TAGID_FIELD_NUMBER:I = 0x1

.field public static final VIDEO_FIELD_NUMBER:I = 0x11

.field public static final WLANG_FIELD_NUMBER:I = 0xc

.field private static final battr_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private admx_:Z

.field private badv_:Lcom/explorestack/protobuf/LazyStringList;

.field private bapp_:Lcom/explorestack/protobuf/LazyStringList;

.field private battrMemoizedSerializedSize:I

.field private battr_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bcat_:Lcom/explorestack/protobuf/LazyStringList;

.field private cattax_:I

.field private curlx_:Z

.field private display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

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

.field private reward_:Z

.field private volatile sdk_:Ljava/lang/Object;

.field private volatile sdkver_:Ljava/lang/Object;

.field private secure_:Z

.field private ssai_:I

.field private volatile tagid_:Ljava/lang/Object;

.field private video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

.field private wlang_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25570
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement;->battr_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 28661
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    .line 28669
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$2;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Placement$2;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 25877
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedIsInitialized:B

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 24
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    .line 25
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 27
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Placement;-><init>()V

    .line 49
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 219
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Placement;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_3

    .line 207
    :sswitch_0
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 210
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 212
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 213
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_2

    .line 198
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x20

    .line 201
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 202
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 201
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :sswitch_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v4, :cond_3

    .line 186
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    move-result-object v5

    .line 188
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v5, :cond_0

    .line 190
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 191
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    goto :goto_0

    .line 172
    :sswitch_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v4, :cond_4

    .line 173
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    move-result-object v5

    .line 175
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v5, :cond_0

    .line 177
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 178
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    goto/16 :goto_0

    .line 167
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    goto/16 :goto_0

    .line 162
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    goto/16 :goto_0

    .line 157
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

    goto/16 :goto_0

    .line 147
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_5

    .line 149
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x10

    .line 152
    :cond_5
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 133
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 134
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 135
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_7

    .line 136
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x8

    if-nez v6, :cond_6

    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 141
    :cond_6
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_7
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 124
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_8

    .line 126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 129
    :cond_8
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 115
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_9

    .line 117
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x4

    .line 120
    :cond_9
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 106
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_a

    .line 108
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x2

    .line 111
    :cond_a
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 100
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 102
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    goto/16 :goto_0

    .line 91
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_b

    .line 93
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 96
    :cond_b
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    goto/16 :goto_0

    .line 80
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 82
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 74
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 76
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 70
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    goto/16 :goto_0

    .line 63
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 65
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_13
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v4, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 230
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 231
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 228
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_c

    .line 234
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_c
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_d

    .line 237
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_e

    .line 240
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_e
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_f

    .line 243
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_10

    .line 246
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_10
    and-int/lit8 p2, v3, 0x20

    if-eqz p2, :cond_11

    .line 249
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 251
    :cond_11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Placement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 252
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->makeExtensionsImmutable()V

    .line 253
    throw p1

    :cond_12
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_13

    .line 234
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_13
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_14

    .line 237
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_14
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_15

    .line 240
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_15
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_16

    .line 243
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_17

    .line 246
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_17
    and-int/lit8 p1, v3, 0x20

    if-eqz p1, :cond_18

    .line 249
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 251
    :cond_18
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 252
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0xa -> :sswitch_12
        0x10 -> :sswitch_11
        0x1a -> :sswitch_10
        0x22 -> :sswitch_f
        0x28 -> :sswitch_e
        0x32 -> :sswitch_d
        0x38 -> :sswitch_c
        0x4a -> :sswitch_b
        0x52 -> :sswitch_a
        0x58 -> :sswitch_9
        0x5a -> :sswitch_8
        0x62 -> :sswitch_7
        0x68 -> :sswitch_6
        0x70 -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x8a -> :sswitch_2
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

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Placement;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 16
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 25877
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Placement$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$19900()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$20100(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20102(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20202(Lcom/explorestack/protobuf/adcom/Placement;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    return p1
.end method

.method static synthetic access$20300(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20302(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20400(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20402(Lcom/explorestack/protobuf/adcom/Placement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20502(Lcom/explorestack/protobuf/adcom/Placement;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    return p1
.end method

.method static synthetic access$20600(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$20602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$20700(Lcom/explorestack/protobuf/adcom/Placement;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    return p0
.end method

.method static synthetic access$20702(Lcom/explorestack/protobuf/adcom/Placement;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    return p1
.end method

.method static synthetic access$20800(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$20802(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$20900(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$20902(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$21000(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$21002(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21100(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$21102(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$21202(Lcom/explorestack/protobuf/adcom/Placement;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

    return p1
.end method

.method static synthetic access$21302(Lcom/explorestack/protobuf/adcom/Placement;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    return p1
.end method

.method static synthetic access$21402(Lcom/explorestack/protobuf/adcom/Placement;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    return p1
.end method

.method static synthetic access$21502(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;)Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    return-object p1
.end method

.method static synthetic access$21602(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;)Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    return-object p1
.end method

.method static synthetic access$21702(Lcom/explorestack/protobuf/adcom/Placement;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$21800(Lcom/explorestack/protobuf/adcom/Placement;)Ljava/util/List;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$21802(Lcom/explorestack/protobuf/adcom/Placement;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21900()Z
    .locals 1

    .line 9
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Placement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$22000(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Placement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$22100()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$22200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->battr_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$22900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Placement;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 28665
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 257
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 26257
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 26260
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26230
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26231
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26237
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26238
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26198
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26204
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26243
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26244
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26250
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26251
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26218
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26219
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26225
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 26226
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26187
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26193
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26208
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26214
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Placement;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            ">;"
        }
    .end annotation

    .line 28680
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 26062
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Placement;

    if-nez v1, :cond_1

    .line 26063
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 26065
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Placement;

    .line 26067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

    move-result-object v1

    .line 26068
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 26069
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    move-result v1

    .line 26070
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 26071
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    move-result-object v1

    .line 26072
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 26073
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    move-result-object v1

    .line 26074
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 26075
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    move-result v1

    .line 26076
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 26077
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 26078
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 26079
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    iget v3, p1, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    if-eq v1, v3, :cond_8

    return v2

    .line 26080
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 26081
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 26082
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 26083
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 26084
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    iget-object v3, p1, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 26085
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 26086
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 26087
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    move-result v1

    .line 26088
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 26089
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    move-result v1

    .line 26090
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    .line 26091
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    move-result v1

    .line 26092
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 26093
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 26094
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 26095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v1

    .line 26096
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 26098
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 26099
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 26100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v1

    .line 26101
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 26103
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_14

    return v2

    .line 26104
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 26105
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 26106
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 26108
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 26109
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Placement;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 26110
    :cond_16
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Placement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getAdmx()Z
    .locals 1

    .line 25701
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    return v0
.end method

.method public final getBadv(I)Ljava/lang/String;
    .locals 1

    .line 25508
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBadvBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 25519
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBadvCount()I
    .locals 1

    .line 25498
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 25488
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getBadvList()Ljava/util/List;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getBapp(I)Ljava/lang/String;
    .locals 1

    .line 25553
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBappBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 25564
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBappCount()I
    .locals 1

    .line 25543
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBappList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 25533
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getBappList()Ljava/util/List;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getBattr(I)Lcom/explorestack/protobuf/adcom/CreativeAttribute;
    .locals 2

    .line 25608
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->battr_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/CreativeAttribute;

    return-object p1
.end method

.method public final getBattrCount()I
    .locals 1

    .line 25598
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getBattrList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/CreativeAttribute;",
            ">;"
        }
    .end annotation

    .line 25587
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Placement;->battr_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getBattrValue(I)I
    .locals 1

    .line 25629
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getBattrValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 25619
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    return-object v0
.end method

.method public final getBcat(I)Ljava/lang/String;
    .locals 1

    .line 25438
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getBcatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 25449
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getBcatCount()I
    .locals 1

    .line 25428
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 25418
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getBcatList()Ljava/util/List;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getCattax()Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;
    .locals 1

    .line 25473
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->valueOf(I)Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25474
    sget-object v0, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    :cond_0
    return-object v0
.end method

.method public final getCattaxValue()I
    .locals 1

    .line 25462
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    return v0
.end method

.method public final getCurlx()Z
    .locals 1

    .line 25714
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Placement;
    .locals 1

    .line 28690
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    return-object v0
.end method

.method public final getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;
    .locals 1

    .line 25739
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getDisplayOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder;
    .locals 1

    .line 25750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 25809
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 25819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 25863
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 25853
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

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

    .line 25832
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 25874
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

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

    .line 25843
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Placement;",
            ">;"
        }
    .end annotation

    .line 28685
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getReward()Z
    .locals 1

    .line 25404
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    return v0
.end method

.method public final getSdk()Ljava/lang/String;
    .locals 2

    .line 25320
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    .line 25321
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25322
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 25324
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 25326
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 25327
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSdkBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 25340
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    .line 25341
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25342
    check-cast v0, Ljava/lang/String;

    .line 25343
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 25345
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    return-object v0

    .line 25348
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSdkver()Ljava/lang/String;
    .locals 2

    .line 25362
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    .line 25363
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25364
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 25366
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 25368
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 25369
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSdkverBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 25382
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    .line 25383
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25384
    check-cast v0, Ljava/lang/String;

    .line 25385
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 25387
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    return-object v0

    .line 25390
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSecure()Z
    .locals 1

    .line 25688
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    .line 25955
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 25959
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 25960
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 25962
    :goto_0
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    .line 25964
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 25966
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 25967
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 25969
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x4

    .line 25970
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 25972
    :cond_4
    iget-boolean v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    if-eqz v3, :cond_5

    const/4 v4, 0x5

    .line 25974
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 25978
    :goto_1
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 25979
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Placement;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/2addr v0, v4

    .line 25982
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 25984
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    sget-object v4, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_7

    const/4 v3, 0x7

    .line 25985
    iget v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    .line 25986
    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 25990
    :goto_2
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 25991
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Placement;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    add-int/2addr v0, v4

    .line 25994
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 25998
    :goto_3
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 25999
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Placement;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v0, v4

    .line 26002
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 26006
    :goto_4
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 26007
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    .line 26008
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    add-int/2addr v0, v4

    .line 26011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBattrList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    .line 26013
    invoke-static {v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 26014
    :cond_b
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Placement;->battrMemoizedSerializedSize:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 26018
    :goto_5
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_c

    .line 26019
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/protobuf/adcom/Placement;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    add-int/2addr v0, v4

    .line 26022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 26024
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

    if-eqz v1, :cond_d

    const/16 v3, 0xd

    .line 26026
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26028
    :cond_d
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    if-eqz v1, :cond_e

    const/16 v3, 0xe

    .line 26030
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26032
    :cond_e
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    if-eqz v1, :cond_f

    const/16 v3, 0xf

    .line 26034
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26036
    :cond_f
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    .line 26038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26040
    :cond_10
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    .line 26042
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26044
    :cond_11
    :goto_6
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    const/16 v1, 0x13

    .line 26045
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    .line 26046
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 26048
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_13

    const/16 v1, 0x14

    .line 26050
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26052
    :cond_13
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 26053
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedSize:I

    return v0
.end method

.method public final getSsai()I
    .locals 1

    .line 25307
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    return v0
.end method

.method public final getTagid()Ljava/lang/String;
    .locals 2

    .line 25264
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    .line 25265
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25266
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 25268
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 25270
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 25271
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTagidBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 25284
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    .line 25285
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25286
    check-cast v0, Ljava/lang/String;

    .line 25287
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 25289
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    return-object v0

    .line 25292
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;
    .locals 1

    .line 25775
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getVideoOrBuilder()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder;
    .locals 1

    .line 25786
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final getWlang(I)Ljava/lang/String;
    .locals 1

    .line 25664
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getWlangBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 25675
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getWlangCount()I
    .locals 1

    .line 25654
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 25644
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getWlangList()Ljava/util/List;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final hasDisplay()Z
    .locals 1

    .line 25728
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 25799
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVideo()Z
    .locals 1

    .line 25764
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 26116
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 26117
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedHashCode:I

    return v0

    .line 26120
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 26122
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 26124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSsai()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 26126
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 26128
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 26131
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    move-result v1

    .line 26130
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26132
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 26134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBcatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 26137
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    add-int/2addr v0, v1

    .line 26138
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 26140
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBadvList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26142
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 26144
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBappList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26146
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBattrCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 26148
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26150
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 26152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getWlangList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 26156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSecure()Z

    move-result v1

    .line 26155
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 26159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getAdmx()Z

    move-result v1

    .line 26158
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 26162
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getCurlx()Z

    move-result v1

    .line 26161
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 26163
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasDisplay()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 26165
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26167
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 26169
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26171
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 26173
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26175
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 26177
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    mul-int/lit8 v0, v0, 0x1d

    .line 26179
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26180
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 263
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Placement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Placement;

    const-class v2, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 264
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 25880
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 25884
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 1

    .line 26255
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 26271
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 35
    new-instance p1, Lcom/explorestack/protobuf/adcom/Placement;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Placement;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;
    .locals 2

    .line 26264
    sget-object v0, Lcom/explorestack/protobuf/adcom/Placement;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Placement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Placement$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Placement$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Placement$1;)V

    .line 26265
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Placement;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

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

    .line 25891
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSerializedSize()I

    .line 25892
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getTagidBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25893
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->tagid_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 25895
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ssai_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 25896
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 25898
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 25899
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdk_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 25901
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getSdkverBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 25902
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->sdkver_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 25904
    :cond_3
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->reward_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 25905
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25907
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 25908
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->bcat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25910
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    sget-object v2, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->CATEGORY_TAXONOMY_INVALID:Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;

    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/CategoryTaxonomy;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_6

    const/4 v1, 0x7

    .line 25911
    iget v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->cattax_:I

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_6
    const/4 v1, 0x0

    .line 25913
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/16 v2, 0x9

    .line 25914
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->badv_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    .line 25916
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0xa

    .line 25917
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->bapp_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25919
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getBattrList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/16 v1, 0x5a

    .line 25920
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 25921
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->battrMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_9
    const/4 v1, 0x0

    .line 25923
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 25924
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->battr_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    .line 25926
    :goto_4
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0xc

    .line 25927
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Placement;->wlang_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 25929
    :cond_b
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->secure_:Z

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 25930
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25932
    :cond_c
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->admx_:Z

    if-eqz v1, :cond_d

    const/16 v2, 0xe

    .line 25933
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25935
    :cond_d
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->curlx_:Z

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 25936
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25938
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->display_:Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    .line 25939
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 25941
    :cond_f
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->video_:Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    .line 25942
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 25944
    :cond_10
    :goto_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    const/16 v1, 0x13

    .line 25945
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Placement;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 25947
    :cond_11
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    .line 25948
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 25950
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Placement;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
