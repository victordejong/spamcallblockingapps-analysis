.class synthetic Lcom/androidplot/xy/XYPlot$1;
.super Ljava/lang/Object;
.source "XYPlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYPlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$androidplot$xy$BoundaryMode:[I

.field static final synthetic $SwitchMap$com$androidplot$xy$XYFramingModel:[I

.field static final synthetic $SwitchMap$com$androidplot$xy$XYPlot$PreviewMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 539
    invoke-static {}, Lcom/androidplot/xy/BoundaryMode;->values()[Lcom/androidplot/xy/BoundaryMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v2}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    sget-object v3, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v3}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    sget-object v4, Lcom/androidplot/xy/BoundaryMode;->GROW:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v4}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$BoundaryMode:[I

    sget-object v4, Lcom/androidplot/xy/BoundaryMode;->SHRINK:Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v4}, Lcom/androidplot/xy/BoundaryMode;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 493
    :catch_3
    invoke-static {}, Lcom/androidplot/xy/XYFramingModel;->values()[Lcom/androidplot/xy/XYFramingModel;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYFramingModel:[I

    :try_start_4
    sget-object v4, Lcom/androidplot/xy/XYFramingModel;->ORIGIN:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYFramingModel;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYFramingModel:[I

    sget-object v4, Lcom/androidplot/xy/XYFramingModel;->EDGE:Lcom/androidplot/xy/XYFramingModel;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYFramingModel;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 248
    :catch_5
    invoke-static {}, Lcom/androidplot/xy/XYPlot$PreviewMode;->values()[Lcom/androidplot/xy/XYPlot$PreviewMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYPlot$PreviewMode:[I

    :try_start_6
    sget-object v4, Lcom/androidplot/xy/XYPlot$PreviewMode;->LineAndPoint:Lcom/androidplot/xy/XYPlot$PreviewMode;

    invoke-virtual {v4}, Lcom/androidplot/xy/XYPlot$PreviewMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYPlot$PreviewMode:[I

    sget-object v3, Lcom/androidplot/xy/XYPlot$PreviewMode;->Candlestick:Lcom/androidplot/xy/XYPlot$PreviewMode;

    invoke-virtual {v3}, Lcom/androidplot/xy/XYPlot$PreviewMode;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/androidplot/xy/XYPlot$1;->$SwitchMap$com$androidplot$xy$XYPlot$PreviewMode:[I

    sget-object v1, Lcom/androidplot/xy/XYPlot$PreviewMode;->Bar:Lcom/androidplot/xy/XYPlot$PreviewMode;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYPlot$PreviewMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
