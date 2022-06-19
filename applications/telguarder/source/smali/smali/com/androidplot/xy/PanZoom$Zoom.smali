.class public final enum Lcom/androidplot/xy/PanZoom$Zoom;
.super Ljava/lang/Enum;
.source "PanZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/PanZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Zoom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/PanZoom$Zoom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum NONE:Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum STRETCH_BOTH:Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum STRETCH_HORIZONTAL:Lcom/androidplot/xy/PanZoom$Zoom;

.field public static final enum STRETCH_VERTICAL:Lcom/androidplot/xy/PanZoom$Zoom;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 61
    new-instance v0, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Zoom;->NONE:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 66
    new-instance v1, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v3, "STRETCH_HORIZONTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_HORIZONTAL:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 71
    new-instance v3, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v5, "STRETCH_VERTICAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_VERTICAL:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 77
    new-instance v5, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v7, "STRETCH_BOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidplot/xy/PanZoom$Zoom;->STRETCH_BOTH:Lcom/androidplot/xy/PanZoom$Zoom;

    .line 82
    new-instance v7, Lcom/androidplot/xy/PanZoom$Zoom;

    const-string v9, "SCALE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/androidplot/xy/PanZoom$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/androidplot/xy/PanZoom$Zoom;->SCALE:Lcom/androidplot/xy/PanZoom$Zoom;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/androidplot/xy/PanZoom$Zoom;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 56
    sput-object v9, Lcom/androidplot/xy/PanZoom$Zoom;->$VALUES:[Lcom/androidplot/xy/PanZoom$Zoom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/PanZoom$Zoom;
    .locals 1

    .line 56
    const-class v0, Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/PanZoom$Zoom;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/PanZoom$Zoom;
    .locals 1

    .line 56
    sget-object v0, Lcom/androidplot/xy/PanZoom$Zoom;->$VALUES:[Lcom/androidplot/xy/PanZoom$Zoom;

    invoke-virtual {v0}, [Lcom/androidplot/xy/PanZoom$Zoom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/PanZoom$Zoom;

    return-object v0
.end method
