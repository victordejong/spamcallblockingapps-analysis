.class public interface abstract Lcom/androidplot/xy/XYGraphWidget$CursorLabelFormatter;
.super Ljava/lang/Object;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYGraphWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CursorLabelFormatter"
.end annotation


# virtual methods
.method public abstract getBackgroundPaint()Landroid/graphics/Paint;
.end method

.method public abstract getLabelText(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/String;
.end method

.method public abstract getTextPaint()Landroid/graphics/Paint;
.end method
