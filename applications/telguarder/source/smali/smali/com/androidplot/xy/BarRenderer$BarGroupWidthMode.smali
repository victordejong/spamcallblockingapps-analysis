.class public final enum Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;
.super Ljava/lang/Enum;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BarRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarGroupWidthMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

.field public static final enum FIXED_GAP:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

.field public static final enum FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 81
    new-instance v0, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    const-string v1, "FIXED_WIDTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;->FIXED_WIDTH:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    .line 82
    new-instance v1, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    const-string v3, "FIXED_GAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;->FIXED_GAP:Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 80
    sput-object v3, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;->$VALUES:[Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;
    .locals 1

    .line 80
    const-class v0, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;
    .locals 1

    .line 80
    sget-object v0, Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;->$VALUES:[Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/BarRenderer$BarGroupWidthMode;

    return-object v0
.end method
