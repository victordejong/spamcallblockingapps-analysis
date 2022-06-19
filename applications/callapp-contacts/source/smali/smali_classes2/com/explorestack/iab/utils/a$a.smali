.class final Lcom/explorestack/iab/utils/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/Paint;

.field final e:Landroid/graphics/Paint;

.field f:F

.field g:F

.field h:F

.field i:F

.field j:[I

.field k:I

.field l:F

.field m:F

.field n:F

.field o:F

.field p:I

.field q:I


# direct methods
.method constructor <init>()V
    .locals 6

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/utils/a$a;->a:Landroid/graphics/RectF;

    .line 279
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/utils/a$a;->b:Landroid/graphics/Paint;

    .line 280
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/explorestack/iab/utils/a$a;->c:Landroid/graphics/Paint;

    .line 281
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/explorestack/iab/utils/a$a;->d:Landroid/graphics/Paint;

    .line 282
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/explorestack/iab/utils/a$a;->e:Landroid/graphics/Paint;

    const/4 v4, 0x0

    .line 283
    iput v4, p0, Lcom/explorestack/iab/utils/a$a;->f:F

    .line 284
    iput v4, p0, Lcom/explorestack/iab/utils/a$a;->g:F

    .line 285
    iput v4, p0, Lcom/explorestack/iab/utils/a$a;->h:F

    const/high16 v4, 0x40a00000    # 5.0f

    .line 286
    iput v4, p0, Lcom/explorestack/iab/utils/a$a;->i:F

    const/16 v4, 0xff

    .line 293
    iput v4, p0, Lcom/explorestack/iab/utils/a$a;->p:I

    .line 297
    sget-object v4, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v4, 0x1

    .line 298
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 301
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    .line 302
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .line 356
    iget v0, p0, Lcom/explorestack/iab/utils/a$a;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/explorestack/iab/utils/a$a;->j:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method final a(F)V
    .locals 1

    .line 376
    iput p1, p0, Lcom/explorestack/iab/utils/a$a;->i:F

    .line 377
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method final a(I)V
    .locals 1

    .line 347
    iput p1, p0, Lcom/explorestack/iab/utils/a$a;->k:I

    .line 348
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$a;->j:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/explorestack/iab/utils/a$a;->q:I

    return-void
.end method

.method final a(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method final a([I)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/explorestack/iab/utils/a$a;->j:[I

    const/4 p1, 0x0

    .line 331
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/a$a;->a(I)V

    return-void
.end method

.method final b()I
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/explorestack/iab/utils/a$a;->j:[I

    iget v1, p0, Lcom/explorestack/iab/utils/a$a;->k:I

    aget v0, v0, v1

    return v0
.end method

.method final c()V
    .locals 1

    .line 421
    iget v0, p0, Lcom/explorestack/iab/utils/a$a;->f:F

    iput v0, p0, Lcom/explorestack/iab/utils/a$a;->l:F

    .line 422
    iget v0, p0, Lcom/explorestack/iab/utils/a$a;->g:F

    iput v0, p0, Lcom/explorestack/iab/utils/a$a;->m:F

    .line 423
    iget v0, p0, Lcom/explorestack/iab/utils/a$a;->h:F

    iput v0, p0, Lcom/explorestack/iab/utils/a$a;->n:F

    return-void
.end method

.method final d()V
    .locals 1

    const/4 v0, 0x0

    .line 427
    iput v0, p0, Lcom/explorestack/iab/utils/a$a;->l:F

    .line 428
    iput v0, p0, Lcom/explorestack/iab/utils/a$a;->m:F

    .line 429
    iput v0, p0, Lcom/explorestack/iab/utils/a$a;->n:F

    .line 1381
    iput v0, p0, Lcom/explorestack/iab/utils/a$a;->f:F

    .line 1401
    iput v0, p0, Lcom/explorestack/iab/utils/a$a;->g:F

    .line 1409
    iput v0, p0, Lcom/explorestack/iab/utils/a$a;->h:F

    return-void
.end method
