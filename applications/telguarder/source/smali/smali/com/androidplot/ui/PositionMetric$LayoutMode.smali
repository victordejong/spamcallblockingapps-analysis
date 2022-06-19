.class public final enum Lcom/androidplot/ui/PositionMetric$LayoutMode;
.super Ljava/lang/Enum;
.source "PositionMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/PositionMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/ui/PositionMetric$LayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/PositionMetric$LayoutMode;

.field public static final enum ABSOLUTE:Lcom/androidplot/ui/PositionMetric$LayoutMode;

.field public static final enum RELATIVE:Lcom/androidplot/ui/PositionMetric$LayoutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;

    const-string v1, "ABSOLUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/PositionMetric$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;->ABSOLUTE:Lcom/androidplot/ui/PositionMetric$LayoutMode;

    .line 29
    new-instance v1, Lcom/androidplot/ui/PositionMetric$LayoutMode;

    const-string v3, "RELATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/ui/PositionMetric$LayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/ui/PositionMetric$LayoutMode;->RELATIVE:Lcom/androidplot/ui/PositionMetric$LayoutMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/ui/PositionMetric$LayoutMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 27
    sput-object v3, Lcom/androidplot/ui/PositionMetric$LayoutMode;->$VALUES:[Lcom/androidplot/ui/PositionMetric$LayoutMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/PositionMetric$LayoutMode;
    .locals 1

    .line 27
    const-class v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/ui/PositionMetric$LayoutMode;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/ui/PositionMetric$LayoutMode;
    .locals 1

    .line 27
    sget-object v0, Lcom/androidplot/ui/PositionMetric$LayoutMode;->$VALUES:[Lcom/androidplot/ui/PositionMetric$LayoutMode;

    invoke-virtual {v0}, [Lcom/androidplot/ui/PositionMetric$LayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/PositionMetric$LayoutMode;

    return-object v0
.end method
