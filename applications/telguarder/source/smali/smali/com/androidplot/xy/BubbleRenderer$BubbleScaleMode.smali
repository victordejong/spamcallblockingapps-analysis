.class public final enum Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
.super Ljava/lang/Enum;
.source "BubbleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BubbleRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BubbleScaleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

.field public static final enum LINEAR:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

.field public static final enum SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->LINEAR:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    .line 34
    new-instance v1, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    const-string v3, "SQUARE_ROOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->SQUARE_ROOT:Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 23
    sput-object v3, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->$VALUES:[Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
    .locals 1

    .line 23
    const-class v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;
    .locals 1

    .line 23
    sget-object v0, Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->$VALUES:[Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/BubbleRenderer$BubbleScaleMode;

    return-object v0
.end method
