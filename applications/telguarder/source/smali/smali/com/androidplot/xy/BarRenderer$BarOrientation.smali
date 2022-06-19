.class public final enum Lcom/androidplot/xy/BarRenderer$BarOrientation;
.super Ljava/lang/Enum;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/BarRenderer$BarOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/BarRenderer$BarOrientation;

.field public static final enum IN_ORDER:Lcom/androidplot/xy/BarRenderer$BarOrientation;

.field public static final enum OVERLAID:Lcom/androidplot/xy/BarRenderer$BarOrientation;

.field public static final enum SIDE_BY_SIDE:Lcom/androidplot/xy/BarRenderer$BarOrientation;

.field public static final enum STACKED:Lcom/androidplot/xy/BarRenderer$BarOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 57
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarOrientation;

    const-string v1, "IN_ORDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/BarRenderer$BarOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarOrientation;->IN_ORDER:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    .line 63
    new-instance v1, Lcom/androidplot/xy/BarRenderer$BarOrientation;

    const-string v3, "OVERLAID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/BarRenderer$BarOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/BarRenderer$BarOrientation;->OVERLAID:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    .line 69
    new-instance v3, Lcom/androidplot/xy/BarRenderer$BarOrientation;

    const-string v5, "STACKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/BarRenderer$BarOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/BarRenderer$BarOrientation;->STACKED:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    .line 74
    new-instance v5, Lcom/androidplot/xy/BarRenderer$BarOrientation;

    const-string v7, "SIDE_BY_SIDE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidplot/xy/BarRenderer$BarOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidplot/xy/BarRenderer$BarOrientation;->SIDE_BY_SIDE:Lcom/androidplot/xy/BarRenderer$BarOrientation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/androidplot/xy/BarRenderer$BarOrientation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 51
    sput-object v7, Lcom/androidplot/xy/BarRenderer$BarOrientation;->$VALUES:[Lcom/androidplot/xy/BarRenderer$BarOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/BarRenderer$BarOrientation;
    .locals 1

    .line 51
    const-class v0, Lcom/androidplot/xy/BarRenderer$BarOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/BarRenderer$BarOrientation;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/BarRenderer$BarOrientation;
    .locals 1

    .line 51
    sget-object v0, Lcom/androidplot/xy/BarRenderer$BarOrientation;->$VALUES:[Lcom/androidplot/xy/BarRenderer$BarOrientation;

    invoke-virtual {v0}, [Lcom/androidplot/xy/BarRenderer$BarOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/BarRenderer$BarOrientation;

    return-object v0
.end method
