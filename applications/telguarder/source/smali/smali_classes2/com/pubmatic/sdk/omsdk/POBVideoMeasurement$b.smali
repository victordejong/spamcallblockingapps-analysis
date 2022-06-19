.class synthetic Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->values()[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->c:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->GENERIC:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    invoke-virtual {v2}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->c:[I

    sget-object v3, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->VIDEO:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoAdErrorType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->values()[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->b:[I

    :try_start_2
    sget-object v3, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->FULLSCREEN:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->b:[I

    sget-object v3, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->COLLAPSED:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    invoke-virtual {v3}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->b:[I

    sget-object v4, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->EXPANDED:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    invoke-virtual {v4}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->b:[I

    sget-object v5, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->MINIMIZED:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    invoke-virtual {v5}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v4, 0x5

    :try_start_6
    sget-object v5, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->b:[I

    sget-object v6, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->NORMAL:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    invoke-virtual {v6}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->values()[Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    :try_start_7
    sget-object v6, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->FIRST_QUARTILE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v6}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v5, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->MID_POINT:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v5}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->THIRD_QUARTILE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->COMPLETE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->SKIPPED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->MUTE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->UNMUTE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->CLICKED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->PAUSE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->RESUME:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/pubmatic/sdk/omsdk/POBVideoMeasurement$b;->a:[I

    sget-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ICON_CLICKED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
