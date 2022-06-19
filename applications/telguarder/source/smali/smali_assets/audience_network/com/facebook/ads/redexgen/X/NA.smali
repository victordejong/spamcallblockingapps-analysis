.class public final Lcom/facebook/ads/redexgen/X/NA;
.super Landroid/widget/ProgressBar;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;

.field public static final A03:I

.field public static final A04:I


# instance fields
.field public A00:Landroid/graphics/Paint;

.field public A01:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 44725
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NA;->A02()V

    const/4 v1, 0x0

    const/16 v0, 0x1a

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/NA;->A03:I

    .line 44726
    const/16 v2, 0x58

    const/16 v1, 0x90

    const/16 v0, 0xff

    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/NA;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44727
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44728
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NA;->A01()V

    .line 44729
    return-void
.end method

.method private A00()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 44730
    const/4 v5, 0x0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 44731
    .local p0, "backgroundDrawable":Landroid/graphics/drawable/ColorDrawable;
    sget v0, Lcom/facebook/ads/redexgen/X/NA;->A04:I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 44732
    .local v4, "progressDrawable":Landroid/graphics/drawable/ColorDrawable;
    const/4 v3, 0x1

    const/4 v0, 0x3

    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 44733
    .local v0, "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v1, v5

    aput-object v2, v1, v3

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private A01()V
    .locals 2

    .line 44734
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NA;->setIndeterminate(Z)V

    .line 44735
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NA;->setMax(I)V

    .line 44736
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NA;->A00()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/NA;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44737
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NA;->A01:Landroid/graphics/Rect;

    .line 44738
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NA;->A00:Landroid/graphics/Paint;

    .line 44739
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NA;->A00:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44740
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NA;->A00:Landroid/graphics/Paint;

    sget v0, Lcom/facebook/ads/redexgen/X/NA;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44741
    return-void
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7JUNsQYowHnBipYYuWlMOk3HGT65qSue"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3t0anx1nMNUL8LQDSzNKoQYjqitYw5TP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jbfQaJYEV5EZRv2l6xR2FYbt2Q6wki98"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cI1MwC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "g19zD5w214FZO0UqtwKWkR7p5v6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jswsyQscItNLrckVV8iBdMhRHT0C5LoS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GTsp5avGnZd9if6UCCIQZZDTAHvBfQfP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "E9DC8wKUB0hhgoC9r9C6INHIOpcZy7OP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NA;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 44742
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NA;->A01:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NA;->A00:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 44743
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44744
    monitor-exit p0

    return-void

    .line 44745
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 4

    monitor-enter p0

    .line 44746
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 44747
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NA;->A01:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NA;->getMeasuredWidth()I

    move-result v2

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v2, v1}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44748
    monitor-exit p0

    return-void

    .line 44749
    .end local v2
    .end local v1
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 3

    monitor-enter p0

    .line 44750
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44751
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/NA;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/NA;->A02:[Ljava/lang/String;

    const-string v1, "cd3wNMkUlpuZSKOVfRMaOWJoeu24O697"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    .line 44752
    .end local p1    # null:I
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
