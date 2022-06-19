.class public Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;
.super Ljava/lang/Object;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYGraphWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineLabelRenderer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawLabel(Landroid/graphics/Canvas;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;Ljava/lang/Number;FFZ)V
    .locals 9

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 156
    :try_start_0
    invoke-static {p2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->access$000(Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;)Ljava/text/Format;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getRotation()F

    move-result p3

    invoke-virtual {p1, p3, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 158
    invoke-virtual {p2}, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/androidplot/xy/XYGraphWidget$LineLabelRenderer;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 161
    throw p2
.end method

.method protected drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;FFZ)V
    .locals 0

    .line 170
    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
