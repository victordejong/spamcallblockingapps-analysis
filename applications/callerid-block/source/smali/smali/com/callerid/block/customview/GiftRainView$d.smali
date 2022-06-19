.class public Lcom/callerid/block/customview/GiftRainView$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/customview/GiftRainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:I

.field private j:Ljava/util/Random;

.field final synthetic k:Lcom/callerid/block/customview/GiftRainView;


# direct methods
.method public constructor <init>(Lcom/callerid/block/customview/GiftRainView;FLandroid/graphics/Bitmap;I)V
    .locals 4

    iput-object p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/customview/GiftRainView$d;->j:Ljava/util/Random;

    invoke-static {p1}, Lcom/callerid/block/customview/GiftRainView;->a(Lcom/callerid/block/customview/GiftRainView;)F

    move-result p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {p1}, Lcom/callerid/block/customview/GiftRainView;->b(Lcom/callerid/block/customview/GiftRainView;)F

    move-result v2

    invoke-static {p1}, Lcom/callerid/block/customview/GiftRainView;->a(Lcom/callerid/block/customview/GiftRainView;)F

    move-result p1

    sub-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/callerid/block/customview/GiftRainView$d;->f:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int p1, v0

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->g:I

    iget p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->f:I

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/GiftRainView$d;->n(I)F

    move-result p1

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->a:F

    iget p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->g:I

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/GiftRainView$d;->o(I)F

    move-result p1

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->b:F

    int-to-float p1, p4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    double-to-float p2, p2

    const p3, 0x44098000    # 550.0f

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->e:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x42b40000    # 90.0f

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->c:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p3

    double-to-float p1, p3

    mul-float p1, p1, p2

    const/high16 p2, 0x42340000    # 45.0f

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->d:F

    invoke-virtual {p0}, Lcom/callerid/block/customview/GiftRainView$d;->m()I

    move-result p1

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->i:I

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/customview/GiftRainView$d;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/customview/GiftRainView$d;->h:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lcom/callerid/block/customview/GiftRainView$d;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic c(Lcom/callerid/block/customview/GiftRainView$d;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView$d;->f:I

    return p0
.end method

.method static synthetic d(Lcom/callerid/block/customview/GiftRainView$d;)F
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView$d;->a:F

    return p0
.end method

.method static synthetic e(Lcom/callerid/block/customview/GiftRainView$d;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView$d;->i:I

    return p0
.end method

.method static synthetic f(Lcom/callerid/block/customview/GiftRainView$d;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView$d;->g:I

    return p0
.end method

.method static synthetic g(Lcom/callerid/block/customview/GiftRainView$d;)F
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView$d;->b:F

    return p0
.end method

.method static synthetic h(Lcom/callerid/block/customview/GiftRainView$d;F)F
    .locals 0

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->b:F

    return p1
.end method

.method static synthetic i(Lcom/callerid/block/customview/GiftRainView$d;)F
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView$d;->e:F

    return p0
.end method

.method static synthetic j(Lcom/callerid/block/customview/GiftRainView$d;)F
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView$d;->c:F

    return p0
.end method

.method static synthetic k(Lcom/callerid/block/customview/GiftRainView$d;F)F
    .locals 0

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->c:F

    return p1
.end method

.method static synthetic l(Lcom/callerid/block/customview/GiftRainView$d;)F
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/GiftRainView$d;->d:F

    return p0
.end method

.method private n(I)F
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView$d;->j:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    add-int/lit8 v1, v1, -0xf

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float v0, v0, p1

    const/high16 p1, 0x41700000    # 15.0f

    add-float/2addr v0, p1

    return v0
.end method

.method private o(I)F
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/customview/GiftRainView$d;->j:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float v0, v0, p1

    const/high16 p1, 0x41700000    # 15.0f

    add-float/2addr v0, p1

    const/4 p1, 0x0

    sub-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public m()I
    .locals 4

    const/16 v0, 0x17

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x6

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x7

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x8

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x9

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0xa

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0xb

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0xc

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0xd

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0xe

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0xf

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x10

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x11

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x12

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x13

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x14

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x15

    aput v2, v1, v3

    iget-object v2, p0, Lcom/callerid/block/customview/GiftRainView$d;->k:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0x16

    aput v2, v1, v3

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget v0, v1, v0

    return v0
.end method

.method public p(F)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/customview/GiftRainView$d;->e:F

    return-void
.end method
