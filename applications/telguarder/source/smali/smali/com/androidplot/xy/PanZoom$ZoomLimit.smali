.class public final enum Lcom/androidplot/xy/PanZoom$ZoomLimit;
.super Ljava/lang/Enum;
.source "PanZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/PanZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomLimit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/PanZoom$ZoomLimit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/PanZoom$ZoomLimit;

.field public static final enum MIN_TICKS:Lcom/androidplot/xy/PanZoom$ZoomLimit;

.field public static final enum OUTER:Lcom/androidplot/xy/PanZoom$ZoomLimit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 92
    new-instance v0, Lcom/androidplot/xy/PanZoom$ZoomLimit;

    const-string v1, "OUTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/PanZoom$ZoomLimit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$ZoomLimit;->OUTER:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    .line 98
    new-instance v1, Lcom/androidplot/xy/PanZoom$ZoomLimit;

    const-string v3, "MIN_TICKS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/PanZoom$ZoomLimit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/PanZoom$ZoomLimit;->MIN_TICKS:Lcom/androidplot/xy/PanZoom$ZoomLimit;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/xy/PanZoom$ZoomLimit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 88
    sput-object v3, Lcom/androidplot/xy/PanZoom$ZoomLimit;->$VALUES:[Lcom/androidplot/xy/PanZoom$ZoomLimit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/PanZoom$ZoomLimit;
    .locals 1

    .line 88
    const-class v0, Lcom/androidplot/xy/PanZoom$ZoomLimit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/PanZoom$ZoomLimit;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/PanZoom$ZoomLimit;
    .locals 1

    .line 88
    sget-object v0, Lcom/androidplot/xy/PanZoom$ZoomLimit;->$VALUES:[Lcom/androidplot/xy/PanZoom$ZoomLimit;

    invoke-virtual {v0}, [Lcom/androidplot/xy/PanZoom$ZoomLimit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/PanZoom$ZoomLimit;

    return-object v0
.end method
