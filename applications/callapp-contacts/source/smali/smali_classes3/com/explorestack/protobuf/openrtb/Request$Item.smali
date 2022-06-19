.class public final Lcom/explorestack/protobuf/openrtb/Request$Item;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;,
        Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;,
        Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;,
        Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;,
        Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;
    }
.end annotation


# static fields
.field public static final DEAL_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

.field public static final DLVY_FIELD_NUMBER:I = 0x9

.field public static final DT_FIELD_NUMBER:I = 0x8

.field public static final EXP_FIELD_NUMBER:I = 0x7

.field public static final EXT_FIELD_NUMBER:I = 0xf

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0xe

.field public static final FLRCUR_FIELD_NUMBER:I = 0x6

.field public static final FLR_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final METRIC_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_FIELD_NUMBER:I = 0xc

.field public static final QTY_FIELD_NUMBER:I = 0x2

.field public static final SEQ_FIELD_NUMBER:I = 0x3

.field public static final SPEC_FIELD_NUMBER:I = 0xd

.field private static final serialVersionUID:J


# instance fields
.field private deal_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation
.end field

.field private dlvy_:I

.field private volatile dt_:Ljava/lang/Object;

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

.field private flr_:D

.field private volatile flrcur_:Ljava/lang/Object;

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private metric_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation
.end field

.field private private_:Z

.field private qty_:I

.field private seq_:I

.field private spec_:Lcom/explorestack/protobuf/Any;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9823
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 9831
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2819
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7301
    iput-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedIsInitialized:B

    const-string v0, ""

    .line 2820
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    .line 2821
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    .line 2822
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    .line 2823
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    .line 2824
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    .line 2825
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2844
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>()V

    .line 2846
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 2854
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 2961
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/openrtb/Request$Item;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    .line 2949
    :sswitch_0
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_1

    .line 2950
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 2952
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 2954
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 2955
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_2

    .line 2940
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x4

    .line 2943
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    .line 2944
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 2943
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2927
    :sswitch_2
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v4, :cond_3

    .line 2928
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Any;->toBuilder()Lcom/explorestack/protobuf/Any$Builder;

    move-result-object v5

    .line 2930
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Any;

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v5, :cond_0

    .line 2932
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Any$Builder;->mergeFrom(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any$Builder;

    .line 2933
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Any$Builder;->buildPartial()Lcom/explorestack/protobuf/Any;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    goto :goto_0

    .line 2922
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    goto :goto_0

    :sswitch_4
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    .line 2913
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x2

    .line 2916
    :cond_4
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    .line 2917
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 2916
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_5

    .line 2904
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 2907
    :cond_5
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    .line 2908
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 2907
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2899
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    goto/16 :goto_0

    .line 2892
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 2894
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2888
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    goto/16 :goto_0

    .line 2881
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 2883
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2877
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    goto/16 :goto_0

    .line 2872
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    goto/16 :goto_0

    .line 2867
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    goto/16 :goto_0

    .line 2860
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 2862
    iput-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_e
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

    .line 2972
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2973
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2970
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_6

    .line 2976
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    :cond_6
    and-int/lit8 p2, v3, 0x2

    if-eqz p2, :cond_7

    .line 2979
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    :cond_7
    and-int/lit8 p2, v3, 0x4

    if-eqz p2, :cond_8

    .line 2982
    iget-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    .line 2984
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->makeExtensionsImmutable()V

    .line 2986
    throw p1

    :cond_9
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_a

    .line 2976
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    :cond_a
    and-int/lit8 p1, v3, 0x2

    if-eqz p1, :cond_b

    .line 2979
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    :cond_b
    and-int/lit8 p1, v3, 0x4

    if-eqz p1, :cond_c

    .line 2982
    iget-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    .line 2984
    :cond_c
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 2985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x10 -> :sswitch_c
        0x18 -> :sswitch_b
        0x21 -> :sswitch_a
        0x32 -> :sswitch_9
        0x38 -> :sswitch_8
        0x42 -> :sswitch_7
        0x48 -> :sswitch_6
        0x52 -> :sswitch_5
        0x5a -> :sswitch_4
        0x60 -> :sswitch_3
        0x6a -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2810
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 2817
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7301
    iput-byte p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 2810
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$5800()Z
    .locals 1

    .line 2810
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;
    .locals 0

    .line 2810
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6002(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2810
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I
    .locals 0

    .line 2810
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    return p1
.end method

.method static synthetic access$6202(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I
    .locals 0

    .line 2810
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    return p1
.end method

.method static synthetic access$6302(Lcom/explorestack/protobuf/openrtb/Request$Item;D)D
    .locals 0

    .line 2810
    iput-wide p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    return-wide p1
.end method

.method static synthetic access$6400(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;
    .locals 0

    .line 2810
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6402(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2810
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I
    .locals 0

    .line 2810
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    return p1
.end method

.method static synthetic access$6600(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/lang/Object;
    .locals 0

    .line 2810
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6602(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2810
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/explorestack/protobuf/openrtb/Request$Item;I)I
    .locals 0

    .line 2810
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    return p1
.end method

.method static synthetic access$6800(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;
    .locals 0

    .line 2810
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6802(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2810
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;
    .locals 0

    .line 2810
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6902(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2810
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/explorestack/protobuf/openrtb/Request$Item;Z)Z
    .locals 0

    .line 2810
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/Any;
    .locals 0

    .line 2810
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/explorestack/protobuf/openrtb/Request$Item;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 2810
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/explorestack/protobuf/openrtb/Request$Item;)Ljava/util/List;
    .locals 0

    .line 2810
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$7302(Lcom/explorestack/protobuf/openrtb/Request$Item;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2810
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7400()Z
    .locals 1

    .line 2810
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7500()Z
    .locals 1

    .line 2810
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7600()Z
    .locals 1

    .line 2810
    sget-boolean v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7700(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 2810
    iget-object p0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$7800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 2810
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2810
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2810
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2810
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 9827
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2990
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 7598
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 7601
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7571
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7572
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7578
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7579
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7539
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7545
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7584
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7585
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7591
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7592
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7559
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7560
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7566
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 7567
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7528
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7534
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7549
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7555
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation

    .line 9842
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7429
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    if-nez v1, :cond_1

    .line 7430
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7432
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 7434
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v1

    .line 7435
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 7436
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v1

    .line 7437
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7438
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v1

    .line 7439
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 7440
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 7442
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v5

    .line 7441
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 7443
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v1

    .line 7444
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 7445
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v1

    .line 7446
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 7447
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v1

    .line 7448
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 7449
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v1

    .line 7450
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 7451
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getMetricList()Ljava/util/List;

    move-result-object v1

    .line 7452
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getMetricList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 7453
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDealList()Ljava/util/List;

    move-result-object v1

    .line 7454
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDealList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 7455
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v1

    .line 7456
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 7457
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 7458
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 7459
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 7460
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 7462
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 7463
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 7464
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 7465
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 7467
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 7468
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExtProtoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 7469
    :cond_11
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getDeal(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1

    .line 7135
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    return-object p1
.end method

.method public final getDealCount()I
    .locals 1

    .line 7125
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDealList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;",
            ">;"
        }
    .end annotation

    .line 7104
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    return-object v0
.end method

.method public final getDealOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;
    .locals 1

    .line 7146
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;

    return-object p1
.end method

.method public final getDealOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7115
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item;
    .locals 1

    .line 9852
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    return-object v0
.end method

.method public final getDlvy()I
    .locals 1

    .line 7036
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    return v0
.end method

.method public final getDt()Ljava/lang/String;
    .locals 2

    .line 6990
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    .line 6991
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6992
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6994
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6996
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6997
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDtBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 7011
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    .line 7012
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7013
    check-cast v0, Ljava/lang/String;

    .line 7014
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 7016
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    return-object v0

    .line 7019
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getExp()I
    .locals 1

    .line 6976
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    return v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 7233
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 7243
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 7287
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 7277
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

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

    .line 7256
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 7298
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

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

    .line 7267
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getFlr()D
    .locals 2

    .line 6916
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    return-wide v0
.end method

.method public final getFlrcur()Ljava/lang/String;
    .locals 2

    .line 6931
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    .line 6932
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6933
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6935
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6937
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6938
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6953
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    .line 6954
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6955
    check-cast v0, Ljava/lang/String;

    .line 6956
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6958
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 6961
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 6845
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    .line 6846
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6847
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6849
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6851
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6852
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6866
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    .line 6867
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6868
    check-cast v0, Ljava/lang/String;

    .line 6869
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6871
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    return-object v0

    .line 6874
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMetric(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;
    .locals 1

    .line 7080
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;

    return-object p1
.end method

.method public final getMetricCount()I
    .locals 1

    .line 7070
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getMetricList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Metric;",
            ">;"
        }
    .end annotation

    .line 7049
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    return-object v0
.end method

.method public final getMetricOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;
    .locals 1

    .line 7091
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;

    return-object p1
.end method

.method public final getMetricOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7060
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/openrtb/Request$Item;",
            ">;"
        }
    .end annotation

    .line 9847
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPrivate()Z
    .locals 1

    .line 7162
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    return v0
.end method

.method public final getQty()I
    .locals 1

    .line 6889
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    return v0
.end method

.method public final getSeq()I
    .locals 1

    .line 6903
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 7

    .line 7362
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7366
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7367
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7369
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 7371
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7373
    :cond_2
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 7375
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7377
    :cond_3
    iget-wide v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_4

    const/4 v4, 0x4

    .line 7379
    invoke-static {v4, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v2

    add-int/2addr v0, v2

    .line 7381
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x6

    .line 7382
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7384
    :cond_5
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    if-eqz v2, :cond_6

    const/4 v3, 0x7

    .line 7386
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7388
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDtBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x8

    .line 7389
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7391
    :cond_7
    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    if-eqz v2, :cond_8

    const/16 v3, 0x9

    .line 7393
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    const/4 v2, 0x0

    .line 7395
    :goto_1
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    const/16 v3, 0xa

    .line 7396
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    .line 7397
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    .line 7399
    :goto_2
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    const/16 v3, 0xb

    .line 7400
    iget-object v4, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    .line 7401
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7403
    :cond_a
    iget-boolean v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    if-eqz v2, :cond_b

    const/16 v3, 0xc

    .line 7405
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7407
    :cond_b
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v2, :cond_c

    const/16 v2, 0xd

    .line 7409
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7411
    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    const/16 v2, 0xe

    .line 7412
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    .line 7413
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7415
    :cond_d
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    .line 7417
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7419
    :cond_e
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7420
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedSize:I

    return v0
.end method

.method public final getSpec()Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 7195
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getSpecOrBuilder()Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 7210
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 2838
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 7223
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSpec()Z
    .locals 1

    .line 7180
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 7475
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 7476
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedHashCode:I

    return v0

    .line 7479
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 7481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 7483
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getQty()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7485
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSeq()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7488
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlr()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 7487
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 7490
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcur()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 7492
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExp()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 7494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 7496
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDlvy()I

    move-result v1

    add-int/2addr v0, v1

    .line 7497
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getMetricCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 7499
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getMetricList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7501
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDealCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 7503
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDealList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 7507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getPrivate()Z

    move-result v1

    .line 7506
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 7508
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasSpec()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 7510
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7512
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 7514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7516
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 7518
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 7520
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7521
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2996
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 2997
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7304
    iget-byte v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 7308
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2810
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 1

    .line 7596
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 7612
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2832
    new-instance p1, Lcom/explorestack/protobuf/openrtb/Request$Item;

    invoke-direct {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2810
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;
    .locals 2

    .line 7605
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Request$Item;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/openrtb/Request$Item;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;-><init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 7606
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

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

    .line 7315
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getIdBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7316
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->id_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7318
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->qty_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 7319
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 7321
    :cond_1
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->seq_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 7322
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 7324
    :cond_2
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flr_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v2, 0x4

    .line 7325
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 7327
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    .line 7328
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->flrcur_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7330
    :cond_4
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->exp_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 7331
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 7333
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getDtBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    .line 7334
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dt_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7336
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->dlvy_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    .line 7337
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7339
    :goto_0
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0xa

    .line 7340
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->metric_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    .line 7342
    :goto_1
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xb

    .line 7343
    iget-object v3, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->deal_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7345
    :cond_9
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->private_:Z

    if-eqz v1, :cond_a

    const/16 v2, 0xc

    .line 7346
    invoke-virtual {p1, v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7348
    :cond_a
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->spec_:Lcom/explorestack/protobuf/Any;

    if-eqz v1, :cond_b

    const/16 v1, 0xd

    .line 7349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getSpec()Lcom/explorestack/protobuf/Any;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 7351
    :cond_b
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/16 v1, 0xe

    .line 7352
    iget-object v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7354
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    .line 7355
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 7357
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
