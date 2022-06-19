.class public final Lio/bidmachine/protobuf/AdExtension;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdExtension$Builder;,
        Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;,
        Lio/bidmachine/protobuf/AdExtension$ControlAsset;,
        Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    }
.end annotation


# static fields
.field public static final CLOSE_BUTTON_FIELD_NUMBER:I = 0xf

.field public static final COMPANION_SKIPOFFSET_FIELD_NUMBER:I = 0xa

.field public static final COUNTDOWN_FIELD_NUMBER:I = 0xe

.field public static final CUSTOM_PARAMS_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

.field public static final EVENT_FIELD_NUMBER:I = 0x7

.field public static final IGNORES_SAFE_AREA_LAYOUT_GUIDE_FIELD_NUMBER:I = 0x10

.field public static final LOAD_SKIPOFFSET_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRELOAD_FIELD_NUMBER:I = 0x2

.field public static final PROGRESS_DURATION_FIELD_NUMBER:I = 0x13

.field public static final PROGRESS_FIELD_NUMBER:I = 0x12

.field public static final R1_FIELD_NUMBER:I = 0xc

.field public static final R2_FIELD_NUMBER:I = 0xd

.field public static final SKIPOFFSET_FIELD_NUMBER:I = 0x9

.field public static final STORE_URL_FIELD_NUMBER:I = 0x11

.field public static final USE_NATIVE_CLOSE_FIELD_NUMBER:I = 0xb

.field public static final VIEWABILITY_DURATION_THRESHOLD_FIELD_NUMBER:I = 0x6

.field public static final VIEWABILITY_IGNORE_WINDOW_FOCUS_FIELD_NUMBER:I = 0x14

.field public static final VIEWABILITY_PIXEL_THRESHOLD_FIELD_NUMBER:I = 0x5

.field public static final VIEWABILITY_TIME_THRESHOLD_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private companionSkipoffset_:I

.field private countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private customParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end field

.field private ignoresSafeAreaLayoutGuide_:Z

.field private loadSkipoffset_:I

.field private memoizedIsInitialized:B

.field private preload_:Z

.field private progressDuration_:I

.field private progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field private r1_:Z

.field private r2_:Z

.field private skipoffset_:I

.field private volatile storeUrl_:Ljava/lang/Object;

.field private useNativeClose_:Z

.field private viewabilityDurationThreshold_:F

.field private viewabilityIgnoreWindowFocus_:Z

.field private viewabilityPixelThreshold_:F

.field private viewabilityTimeThreshold_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5571
    new-instance v0, Lio/bidmachine/protobuf/AdExtension;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    .line 5579
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3325
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;-><init>()V

    .line 41
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 187
    invoke-virtual {p0, p1, v0, p2, v4}, Lio/bidmachine/protobuf/AdExtension;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    .line 183
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    goto :goto_0

    .line 178
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    goto :goto_0

    .line 165
    :sswitch_2
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v4, :cond_1

    .line 166
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v5

    .line 168
    :cond_1
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v5, :cond_0

    .line 170
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 171
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_0

    .line 158
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 160
    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 154
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    goto :goto_0

    .line 141
    :sswitch_5
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v4, :cond_2

    .line 142
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v5

    .line 144
    :cond_2
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 147
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto :goto_0

    .line 128
    :sswitch_6
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v4, :cond_3

    .line 129
    invoke-virtual {v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v5

    .line 131
    :cond_3
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v5, :cond_0

    .line 133
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 134
    invoke-virtual {v5}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    goto/16 :goto_0

    .line 123
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    goto/16 :goto_0

    .line 118
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    goto/16 :goto_0

    .line 113
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    goto/16 :goto_0

    .line 108
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    goto/16 :goto_0

    .line 103
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_4

    .line 90
    sget-object v4, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v4}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v4

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    or-int/lit8 v3, v3, 0x2

    .line 95
    :cond_4
    sget-object v4, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    .line 96
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getParserForType()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    .line 95
    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/MapEntry;

    .line 97
    iget-object v5, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v5}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v5

    .line 98
    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lcom/explorestack/protobuf/MapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 97
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_d
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_5

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 84
    :cond_5
    iget-object v4, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 85
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 84
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    goto/16 :goto_0

    .line 71
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    goto/16 :goto_0

    .line 66
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    goto/16 :goto_0

    .line 61
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    goto/16 :goto_0

    .line 56
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_13
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

    .line 198
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 199
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 196
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_6

    .line 202
    iget-object p2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 204
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 205
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->makeExtensionsImmutable()V

    .line 206
    throw p1

    :cond_7
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_8

    .line 202
    iget-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 204
    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 205
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x10 -> :sswitch_12
        0x18 -> :sswitch_11
        0x20 -> :sswitch_10
        0x2d -> :sswitch_f
        0x35 -> :sswitch_e
        0x3a -> :sswitch_d
        0x42 -> :sswitch_c
        0x48 -> :sswitch_b
        0x50 -> :sswitch_a
        0x58 -> :sswitch_9
        0x60 -> :sswitch_8
        0x68 -> :sswitch_7
        0x72 -> :sswitch_6
        0x7a -> :sswitch_5
        0x80 -> :sswitch_4
        0x8a -> :sswitch_3
        0x92 -> :sswitch_2
        0x98 -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 3325
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3500()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/AdExtension;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3702(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    return p1
.end method

.method static synthetic access$3802(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    return p1
.end method

.method static synthetic access$3902(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    return p1
.end method

.method static synthetic access$4002(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    return p1
.end method

.method static synthetic access$4102(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    return p1
.end method

.method static synthetic access$4202(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    return p1
.end method

.method static synthetic access$4302(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    return p1
.end method

.method static synthetic access$4402(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p1
.end method

.method static synthetic access$4502(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p1
.end method

.method static synthetic access$4602(Lio/bidmachine/protobuf/AdExtension;Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p1
.end method

.method static synthetic access$4702(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    return p1
.end method

.method static synthetic access$4802(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    return p1
.end method

.method static synthetic access$4900(Lio/bidmachine/protobuf/AdExtension;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4902(Lio/bidmachine/protobuf/AdExtension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lio/bidmachine/protobuf/AdExtension;I)I
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    return p1
.end method

.method static synthetic access$5102(Lio/bidmachine/protobuf/AdExtension;F)F
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    return p1
.end method

.method static synthetic access$5202(Lio/bidmachine/protobuf/AdExtension;F)F
    .locals 0

    .line 9
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    return p1
.end method

.method static synthetic access$5302(Lio/bidmachine/protobuf/AdExtension;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    return p1
.end method

.method static synthetic access$5400(Lio/bidmachine/protobuf/AdExtension;)Ljava/util/List;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5402(Lio/bidmachine/protobuf/AdExtension;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5500(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p0
.end method

.method static synthetic access$5502(Lio/bidmachine/protobuf/AdExtension;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 9
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object p1
.end method

.method static synthetic access$5600()Z
    .locals 1

    .line 9
    sget-boolean v0, Lio/bidmachine/protobuf/AdExtension;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5700(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/MapField;
    .locals 0

    .line 9
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5800(Lio/bidmachine/protobuf/AdExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$5900()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdExtension;
    .locals 1

    .line 5575
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 210
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3249
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 3250
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 3698
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 3701
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3671
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3672
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3678
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3679
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3639
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3645
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3684
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3685
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3691
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3692
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3659
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3660
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3666
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 3667
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3628
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3634
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3649
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3655
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension;",
            ">;"
        }
    .end annotation

    .line 5590
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final containsCustomParams(Ljava/lang/String;)Z
    .locals 1

    .line 3269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3270
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3499
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/AdExtension;

    if-nez v1, :cond_1

    .line 3500
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3502
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/AdExtension;

    .line 3504
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v1

    .line 3505
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 3506
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v1

    .line 3507
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 3508
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v1

    .line 3509
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 3510
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v1

    .line 3511
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 3512
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v1

    .line 3513
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 3514
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v1

    .line 3515
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 3516
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v1

    .line 3517
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 3518
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 3519
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3520
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 3521
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 3523
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 3524
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3525
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 3526
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 3528
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 3529
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3530
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    .line 3531
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 3533
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v1

    .line 3534
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 3535
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v1

    .line 3536
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 3537
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v1

    .line 3538
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 3539
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v1

    .line 3540
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 3541
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3543
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v2

    .line 3542
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    .line 3544
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 3546
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v2

    .line 3545
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 3547
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v1

    .line 3548
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 3549
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    move-result-object v1

    .line 3550
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 3551
    :cond_16
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 3552
    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v2

    .line 3551
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/MapField;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 3553
    :cond_17
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/AdExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v3

    :cond_18
    return v0
.end method

.method public final getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 3010
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getCloseButtonOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .locals 1

    .line 3020
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public final getCompanionSkipoffset()I
    .locals 1

    .line 2919
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    return v0
.end method

.method public final getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 2977
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getCountdownOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .locals 1

    .line 2987
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3277
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsCount()I
    .locals 1

    .line 3257
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getCustomParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3288
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3301
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3303
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 3304
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3316
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3318
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 3319
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3322
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3320
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension;
    .locals 1

    .line 5600
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    return-object v0
.end method

.method public final getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 3219
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public final getEventCount()I
    .locals 1

    .line 3209
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

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

    .line 3188
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    return-object v0
.end method

.method public final getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .locals 1

    .line 3230
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

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

    .line 3199
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    return-object v0
.end method

.method public final getIgnoresSafeAreaLayoutGuide()Z
    .locals 1

    .line 3079
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    return v0
.end method

.method public final getLoadSkipoffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2893
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension;",
            ">;"
        }
    .end annotation

    .line 5595
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPreload()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2880
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    return v0
.end method

.method public final getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 3043
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v0, :cond_0

    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getProgressDuration()I
    .locals 1

    .line 3066
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    return v0
.end method

.method public final getProgressOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
    .locals 1

    .line 3053
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public final getR1()Z
    .locals 1

    .line 2945
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    return v0
.end method

.method public final getR2()Z
    .locals 1

    .line 2954
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    return v0
.end method

.method public final getSerializedSize()I
    .locals 5

    .line 3404
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3408
    :cond_0
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 3410
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3412
    :goto_0
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 3414
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3416
    :cond_2
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 3418
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3420
    :cond_3
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 3422
    invoke-static {v4, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 3424
    :cond_4
    iget v2, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x6

    .line 3426
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 3428
    :cond_5
    :goto_1
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x7

    .line 3429
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    .line 3430
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3433
    :cond_6
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3435
    sget-object v3, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/MapEntry;->newBuilderForType()Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 3436
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/protobuf/MapEntry$Builder;->setKey(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v3

    .line 3437
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->setValue(Ljava/lang/Object;)Lcom/explorestack/protobuf/MapEntry$Builder;

    move-result-object v2

    .line 3438
    invoke-virtual {v2}, Lcom/explorestack/protobuf/MapEntry$Builder;->build()Lcom/explorestack/protobuf/MapEntry;

    move-result-object v2

    const/16 v3, 0x8

    .line 3440
    invoke-static {v3, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    .line 3442
    :cond_7
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 3444
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3446
    :cond_8
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 3448
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3450
    :cond_9
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 3452
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3454
    :cond_a
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 3456
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3458
    :cond_b
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 3460
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3462
    :cond_c
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    .line 3464
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3466
    :cond_d
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    .line 3468
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3470
    :cond_e
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    .line 3472
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3474
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x11

    .line 3475
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3477
    :cond_10
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v1, :cond_11

    const/16 v1, 0x12

    .line 3479
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3481
    :cond_11
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x13

    .line 3483
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3485
    :cond_12
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    if-eqz v1, :cond_13

    const/16 v2, 0x14

    .line 3487
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3489
    :cond_13
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3490
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedSize:I

    return v0
.end method

.method public final getSkipoffset()I
    .locals 1

    .line 2906
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    return v0
.end method

.method public final getStoreUrl()Ljava/lang/String;
    .locals 2

    .line 3092
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 3093
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3094
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3096
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 3098
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3099
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 3112
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    .line 3113
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3114
    check-cast v0, Ljava/lang/String;

    .line 3115
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 3117
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    return-object v0

    .line 3120
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUseNativeClose()Z
    .locals 1

    .line 2932
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    return v0
.end method

.method public final getViewabilityDurationThreshold()F
    .locals 1

    .line 3162
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    return v0
.end method

.method public final getViewabilityIgnoreWindowFocus()Z
    .locals 1

    .line 3175
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    return v0
.end method

.method public final getViewabilityPixelThreshold()F
    .locals 1

    .line 3148
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    return v0
.end method

.method public final getViewabilityTimeThreshold()I
    .locals 1

    .line 3134
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    return v0
.end method

.method public final hasCloseButton()Z
    .locals 1

    .line 3000
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCountdown()Z
    .locals 1

    .line 2967
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasProgress()Z
    .locals 1

    .line 3033
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 3559
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3560
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedHashCode:I

    return v0

    .line 3563
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result v1

    .line 3565
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 3568
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 3570
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 3572
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 3575
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v1

    .line 3574
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 3578
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v1

    .line 3577
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 3581
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v1

    .line 3580
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 3582
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCountdown()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 3584
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3586
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasCloseButton()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 3588
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3590
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->hasProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 3592
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 3595
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 3598
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result v1

    .line 3597
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 3600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 3602
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityTimeThreshold()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 3605
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityPixelThreshold()F

    move-result v1

    .line 3604
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 3608
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityDurationThreshold()F

    move-result v1

    .line 3607
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 3611
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityIgnoreWindowFocus()Z

    move-result v1

    .line 3610
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 3612
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 3614
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3616
    :cond_4
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 3618
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 3620
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3621
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 228
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$Builder;

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 219
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid map field number: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3328
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3332
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdExtension;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 1

    .line 3696
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension;->newBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 2

    .line 3712
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 27
    new-instance p1, Lio/bidmachine/protobuf/AdExtension;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/AdExtension$Builder;
    .locals 2

    .line 3705
    sget-object v0, Lio/bidmachine/protobuf/AdExtension;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    .line 3706
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension;)Lio/bidmachine/protobuf/AdExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3339
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->preload_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3340
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3342
    :cond_0
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->loadSkipoffset_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 3343
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3345
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityTimeThreshold_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 3346
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3348
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityPixelThreshold_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    .line 3349
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3351
    :cond_3
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityDurationThreshold_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    .line 3352
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_4
    const/4 v0, 0x0

    .line 3354
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x7

    .line 3355
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension;->event_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3360
    :cond_5
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    sget-object v1, Lio/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    const/16 v2, 0x8

    .line 3358
    invoke-static {p1, v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/MapField;Lcom/explorestack/protobuf/MapEntry;I)V

    .line 3363
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->skipoffset_:I

    if-eqz v0, :cond_6

    const/16 v1, 0x9

    .line 3364
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3366
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->companionSkipoffset_:I

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    .line 3367
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3369
    :cond_7
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->useNativeClose_:Z

    if-eqz v0, :cond_8

    const/16 v1, 0xb

    .line 3370
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3372
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r1_:Z

    if-eqz v0, :cond_9

    const/16 v1, 0xc

    .line 3373
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3375
    :cond_9
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->r2_:Z

    if-eqz v0, :cond_a

    const/16 v1, 0xd

    .line 3376
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3378
    :cond_a
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->countdown_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_b

    const/16 v0, 0xe

    .line 3379
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3381
    :cond_b
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->closeButton_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_c

    const/16 v0, 0xf

    .line 3382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3384
    :cond_c
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->ignoresSafeAreaLayoutGuide_:Z

    if-eqz v0, :cond_d

    const/16 v1, 0x10

    .line 3385
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3387
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x11

    .line 3388
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension;->storeUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3390
    :cond_e
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->progress_:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    .line 3391
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 3393
    :cond_f
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension;->progressDuration_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x13

    .line 3394
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3396
    :cond_10
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension;->viewabilityIgnoreWindowFocus_:Z

    if-eqz v0, :cond_11

    const/16 v1, 0x14

    .line 3397
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3399
    :cond_11
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
