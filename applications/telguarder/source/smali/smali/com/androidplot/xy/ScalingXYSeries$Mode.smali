.class public final enum Lcom/androidplot/xy/ScalingXYSeries$Mode;
.super Ljava/lang/Enum;
.source "ScalingXYSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/ScalingXYSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/ScalingXYSeries$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/ScalingXYSeries$Mode;

.field public static final enum X_AND_Y:Lcom/androidplot/xy/ScalingXYSeries$Mode;

.field public static final enum X_ONLY:Lcom/androidplot/xy/ScalingXYSeries$Mode;

.field public static final enum Y_ONLY:Lcom/androidplot/xy/ScalingXYSeries$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/androidplot/xy/ScalingXYSeries$Mode;

    const-string v1, "X_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/ScalingXYSeries$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/ScalingXYSeries$Mode;->X_ONLY:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    .line 14
    new-instance v1, Lcom/androidplot/xy/ScalingXYSeries$Mode;

    const-string v3, "Y_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/ScalingXYSeries$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/ScalingXYSeries$Mode;->Y_ONLY:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    .line 15
    new-instance v3, Lcom/androidplot/xy/ScalingXYSeries$Mode;

    const-string v5, "X_AND_Y"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/ScalingXYSeries$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/ScalingXYSeries$Mode;->X_AND_Y:Lcom/androidplot/xy/ScalingXYSeries$Mode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/androidplot/xy/ScalingXYSeries$Mode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 12
    sput-object v5, Lcom/androidplot/xy/ScalingXYSeries$Mode;->$VALUES:[Lcom/androidplot/xy/ScalingXYSeries$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/ScalingXYSeries$Mode;
    .locals 1

    .line 12
    const-class v0, Lcom/androidplot/xy/ScalingXYSeries$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/ScalingXYSeries$Mode;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/ScalingXYSeries$Mode;
    .locals 1

    .line 12
    sget-object v0, Lcom/androidplot/xy/ScalingXYSeries$Mode;->$VALUES:[Lcom/androidplot/xy/ScalingXYSeries$Mode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/ScalingXYSeries$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/ScalingXYSeries$Mode;

    return-object v0
.end method
