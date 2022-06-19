.class public final enum Lcom/androidplot/xy/PanZoom$Pan;
.super Ljava/lang/Enum;
.source "PanZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/PanZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/PanZoom$Pan;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/PanZoom$Pan;

.field public static final enum BOTH:Lcom/androidplot/xy/PanZoom$Pan;

.field public static final enum HORIZONTAL:Lcom/androidplot/xy/PanZoom$Pan;

.field public static final enum NONE:Lcom/androidplot/xy/PanZoom$Pan;

.field public static final enum VERTICAL:Lcom/androidplot/xy/PanZoom$Pan;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 50
    new-instance v0, Lcom/androidplot/xy/PanZoom$Pan;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/PanZoom$Pan;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/PanZoom$Pan;->NONE:Lcom/androidplot/xy/PanZoom$Pan;

    .line 51
    new-instance v1, Lcom/androidplot/xy/PanZoom$Pan;

    const-string v3, "HORIZONTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/PanZoom$Pan;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/PanZoom$Pan;->HORIZONTAL:Lcom/androidplot/xy/PanZoom$Pan;

    .line 52
    new-instance v3, Lcom/androidplot/xy/PanZoom$Pan;

    const-string v5, "VERTICAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/PanZoom$Pan;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/PanZoom$Pan;->VERTICAL:Lcom/androidplot/xy/PanZoom$Pan;

    .line 53
    new-instance v5, Lcom/androidplot/xy/PanZoom$Pan;

    const-string v7, "BOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidplot/xy/PanZoom$Pan;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidplot/xy/PanZoom$Pan;->BOTH:Lcom/androidplot/xy/PanZoom$Pan;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/androidplot/xy/PanZoom$Pan;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 49
    sput-object v7, Lcom/androidplot/xy/PanZoom$Pan;->$VALUES:[Lcom/androidplot/xy/PanZoom$Pan;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/PanZoom$Pan;
    .locals 1

    .line 49
    const-class v0, Lcom/androidplot/xy/PanZoom$Pan;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/PanZoom$Pan;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/PanZoom$Pan;
    .locals 1

    .line 49
    sget-object v0, Lcom/androidplot/xy/PanZoom$Pan;->$VALUES:[Lcom/androidplot/xy/PanZoom$Pan;

    invoke-virtual {v0}, [Lcom/androidplot/xy/PanZoom$Pan;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/PanZoom$Pan;

    return-object v0
.end method
