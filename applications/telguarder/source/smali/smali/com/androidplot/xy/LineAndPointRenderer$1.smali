.class Lcom/androidplot/xy/LineAndPointRenderer$1;
.super Ljava/lang/Object;
.source "LineAndPointRenderer.java"

# interfaces
.implements Lcom/androidplot/PlotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidplot/xy/LineAndPointRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/xy/LineAndPointRenderer;


# direct methods
.method constructor <init>(Lcom/androidplot/xy/LineAndPointRenderer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/androidplot/xy/LineAndPointRenderer$1;->this$0:Lcom/androidplot/xy/LineAndPointRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/androidplot/xy/LineAndPointRenderer$1;->this$0:Lcom/androidplot/xy/LineAndPointRenderer;

    invoke-virtual {p1}, Lcom/androidplot/xy/LineAndPointRenderer;->cullPointsCache()V

    return-void
.end method
