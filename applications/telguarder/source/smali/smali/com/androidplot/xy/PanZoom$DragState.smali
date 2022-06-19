.class public final enum Lcom/androidplot/xy/PanZoom$DragState;
.super Ljava/lang/Enum;
.source "PanZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/PanZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DragState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/PanZoom$DragState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/PanZoom$DragState;

.field public static final enum NONE:Lcom/androidplot/xy/PanZoom$DragState;

.field public static final enum ONE_FINGER:Lcom/androidplot/xy/PanZoom$DragState;

.field public static final enum TWO_FINGERS:Lcom/androidplot/xy/PanZoom$DragState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    new-instance v0, Lcom/androidplot/xy/PanZoom$DragState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/PanZoom$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$DragState;->NONE:Lcom/androidplot/xy/PanZoom$DragState;

    .line 45
    new-instance v1, Lcom/androidplot/xy/PanZoom$DragState;

    const-string v3, "ONE_FINGER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/PanZoom$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/PanZoom$DragState;->ONE_FINGER:Lcom/androidplot/xy/PanZoom$DragState;

    .line 46
    new-instance v3, Lcom/androidplot/xy/PanZoom$DragState;

    const-string v5, "TWO_FINGERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/PanZoom$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/PanZoom$DragState;->TWO_FINGERS:Lcom/androidplot/xy/PanZoom$DragState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/androidplot/xy/PanZoom$DragState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 43
    sput-object v5, Lcom/androidplot/xy/PanZoom$DragState;->$VALUES:[Lcom/androidplot/xy/PanZoom$DragState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/PanZoom$DragState;
    .locals 1

    .line 43
    const-class v0, Lcom/androidplot/xy/PanZoom$DragState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/PanZoom$DragState;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/PanZoom$DragState;
    .locals 1

    .line 43
    sget-object v0, Lcom/androidplot/xy/PanZoom$DragState;->$VALUES:[Lcom/androidplot/xy/PanZoom$DragState;

    invoke-virtual {v0}, [Lcom/androidplot/xy/PanZoom$DragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/PanZoom$DragState;

    return-object v0
.end method
