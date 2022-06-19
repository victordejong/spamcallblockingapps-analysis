.class public final enum Lcom/androidplot/xy/XYPlot$PreviewMode;
.super Ljava/lang/Enum;
.source "XYPlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYPlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/XYPlot$PreviewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/XYPlot$PreviewMode;

.field public static final enum Bar:Lcom/androidplot/xy/XYPlot$PreviewMode;

.field public static final enum Candlestick:Lcom/androidplot/xy/XYPlot$PreviewMode;

.field public static final enum LineAndPoint:Lcom/androidplot/xy/XYPlot$PreviewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 129
    new-instance v0, Lcom/androidplot/xy/XYPlot$PreviewMode;

    const-string v1, "LineAndPoint"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/XYPlot$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYPlot$PreviewMode;->LineAndPoint:Lcom/androidplot/xy/XYPlot$PreviewMode;

    .line 130
    new-instance v1, Lcom/androidplot/xy/XYPlot$PreviewMode;

    const-string v3, "Candlestick"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/XYPlot$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/XYPlot$PreviewMode;->Candlestick:Lcom/androidplot/xy/XYPlot$PreviewMode;

    .line 131
    new-instance v3, Lcom/androidplot/xy/XYPlot$PreviewMode;

    const-string v5, "Bar"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/XYPlot$PreviewMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/XYPlot$PreviewMode;->Bar:Lcom/androidplot/xy/XYPlot$PreviewMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/androidplot/xy/XYPlot$PreviewMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 128
    sput-object v5, Lcom/androidplot/xy/XYPlot$PreviewMode;->$VALUES:[Lcom/androidplot/xy/XYPlot$PreviewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/XYPlot$PreviewMode;
    .locals 1

    .line 128
    const-class v0, Lcom/androidplot/xy/XYPlot$PreviewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/XYPlot$PreviewMode;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/XYPlot$PreviewMode;
    .locals 1

    .line 128
    sget-object v0, Lcom/androidplot/xy/XYPlot$PreviewMode;->$VALUES:[Lcom/androidplot/xy/XYPlot$PreviewMode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/XYPlot$PreviewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/XYPlot$PreviewMode;

    return-object v0
.end method
