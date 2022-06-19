.class public final Lcom/explorestack/protobuf/adcom/Ad$Display;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Display"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Native;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;,
        Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;
    }
.end annotation


# static fields
.field public static final ADM_FIELD_NUMBER:I = 0x8

.field public static final API_FIELD_NUMBER:I = 0x2

.field public static final BANNER_FIELD_NUMBER:I = 0xa

.field public static final CURL_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display;

.field public static final EVENT_FIELD_NUMBER:I = 0xc

.field public static final EXT_FIELD_NUMBER:I = 0xe

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0xd

.field public static final HRATIO_FIELD_NUMBER:I = 0x7

.field public static final H_FIELD_NUMBER:I = 0x5

.field public static final MIME_FIELD_NUMBER:I = 0x1

.field public static final NATIVE_FIELD_NUMBER:I = 0xb

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final WRATIO_FIELD_NUMBER:I = 0x6

.field public static final W_FIELD_NUMBER:I = 0x4

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
            "Lcom/explorestack/protobuf/adcom/DisplayCreativeType;",
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

.field private banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

.field private volatile curl_:Ljava/lang/Object;

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
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

.field private hratio_:I

.field private memoizedIsInitialized:B

.field private mime_:Lcom/explorestack/protobuf/LazyStringList;

.field private native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

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

.field private w_:I

.field private wratio_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17142
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 17208
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$2;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$2;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    .line 20238
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 20246
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$3;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$3;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2941
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 17622
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->memoizedIsInitialized:B

    .line 2942
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 2943
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    .line 2944
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    const-string v0, ""

    .line 2945
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    .line 2946
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    .line 2947
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    .line 2948
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2967
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;-><init>()V

    .line 2969
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2973
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    .line 2977
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 3127
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_4

    .line 3115
    :sswitch_0
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_1

    .line 3116
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 3118
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 3120
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 3121
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_2

    .line 3106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x10

    .line 3109
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    .line 3110
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 3109
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v4, v3, 0x8

    if-nez v4, :cond_3

    .line 3097
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x8

    .line 3100
    :cond_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    .line 3101
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 3100
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3084
    :sswitch_3
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-eqz v4, :cond_4

    .line 3085
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v5

    .line 3087
    :cond_4
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-eqz v5, :cond_0

    .line 3089
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    .line 3090
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    goto/16 :goto_0

    .line 3071
    :sswitch_4
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-eqz v4, :cond_5

    .line 3072
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v5

    .line 3074
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-eqz v5, :cond_0

    .line 3076
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    .line 3077
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    goto/16 :goto_0

    .line 3064
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3066
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3058
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 3060
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 3054
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->hratio_:I

    goto/16 :goto_0

    .line 3049
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->wratio_:I

    goto/16 :goto_0

    .line 3044
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->h_:I

    goto/16 :goto_0

    .line 3039
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->w_:I

    goto/16 :goto_0

    .line 3024
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 3025
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 3026
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_7

    .line 3027
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x4

    if-nez v6, :cond_6

    .line 3029
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 3032
    :cond_6
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3034
    :cond_7
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 3015
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x4

    if-nez v5, :cond_8

    .line 3017
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 3020
    :cond_8
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3001
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v4

    .line 3002
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 3003
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_a

    .line 3004
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    and-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_9

    .line 3006
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 3009
    :cond_9
    iget-object v6, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3011
    :cond_a
    invoke-virtual {p1, v4}, Lcom/explorestack/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 2992
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_b

    .line 2994
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 2997
    :cond_b
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2983
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_c

    .line 2985
    new-instance v5, Lcom/explorestack/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    or-int/lit8 v3, v3, 0x1

    .line 2988
    :cond_c
    iget-object v5, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_3
    :sswitch_10
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

    .line 3138
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3139
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3136
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_d

    .line 3142
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_d
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_e

    .line 3145
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_f

    .line 3148
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v3, 0x8

    if-eqz p2, :cond_10

    .line 3151
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    :cond_10
    and-int/lit8 p2, v3, 0x10

    if-eqz p2, :cond_11

    .line 3154
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    .line 3156
    :cond_11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->makeExtensionsImmutable()V

    .line 3158
    throw p1

    :cond_12
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_13

    .line 3142
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    :cond_13
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_14

    .line 3145
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_15

    .line 3148
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v3, 0x8

    if-eqz p1, :cond_16

    .line 3151
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v3, 0x10

    if-eqz p1, :cond_17

    .line 3154
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    .line 3156
    :cond_17
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 3157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x10 -> :sswitch_e
        0x12 -> :sswitch_d
        0x18 -> :sswitch_c
        0x1a -> :sswitch_b
        0x20 -> :sswitch_a
        0x28 -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x5a -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2932
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2939
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 17622
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 2932
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$13600()Z
    .locals 1

    .line 2932
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13800(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$13802(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$13900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$13902(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14000(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14002(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14102(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I
    .locals 0

    .line 2932
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->w_:I

    return p1
.end method

.method static synthetic access$14202(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I
    .locals 0

    .line 2932
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->h_:I

    return p1
.end method

.method static synthetic access$14302(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I
    .locals 0

    .line 2932
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->wratio_:I

    return p1
.end method

.method static synthetic access$14402(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I
    .locals 0

    .line 2932
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->hratio_:I

    return p1
.end method

.method static synthetic access$14500(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/lang/Object;
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14502(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14600(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/lang/Object;
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14602(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14702(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object p1
.end method

.method static synthetic access$14802(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object p1
.end method

.method static synthetic access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14902(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15002(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$15102(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2932
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15200()Z
    .locals 1

    .line 2932
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15300()Z
    .locals 1

    .line 2932
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15400(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$15500()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 2932
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2932
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 2932
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$15800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;
    .locals 1

    .line 2932
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2932
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2932
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1

    .line 20242
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3162
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 17953
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 17956
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17926
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17927
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17933
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17934
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17894
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17900
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17939
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17940
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17946
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17947
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17914
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17915
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17921
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 17922
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17883
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17889
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17904
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17910
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display;",
            ">;"
        }
    .end annotation

    .line 20257
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17780
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-nez v1, :cond_1

    .line 17781
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 17783
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 17785
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    .line 17786
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 17787
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    iget-object v3, p1, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 17788
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    iget-object v3, p1, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 17789
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getW()I

    move-result v1

    .line 17790
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getW()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 17791
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getH()I

    move-result v1

    .line 17792
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getH()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 17793
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getWratio()I

    move-result v1

    .line 17794
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getWratio()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 17795
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getHratio()I

    move-result v1

    .line 17796
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getHratio()I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 17797
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v1

    .line 17798
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 17799
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getCurl()Ljava/lang/String;

    move-result-object v1

    .line 17800
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getCurl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 17801
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 17802
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 17803
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v1

    .line 17804
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 17806
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 17807
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 17808
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v1

    .line 17809
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 17811
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getEventList()Ljava/util/List;

    move-result-object v1

    .line 17812
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getEventList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 17813
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 17814
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17815
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 17816
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 17818
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 17819
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 17820
    :cond_12
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Ad$Display;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getAdm()Ljava/lang/String;
    .locals 2

    .line 17338
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    .line 17339
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17340
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17342
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17344
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17345
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAdmBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 17359
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    .line 17360
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17361
    check-cast v0, Ljava/lang/String;

    .line 17362
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 17364
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    return-object v0

    .line 17367
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 17180
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public final getApiCount()I
    .locals 1

    .line 17170
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

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

    .line 17159
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getApiValue(I)I
    .locals 1

    .line 17201
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

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

    .line 17191
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    return-object v0
.end method

.method public final getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1

    .line 17433
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getBannerOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;
    .locals 1

    .line 17443
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    return-object v0
.end method

.method public final getCurl()Ljava/lang/String;
    .locals 2

    .line 17381
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    .line 17382
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17383
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 17385
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17387
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 17388
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 17401
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    .line 17402
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17403
    check-cast v0, Ljava/lang/String;

    .line 17404
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 17406
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    return-object v0

    .line 17409
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1

    .line 20267
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display;

    return-object v0
.end method

.method public final getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 17520
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public final getEventCount()I
    .locals 1

    .line 17510
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

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
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 17489
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    return-object v0
.end method

.method public final getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .locals 1

    .line 17531
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1
.end method

.method public final getEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17500
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 17554
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 17564
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 17608
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 17598
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

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

    .line 17577
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 17619
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

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

    .line 17588
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getH()I
    .locals 1

    .line 17296
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->h_:I

    return v0
.end method

.method public final getHratio()I
    .locals 1

    .line 17324
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->hratio_:I

    return v0
.end method

.method public final getMime(I)Ljava/lang/String;
    .locals 1

    .line 17125
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getMimeBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 17136
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getMimeCount()I
    .locals 1

    .line 17115
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 17105
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    return-object v0
.end method

.method public final bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 2932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1

    .line 17466
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getNativeOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;
    .locals 1

    .line 17476
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display;",
            ">;"
        }
    .end annotation

    .line 20262
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 17692
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17698
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 17699
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/protobuf/adcom/Ad$Display;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    .line 17702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/explorestack/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 17706
    :goto_1
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 17707
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    .line 17708
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

    .line 17711
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 17713
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 17714
    :cond_3
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->apiMemoizedSerializedSize:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 17718
    :goto_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 17719
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    .line 17720
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

    .line 17723
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 17725
    invoke-static {v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 17726
    :cond_5
    iput v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->typeMemoizedSerializedSize:I

    .line 17728
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->w_:I

    if-eqz v1, :cond_6

    const/4 v3, 0x4

    .line 17730
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 17732
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->h_:I

    if-eqz v1, :cond_7

    const/4 v3, 0x5

    .line 17734
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 17736
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->wratio_:I

    if-eqz v1, :cond_8

    const/4 v3, 0x6

    .line 17738
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 17740
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->hratio_:I

    if-eqz v1, :cond_9

    const/4 v3, 0x7

    .line 17742
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v2, v1

    .line 17744
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdmBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0x8

    .line 17745
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 17747
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getCurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0x9

    .line 17748
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    .line 17750
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-eqz v1, :cond_c

    const/16 v1, 0xa

    .line 17752
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    .line 17754
    :cond_c
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-eqz v1, :cond_d

    const/16 v1, 0xb

    .line 17756
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    :cond_d
    const/4 v1, 0x0

    .line 17758
    :goto_3
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    const/16 v3, 0xc

    .line 17759
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    .line 17760
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 17762
    :cond_e
    :goto_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    const/16 v1, 0xd

    .line 17763
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    .line 17764
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 17766
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_10

    const/16 v0, 0xe

    .line 17768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 17770
    :cond_10
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    .line 17771
    iput v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->memoizedSize:I

    return v2
.end method

.method public final getType(I)Lcom/explorestack/protobuf/adcom/DisplayCreativeType;
    .locals 2

    .line 17246
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;

    return-object p1
.end method

.method public final getTypeCount()I
    .locals 1

    .line 17236
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

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
            "Lcom/explorestack/protobuf/adcom/DisplayCreativeType;",
            ">;"
        }
    .end annotation

    .line 17225
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    sget-object v2, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_converter_:Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getTypeValue(I)I
    .locals 1

    .line 17267
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

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

    .line 17257
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 2961
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getW()I
    .locals 1

    .line 17282
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->w_:I

    return v0
.end method

.method public final getWratio()I
    .locals 1

    .line 17310
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->wratio_:I

    return v0
.end method

.method public final hasBanner()Z
    .locals 1

    .line 17423
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 17544
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNative()Z
    .locals 1

    .line 17456
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 17826
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 17827
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->memoizedHashCode:I

    return v0

    .line 17830
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    .line 17831
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getMimeCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 17833
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17835
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getApiCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 17837
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17839
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getTypeCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 17841
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 17844
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getW()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 17846
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getH()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 17848
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getWratio()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 17850
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getHratio()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 17852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 17854
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getCurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17855
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 17857
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17859
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 17861
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17863
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getEventCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 17865
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getEventList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17867
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 17869
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17871
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 17873
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    mul-int/lit8 v0, v0, 0x1d

    .line 17875
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17876
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3168
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 3169
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 17625
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 17629
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2932
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 17951
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->newBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 17967
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2955
    new-instance p1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 17960
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Display;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Ad$Display;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 17961
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

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

    .line 17636
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getSerializedSize()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17637
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 17638
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/explorestack/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17640
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getApiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x12

    .line 17641
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 17642
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->apiMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_1
    const/4 v1, 0x0

    .line 17644
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 17645
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->api_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17647
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getTypeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x1a

    .line 17648
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 17649
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->typeMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    :cond_3
    const/4 v1, 0x0

    .line 17651
    :goto_2
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 17652
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->type_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17654
    :cond_4
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->w_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x4

    .line 17655
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 17657
    :cond_5
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->h_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x5

    .line 17658
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 17660
    :cond_6
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->wratio_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x6

    .line 17661
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 17663
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->hratio_:I

    if-eqz v1, :cond_8

    const/4 v2, 0x7

    .line 17664
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 17666
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdmBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x8

    .line 17667
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->adm_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17669
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getCurlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0x9

    .line 17670
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->curl_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17672
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-eqz v1, :cond_b

    const/16 v1, 0xa

    .line 17673
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 17675
    :cond_b
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-eqz v1, :cond_c

    const/16 v1, 0xb

    .line 17676
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_c
    const/4 v1, 0x0

    .line 17678
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    const/16 v2, 0xc

    .line 17679
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->event_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 17681
    :cond_d
    :goto_4
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/16 v1, 0xd

    .line 17682
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 17684
    :cond_e
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    .line 17685
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 17687
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
