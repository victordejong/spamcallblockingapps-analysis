.class public abstract Lcom/androidplot/Plot;
.super Landroid/view/View;
.source "Plot.java"

# interfaces
.implements Lcom/androidplot/ui/Resizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/Plot$BufferedCanvas;,
        Lcom/androidplot/Plot$RenderMode;,
        Lcom/androidplot/Plot$BorderStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/Series;",
        "FormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        "RendererType:",
        "Lcom/androidplot/ui/SeriesRenderer;",
        "BundleType:",
        "Lcom/androidplot/ui/SeriesBundle<",
        "TSeriesType;TFormatterType;>;RegistryType:",
        "Lcom/androidplot/SeriesRegistry<",
        "TBundleType;TSeriesType;TFormatterType;>;>",
        "Landroid/view/View;",
        "Lcom/androidplot/ui/Resizable;"
    }
.end annotation


# static fields
.field private static final BASE_PACKAGE:Ljava/lang/String; = "com.androidplot."

.field private static final DEFAULT_TITLE_WIDGET_TEXT_SIZE_SP:I = 0xa

.field private static final TAG:Ljava/lang/String; = "com.androidplot.Plot"

.field private static final XML_ATTR_PREFIX:Ljava/lang/String; = "androidplot"


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private borderPaint:Landroid/graphics/Paint;

.field private borderRadiusX:F

.field private borderRadiusY:F

.field private borderStyle:Lcom/androidplot/Plot$BorderStyle;

.field private boxModel:Lcom/androidplot/ui/BoxModel;

.field private displayDims:Lcom/androidplot/util/DisplayDimensions;

.field private isIdle:Z

.field private keepRunning:Z

.field private layoutManager:Lcom/androidplot/ui/LayoutManager;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/androidplot/PlotListener;",
            ">;"
        }
    .end annotation
.end field

.field private final pingPong:Lcom/androidplot/Plot$BufferedCanvas;

.field private registry:Lcom/androidplot/SeriesRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRegistryType;"
        }
    .end annotation
.end field

.field private renderMode:Lcom/androidplot/Plot$RenderMode;

.field private final renderSync:Ljava/lang/Object;

.field private renderThread:Ljava/lang/Thread;

.field private renderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+TRendererType;>;TRendererType;>;"
        }
    .end annotation
.end field

.field private title:Lcom/androidplot/ui/widget/TextLabelWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 323
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    invoke-direct {v0}, Lcom/androidplot/ui/BoxModel;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    .line 170
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    iput-object v0, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    const/high16 v0, 0x41700000    # 15.0f

    .line 171
    iput v0, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    .line 172
    iput v0, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    .line 177
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 178
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    iput-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    .line 179
    new-instance v0, Lcom/androidplot/Plot$BufferedCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androidplot/Plot$BufferedCanvas;-><init>(Lcom/androidplot/Plot$1;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/androidplot/Plot;->keepRunning:Z

    const/4 v1, 0x1

    .line 191
    iput-boolean v1, p0, Lcom/androidplot/Plot;->isIdle:Z

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistryInstance()Lcom/androidplot/SeriesRegistry;

    move-result-object v2

    iput-object v2, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    .line 196
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/androidplot/Plot;->renderers:Ljava/util/HashMap;

    .line 198
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    const/16 v3, 0x96

    .line 199
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v2, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget-object v2, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v2, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    .line 204
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v1, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidplot/Plot;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 344
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    invoke-direct {v0}, Lcom/androidplot/ui/BoxModel;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    .line 170
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    iput-object v0, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    const/high16 v0, 0x41700000    # 15.0f

    .line 171
    iput v0, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    .line 172
    iput v0, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    .line 177
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 178
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    iput-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    .line 179
    new-instance v0, Lcom/androidplot/Plot$BufferedCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androidplot/Plot$BufferedCanvas;-><init>(Lcom/androidplot/Plot$1;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/androidplot/Plot;->keepRunning:Z

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/androidplot/Plot;->isIdle:Z

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistryInstance()Lcom/androidplot/SeriesRegistry;

    move-result-object v1

    iput-object v1, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    .line 196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androidplot/Plot;->renderers:Ljava/util/HashMap;

    .line 198
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    .line 199
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v1, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget-object v1, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v1, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    .line 204
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 345
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidplot/Plot;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 291
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/androidplot/Plot;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/androidplot/Plot$RenderMode;)V
    .locals 5

    .line 300
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Lcom/androidplot/ui/BoxModel;

    invoke-direct {v0}, Lcom/androidplot/ui/BoxModel;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    .line 170
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    iput-object v0, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    const/high16 v0, 0x41700000    # 15.0f

    .line 171
    iput v0, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    .line 172
    iput v0, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    .line 177
    new-instance v0, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v0}, Lcom/androidplot/util/DisplayDimensions;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 178
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    iput-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    .line 179
    new-instance v0, Lcom/androidplot/Plot$BufferedCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/androidplot/Plot$BufferedCanvas;-><init>(Lcom/androidplot/Plot$1;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->renderSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/androidplot/Plot;->keepRunning:Z

    const/4 v2, 0x1

    .line 191
    iput-boolean v2, p0, Lcom/androidplot/Plot;->isIdle:Z

    .line 194
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistryInstance()Lcom/androidplot/SeriesRegistry;

    move-result-object v3

    iput-object v3, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    .line 196
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/androidplot/Plot;->renderers:Ljava/util/HashMap;

    .line 198
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    const/16 v4, 0x96

    .line 199
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v3, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget-object v3, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v3, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    const v3, -0xbbbbbc

    .line 204
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object v2, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    iput-object p3, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    .line 302
    invoke-virtual {p0, p1, v1, v0}, Lcom/androidplot/Plot;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 303
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/androidplot/Plot;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/androidplot/Plot;->keepRunning:Z

    return p0
.end method

.method static synthetic access$102(Lcom/androidplot/Plot;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/androidplot/Plot;->keepRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/androidplot/Plot;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/androidplot/Plot;->isIdle:Z

    return p1
.end method

.method static synthetic access$300(Lcom/androidplot/Plot;)Lcom/androidplot/Plot$BufferedCanvas;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    return-object p0
.end method

.method static synthetic access$400(Lcom/androidplot/Plot;)Ljava/lang/Object;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/androidplot/Plot;->renderSync:Ljava/lang/Object;

    return-object p0
.end method

.method private loadAttrs(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 497
    const-class v0, Lcom/androidplot/Plot;

    const-string v1, "Styleable definition not found for: "

    if-eqz p1, :cond_7

    .line 502
    const-class v2, Lcom/androidplot/R$styleable;

    .line 503
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x5f

    .line 504
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 512
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    sget-object v5, Lcom/androidplot/Plot;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    :goto_0
    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 518
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    .line 519
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, p1, v3, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 525
    invoke-virtual {p0, v3}, Lcom/androidplot/Plot;->processAttrs(Landroid/content/res/TypedArray;)V

    .line 526
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 528
    throw p1

    :catch_1
    :cond_0
    move-object v3, v4

    .line 532
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 534
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    .line 535
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1, v2, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v3, :cond_4

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 540
    :catch_2
    :try_start_3
    sget-object p2, Lcom/androidplot/Plot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    goto :goto_3

    :goto_2
    if-eqz v3, :cond_3

    .line 544
    invoke-direct {p0, v3}, Lcom/androidplot/Plot;->processBaseAttrs(Landroid/content/res/TypedArray;)V

    .line 545
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 547
    :cond_3
    throw p1

    :catch_3
    nop

    if-eqz v3, :cond_4

    .line 544
    :goto_3
    invoke-direct {p0, v3}, Lcom/androidplot/Plot;->processBaseAttrs(Landroid/content/res/TypedArray;)V

    .line 545
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 551
    :cond_4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 552
    :goto_4
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 553
    invoke-interface {p1, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 556
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidplot"

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xc

    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 561
    :cond_6
    :try_start_4
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/halfhp/fig/Fig;->configure(Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;)V
    :try_end_4
    .catch Lcom/halfhp/fig/FigException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 563
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    :goto_5
    return-void
.end method

.method private processBaseAttrs(Landroid/content/res/TypedArray;)V
    .locals 12

    .line 456
    sget v0, Lcom/androidplot/R$styleable;->Plot_markupEnabled:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 457
    invoke-virtual {p0, v0}, Lcom/androidplot/Plot;->setMarkupEnabled(Z)V

    .line 460
    invoke-static {}, Lcom/androidplot/Plot$RenderMode;->values()[Lcom/androidplot/Plot$RenderMode;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_renderMode:I

    .line 461
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderMode()Lcom/androidplot/Plot$RenderMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/Plot$RenderMode;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object v0, v0, v1

    .line 462
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderMode()Lcom/androidplot/Plot$RenderMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 463
    invoke-virtual {p0, v0}, Lcom/androidplot/Plot;->setRenderMode(Lcom/androidplot/Plot$RenderMode;)V

    .line 467
    :cond_0
    iget-object v3, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    sget v4, Lcom/androidplot/R$styleable;->Plot_marginTop:I

    sget v5, Lcom/androidplot/R$styleable;->Plot_marginBottom:I

    sget v6, Lcom/androidplot/R$styleable;->Plot_marginLeft:I

    sget v7, Lcom/androidplot/R$styleable;->Plot_marginRight:I

    sget v8, Lcom/androidplot/R$styleable;->Plot_paddingTop:I

    sget v9, Lcom/androidplot/R$styleable;->Plot_paddingBottom:I

    sget v10, Lcom/androidplot/R$styleable;->Plot_paddingLeft:I

    sget v11, Lcom/androidplot/R$styleable;->Plot_paddingRight:I

    move-object v2, p1

    invoke-static/range {v2 .. v11}, Lcom/androidplot/util/AttrUtils;->configureBoxModelable(Landroid/content/res/TypedArray;Lcom/androidplot/ui/BoxModelable;IIIIIIII)V

    .line 472
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_titleTextSize:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 475
    invoke-static {v2}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v2

    .line 474
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 473
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 477
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_titleTextColor:I

    .line 478
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 477
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_backgroundColor:I

    .line 481
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 480
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/androidplot/R$styleable;->Plot_borderColor:I

    sget v2, Lcom/androidplot/R$styleable;->Plot_borderThickness:I

    invoke-static {p1, v0, v1, v2}, Lcom/androidplot/util/AttrUtils;->configureLinePaint(Landroid/content/res/TypedArray;Landroid/graphics/Paint;II)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/androidplot/PlotListener;)Z
    .locals 1

    monitor-enter p0

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 621
    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/SeriesRegistry;->add(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    move-result v0

    .line 622
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/Plot;->attachSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized addSeries(Lcom/androidplot/ui/Formatter;[Lcom/androidplot/Series;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFormatterType;[TSeriesType;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 606
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 607
    invoke-virtual {p0, v3, p1}, Lcom/androidplot/Plot;->addSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 608
    monitor-exit p0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected attachSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)V"
        }
    .end annotation

    .line 628
    invoke-virtual {p2}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v0

    .line 631
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2, p0}, Lcom/androidplot/ui/Formatter;->getRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_0
    instance-of p2, p1, Lcom/androidplot/PlotListener;

    if-eqz p2, :cond_1

    .line 637
    check-cast p1, Lcom/androidplot/PlotListener;

    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->addListener(Lcom/androidplot/PlotListener;)Z

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    .line 702
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/SeriesRegistry;->getSeriesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/Series;

    .line 703
    instance-of v2, v1, Lcom/androidplot/PlotListener;

    if-eqz v2, :cond_0

    .line 704
    check-cast v1, Lcom/androidplot/PlotListener;

    invoke-virtual {p0, v1}, Lcom/androidplot/Plot;->removeListener(Lcom/androidplot/PlotListener;)Z

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/SeriesRegistry;->clear()V

    return-void
.end method

.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/androidplot/Plot;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcom/androidplot/Plot;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected drawRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2

    .line 907
    sget-object v0, Lcom/androidplot/Plot$2;->$SwitchMap$com$androidplot$Plot$BorderStyle:[I

    iget-object v1, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    invoke-virtual {v1}, Lcom/androidplot/Plot$BorderStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 913
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 909
    :cond_0
    iget v0, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    iget v1, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getDisplayDimensions()Lcom/androidplot/util/DisplayDimensions;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    return-object v0
.end method

.method public getFormatter(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/Formatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class<",
            "+TRendererType;>;)TFormatterType;"
        }
    .end annotation

    .line 721
    invoke-virtual {p0, p1, p2}, Lcom/androidplot/Plot;->getSeries(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/SeriesBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object p1

    return-object p1
.end method

.method public getLayoutManager()Lcom/androidplot/ui/LayoutManager;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    return-object v0
.end method

.method protected getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/androidplot/PlotListener;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlotMarginBottom()F
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginBottom()F

    move-result v0

    return v0
.end method

.method public getPlotMarginLeft()F
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginLeft()F

    move-result v0

    return v0
.end method

.method public getPlotMarginRight()F
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginRight()F

    move-result v0

    return v0
.end method

.method public getPlotMarginTop()F
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getMarginTop()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingBottom()F
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingBottom()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingLeft()F
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingLeft()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingRight()F
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingRight()F

    move-result v0

    return v0
.end method

.method public getPlotPaddingTop()F
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0}, Lcom/androidplot/ui/BoxModel;->getPaddingTop()F

    move-result v0

    return v0
.end method

.method public getRegistry()Lcom/androidplot/SeriesRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRegistryType;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    return-object v0
.end method

.method protected abstract getRegistryInstance()Lcom/androidplot/SeriesRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRegistryType;"
        }
    .end annotation
.end method

.method public getRenderMode()Lcom/androidplot/Plot$RenderMode;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    return-object v0
.end method

.method public getRenderer(Ljava/lang/Class;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TRendererType;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderers()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidplot/ui/SeriesRenderer;

    return-object p1
.end method

.method public getRendererList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TRendererType;>;"
        }
    .end annotation

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRenderers()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRenderers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+TRendererType;>;TRendererType;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/androidplot/Plot;->renderers:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getSeries(Lcom/androidplot/Series;Ljava/lang/Class;)Lcom/androidplot/ui/SeriesBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class<",
            "+TRendererType;>;)",
            "Lcom/androidplot/ui/SeriesBundle<",
            "TSeriesType;TFormatterType;>;"
        }
    .end annotation

    .line 648
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->getSeries(Lcom/androidplot/Series;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    .line 649
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSeries(Lcom/androidplot/Series;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)",
            "Ljava/util/List<",
            "Lcom/androidplot/ui/SeriesBundle<",
            "TSeriesType;TFormatterType;>;>;"
        }
    .end annotation

    .line 662
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/SeriesRegistry;->get(Lcom/androidplot/Series;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-object v0
.end method

.method protected final init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 386
    invoke-static {p1}, Lcom/androidplot/util/PixelUtils;->init(Landroid/content/Context;)V

    .line 387
    new-instance v0, Lcom/androidplot/ui/LayoutManager;

    invoke-direct {v0}, Lcom/androidplot/ui/LayoutManager;-><init>()V

    iput-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    .line 388
    new-instance v1, Lcom/androidplot/ui/widget/TextLabelWidget;

    new-instance v2, Lcom/androidplot/ui/Size;

    sget-object v3, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    sget-object v4, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    const/high16 v5, 0x41c80000    # 25.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-direct {v2, v5, v3, v6, v4}, Lcom/androidplot/ui/Size;-><init>(FLcom/androidplot/ui/SizeMode;FLcom/androidplot/ui/SizeMode;)V

    sget-object v3, Lcom/androidplot/ui/TextOrientation;->HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

    invoke-direct {v1, v0, v2, v3}, Lcom/androidplot/ui/widget/TextLabelWidget;-><init>(Lcom/androidplot/ui/LayoutManager;Lcom/androidplot/ui/Size;Lcom/androidplot/ui/TextOrientation;)V

    iput-object v1, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    .line 392
    sget-object v3, Lcom/androidplot/ui/HorizontalPositioning;->RELATIVE_TO_CENTER:Lcom/androidplot/ui/HorizontalPositioning;

    sget-object v5, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/VerticalPositioning;

    sget-object v6, Lcom/androidplot/ui/Anchor;->TOP_MIDDLE:Lcom/androidplot/ui/Anchor;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/androidplot/ui/widget/TextLabelWidget;->position(FLcom/androidplot/ui/HorizontalPositioning;FLcom/androidplot/ui/VerticalPositioning;Lcom/androidplot/ui/Anchor;)V

    .line 396
    iget-object v0, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {v0}, Lcom/androidplot/ui/widget/TextLabelWidget;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    .line 397
    invoke-static {v1}, Lcom/androidplot/util/PixelUtils;->spToPix(F)F

    move-result v1

    .line 396
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 399
    invoke-virtual {p0}, Lcom/androidplot/Plot;->onPreInit()V

    .line 401
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    iget-object v1, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    invoke-virtual {v0, v1}, Lcom/androidplot/ui/LayoutManager;->moveToTop(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 403
    invoke-direct {p0, p2, p3}, Lcom/androidplot/Plot;->loadAttrs(Landroid/util/AttributeSet;I)V

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->onAfterConfig()V

    .line 408
    iget-object p1, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {p1}, Lcom/androidplot/ui/LayoutManager;->onPostInit()V

    .line 409
    iget-object p1, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object p2, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne p1, p2, :cond_1

    .line 410
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/androidplot/Plot$1;

    invoke-direct {p2, p0}, Lcom/androidplot/Plot$1;-><init>(Lcom/androidplot/Plot;)V

    const-string p3, "Androidplot renderThread"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/androidplot/Plot;->renderThread:Ljava/lang/Thread;

    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 711
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/SeriesRegistry;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isHwAccelerationSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized layout(Lcom/androidplot/util/DisplayDimensions;)V
    .locals 1

    monitor-enter p0

    .line 767
    :try_start_0
    iput-object p1, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    .line 768
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/LayoutManager;->layout(Lcom/androidplot/util/DisplayDimensions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected notifyListenersAfterDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/PlotListener;

    .line 592
    invoke-interface {v1, p0, p1}, Lcom/androidplot/PlotListener;->onAfterDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/PlotListener;

    .line 586
    invoke-interface {v1, p0, p1}, Lcom/androidplot/PlotListener;->onBeforeDraw(Lcom/androidplot/Plot;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAfterConfig()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 773
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 774
    iget-object v0, p0, Lcom/androidplot/Plot;->renderSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 775
    :try_start_0
    iput-boolean v1, p0, Lcom/androidplot/Plot;->keepRunning:Z

    .line 776
    iget-object v1, p0, Lcom/androidplot/Plot;->renderSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 777
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 819
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_1

    .line 820
    iget-object v0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    invoke-virtual {v1}, Lcom/androidplot/Plot$BufferedCanvas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 823
    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 825
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_2

    .line 827
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->renderOnCanvas(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    .line 829
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Render Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onPreInit()V
    .locals 0

    return-void
.end method

.method protected declared-synchronized onSizeChanged(IIII)V
    .locals 4

    monitor-enter p0

    .line 785
    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidplot/util/PixelUtils;->init(Landroid/content/Context;)V

    .line 790
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 791
    invoke-virtual {p0}, Lcom/androidplot/Plot;->isHwAccelerationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/androidplot/Plot;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 792
    invoke-virtual {p0, v0, v1}, Lcom/androidplot/Plot;->setLayerType(ILandroid/graphics/Paint;)V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_1

    .line 798
    iget-object v0, p0, Lcom/androidplot/Plot;->pingPong:Lcom/androidplot/Plot$BufferedCanvas;

    invoke-virtual {v0, p2, p1}, Lcom/androidplot/Plot$BufferedCanvas;->resize(II)V

    .line 801
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 802
    iget-object v1, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v1, v0}, Lcom/androidplot/ui/BoxModel;->getMarginatedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 803
    iget-object v2, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v2, v1}, Lcom/androidplot/ui/BoxModel;->getPaddedRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 805
    new-instance v3, Lcom/androidplot/util/DisplayDimensions;

    invoke-direct {v3, v0, v1, v2}, Lcom/androidplot/util/DisplayDimensions;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-virtual {p0, v3}, Lcom/androidplot/Plot;->layout(Lcom/androidplot/util/DisplayDimensions;)V

    .line 806
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 807
    iget-object p1, p0, Lcom/androidplot/Plot;->renderThread:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_2

    .line 808
    iget-object p1, p0, Lcom/androidplot/Plot;->renderThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract processAttrs(Landroid/content/res/TypedArray;)V
.end method

.method public redraw()V
    .locals 3

    .line 742
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_0

    .line 747
    iget-boolean v0, p0, Lcom/androidplot/Plot;->isIdle:Z

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/androidplot/Plot;->renderSync:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/androidplot/Plot;->renderSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 750
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    sget-object v1, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    if-ne v0, v1, :cond_3

    .line 755
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 756
    invoke-virtual {p0}, Lcom/androidplot/Plot;->invalidate()V

    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {p0}, Lcom/androidplot/Plot;->postInvalidate()V

    :cond_2
    :goto_0
    return-void

    .line 761
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Render Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/androidplot/PlotListener;)Z
    .locals 1

    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/Plot;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSeries(Lcom/androidplot/Series;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;)V"
        }
    .end annotation

    monitor-enter p0

    .line 691
    :try_start_0
    instance-of v0, p1, Lcom/androidplot/PlotListener;

    if-eqz v0, :cond_0

    .line 692
    move-object v0, p1

    check-cast v0, Lcom/androidplot/PlotListener;

    invoke-virtual {p0, v0}, Lcom/androidplot/Plot;->removeListener(Lcom/androidplot/PlotListener;)Z

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/SeriesRegistry;->remove(Lcom/androidplot/Series;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSeries(Lcom/androidplot/Series;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;",
            "Ljava/lang/Class<",
            "+TRendererType;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 675
    :try_start_0
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getRegistry()Lcom/androidplot/SeriesRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/SeriesRegistry;->remove(Lcom/androidplot/Series;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 678
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    instance-of p2, p1, Lcom/androidplot/PlotListener;

    if-eqz p2, :cond_0

    .line 679
    check-cast p1, Lcom/androidplot/PlotListener;

    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->removeListener(Lcom/androidplot/PlotListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    monitor-exit p0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 682
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized renderOnCanvas(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 842
    monitor-exit p0

    return-void

    .line 848
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->notifyListenersBeforeDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 853
    :try_start_1
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 854
    iget-object v0, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/Plot;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/LayoutManager;->draw(Landroid/graphics/Canvas;)V

    .line 860
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getBorderPaint()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 861
    iget-object v0, p0, Lcom/androidplot/Plot;->displayDims:Lcom/androidplot/util/DisplayDimensions;

    iget-object v0, v0, Lcom/androidplot/util/DisplayDimensions;->marginatedRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/androidplot/Plot;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 864
    :try_start_2
    sget-object v1, Lcom/androidplot/Plot;->TAG:Ljava/lang/String;

    const-string v2, "Exception while rendering Plot."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 867
    iput-boolean v0, p0, Lcom/androidplot/Plot;->isIdle:Z

    .line 871
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->notifyListenersAfterDraw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 874
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBackgroundPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/androidplot/Plot;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setBorderPaint(Landroid/graphics/Paint;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1038
    iput-object p1, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1040
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/androidplot/Plot;->borderPaint:Landroid/graphics/Paint;

    .line 1041
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method public setBorderStyle(Lcom/androidplot/Plot$BorderStyle;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1

    .line 884
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->ROUNDED:Lcom/androidplot/Plot$BorderStyle;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 888
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/androidplot/Plot;->borderRadiusX:F

    .line 889
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lcom/androidplot/Plot;->borderRadiusY:F

    goto :goto_0

    .line 886
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "radiusX and radiusY cannot be null when using BorderStyle.ROUNDED"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 891
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/androidplot/Plot;->borderStyle:Lcom/androidplot/Plot$BorderStyle;

    return-void
.end method

.method public setLayoutManager(Lcom/androidplot/ui/LayoutManager;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    return-void
.end method

.method public setMarkupEnabled(Z)V
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/androidplot/Plot;->layoutManager:Lcom/androidplot/ui/LayoutManager;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/LayoutManager;->setMarkupEnabled(Z)V

    return-void
.end method

.method public setPlotMarginBottom(F)V
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginBottom(F)V

    return-void
.end method

.method public setPlotMarginLeft(F)V
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginLeft(F)V

    return-void
.end method

.method public setPlotMarginRight(F)V
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginRight(F)V

    return-void
.end method

.method public setPlotMarginTop(F)V
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setMarginTop(F)V

    return-void
.end method

.method public setPlotMargins(FFFF)V
    .locals 0

    .line 942
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->setPlotMarginLeft(F)V

    .line 943
    invoke-virtual {p0, p2}, Lcom/androidplot/Plot;->setPlotMarginTop(F)V

    .line 944
    invoke-virtual {p0, p3}, Lcom/androidplot/Plot;->setPlotMarginRight(F)V

    .line 945
    invoke-virtual {p0, p4}, Lcom/androidplot/Plot;->setPlotMarginBottom(F)V

    return-void
.end method

.method public setPlotPadding(FFFF)V
    .locals 0

    .line 956
    invoke-virtual {p0, p1}, Lcom/androidplot/Plot;->setPlotPaddingLeft(F)V

    .line 957
    invoke-virtual {p0, p2}, Lcom/androidplot/Plot;->setPlotPaddingTop(F)V

    .line 958
    invoke-virtual {p0, p3}, Lcom/androidplot/Plot;->setPlotPaddingRight(F)V

    .line 959
    invoke-virtual {p0, p4}, Lcom/androidplot/Plot;->setPlotPaddingBottom(F)V

    return-void
.end method

.method public setPlotPaddingBottom(F)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingBottom(F)V

    return-void
.end method

.method public setPlotPaddingLeft(F)V
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingLeft(F)V

    return-void
.end method

.method public setPlotPaddingRight(F)V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingRight(F)V

    return-void
.end method

.method public setPlotPaddingTop(F)V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/androidplot/Plot;->boxModel:Lcom/androidplot/ui/BoxModel;

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/BoxModel;->setPaddingTop(F)V

    return-void
.end method

.method public setRegistry(Lcom/androidplot/SeriesRegistry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRegistryType;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/androidplot/Plot;->registry:Lcom/androidplot/SeriesRegistry;

    .line 92
    invoke-virtual {p1}, Lcom/androidplot/SeriesRegistry;->getSeriesAndFormatterList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/ui/SeriesBundle;

    .line 93
    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getSeries()Lcom/androidplot/Series;

    move-result-object v1

    invoke-virtual {v0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/androidplot/Plot;->attachSeries(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRenderMode(Lcom/androidplot/Plot$RenderMode;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/androidplot/Plot;->renderMode:Lcom/androidplot/Plot$RenderMode;

    return-void
.end method

.method public setTitle(Lcom/androidplot/ui/widget/TextLabelWidget;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/androidplot/Plot;->title:Lcom/androidplot/ui/widget/TextLabelWidget;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/androidplot/Plot;->getTitle()Lcom/androidplot/ui/widget/TextLabelWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidplot/ui/widget/TextLabelWidget;->setText(Ljava/lang/String;)V

    return-void
.end method
