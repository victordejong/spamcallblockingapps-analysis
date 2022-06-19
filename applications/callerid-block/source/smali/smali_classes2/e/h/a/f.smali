.class public final Le/h/a/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CradleBall:[I

.field public static final CradleBall_cradle_ball_color:I = 0x0

.field public static final RotateLoading:[I

.field public static final RotateLoading_loading_color:I = 0x0

.field public static final RotateLoading_loading_speed:I = 0x1

.field public static final RotateLoading_loading_width:I = 0x2

.field public static final RotateLoading_shadow_position:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040189

    aput v2, v0, v1

    sput-object v0, Le/h/a/f;->CradleBall:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Le/h/a/f;->RotateLoading:[I

    return-void

    :array_0
    .array-data 4
        0x7f040347
        0x7f040348
        0x7f040349
        0x7f04044f
    .end array-data
.end method
