.class public abstract Landroidx/core/widget/a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/a$a;,
        Landroidx/core/widget/a$b;
    }
.end annotation


# static fields
.field private static final r:I


# instance fields
.field final a:Landroidx/core/widget/a$a;

.field final b:Landroid/view/View;

.field c:Z

.field d:Z

.field e:Z

.field private final f:Landroid/view/animation/Interpolator;

.field private g:Ljava/lang/Runnable;

.field private h:[F

.field private i:[F

.field private j:I

.field private k:I

.field private l:[F

.field private m:[F

.field private n:[F

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/a;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroidx/core/widget/a$a;

    invoke-direct {v0}, Landroidx/core/widget/a$a;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 141
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/a;->f:Landroid/view/animation/Interpolator;

    .line 150
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroidx/core/widget/a;->h:[F

    .line 153
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroidx/core/widget/a;->i:[F

    .line 162
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroidx/core/widget/a;->l:[F

    .line 165
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroidx/core/widget/a;->m:[F

    .line 168
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroidx/core/widget/a;->n:[F

    .line 211
    iput-object p1, p0, Landroidx/core/widget/a;->b:Landroid/view/View;

    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 214
    const v1, 0x44c4e000    # 1575.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 215
    const v2, 0x439d8000    # 315.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 216
    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Landroidx/core/widget/a;->a(FF)Landroidx/core/widget/a;

    .line 217
    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroidx/core/widget/a;->b(FF)Landroidx/core/widget/a;

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/core/widget/a;->a(I)Landroidx/core/widget/a;

    .line 220
    invoke-virtual {p0, v6, v6}, Landroidx/core/widget/a;->e(FF)Landroidx/core/widget/a;

    .line 221
    invoke-virtual {p0, v3, v3}, Landroidx/core/widget/a;->d(FF)Landroidx/core/widget/a;

    .line 222
    invoke-virtual {p0, v5, v5}, Landroidx/core/widget/a;->c(FF)Landroidx/core/widget/a;

    .line 223
    sget v0, Landroidx/core/widget/a;->r:I

    invoke-virtual {p0, v0}, Landroidx/core/widget/a;->b(I)Landroidx/core/widget/a;

    .line 224
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroidx/core/widget/a;->c(I)Landroidx/core/widget/a;

    .line 225
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroidx/core/widget/a;->d(I)Landroidx/core/widget/a;

    .line 226
    return-void

    .line 150
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 153
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 162
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 165
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 168
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method static a(FFF)F
    .locals 1

    .prologue
    .line 673
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 678
    :goto_0
    return p2

    .line 675
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 676
    goto :goto_0

    :cond_1
    move p2, p0

    .line 678
    goto :goto_0
.end method

.method private a(FFFF)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 617
    mul-float v1, p1, p2

    invoke-static {v1, v0, p3}, Landroidx/core/widget/a;->a(FFF)F

    move-result v1

    .line 618
    invoke-direct {p0, p4, v1}, Landroidx/core/widget/a;->f(FF)F

    move-result v2

    .line 619
    sub-float v3, p2, p4

    invoke-direct {p0, v3, v1}, Landroidx/core/widget/a;->f(FF)F

    move-result v1

    .line 620
    sub-float/2addr v1, v2

    .line 622
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 623
    iget-object v0, p0, Landroidx/core/widget/a;->f:Landroid/view/animation/Interpolator;

    neg-float v1, v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    neg-float v0, v0

    .line 630
    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroidx/core/widget/a;->a(FFF)F

    move-result v0

    :cond_0
    return v0

    .line 624
    :cond_1
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 625
    iget-object v0, p0, Landroidx/core/widget/a;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method

.method private a(IFFF)F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 549
    iget-object v1, p0, Landroidx/core/widget/a;->h:[F

    aget v1, v1, p1

    .line 550
    iget-object v2, p0, Landroidx/core/widget/a;->i:[F

    aget v2, v2, p1

    .line 551
    invoke-direct {p0, v1, p3, v2, p2}, Landroidx/core/widget/a;->a(FFFF)F

    move-result v1

    .line 552
    cmpl-float v2, v1, v0

    if-nez v2, :cond_0

    .line 568
    :goto_0
    return v0

    .line 557
    :cond_0
    iget-object v2, p0, Landroidx/core/widget/a;->l:[F

    aget v2, v2, p1

    .line 558
    iget-object v3, p0, Landroidx/core/widget/a;->m:[F

    aget v3, v3, p1

    .line 559
    iget-object v4, p0, Landroidx/core/widget/a;->n:[F

    aget v4, v4, p1

    .line 560
    mul-float/2addr v2, p4

    .line 565
    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 566
    mul-float v0, v1, v2

    invoke-static {v0, v3, v4}, Landroidx/core/widget/a;->a(FFF)F

    move-result v0

    goto :goto_0

    .line 568
    :cond_1
    neg-float v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0, v3, v4}, Landroidx/core/widget/a;->a(FFF)F

    move-result v0

    neg-float v0, v0

    goto :goto_0
.end method

.method static a(III)I
    .locals 0

    .prologue
    .line 663
    if-le p0, p2, :cond_0

    .line 668
    :goto_0
    return p2

    .line 665
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 666
    goto :goto_0

    :cond_1
    move p2, p0

    .line 668
    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 514
    iget-object v0, p0, Landroidx/core/widget/a;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Landroidx/core/widget/a$b;

    invoke-direct {v0, p0}, Landroidx/core/widget/a$b;-><init>(Landroidx/core/widget/a;)V

    iput-object v0, p0, Landroidx/core/widget/a;->g:Ljava/lang/Runnable;

    .line 518
    :cond_0
    iput-boolean v4, p0, Landroidx/core/widget/a;->e:Z

    .line 519
    iput-boolean v4, p0, Landroidx/core/widget/a;->c:Z

    .line 521
    iget-boolean v0, p0, Landroidx/core/widget/a;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/core/widget/a;->k:I

    if-lez v0, :cond_1

    .line 522
    iget-object v0, p0, Landroidx/core/widget/a;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/widget/a;->g:Ljava/lang/Runnable;

    iget v2, p0, Landroidx/core/widget/a;->k:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroidx/core/h/u;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 529
    :goto_0
    iput-boolean v4, p0, Landroidx/core/widget/a;->o:Z

    .line 530
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Landroidx/core/widget/a;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Landroidx/core/widget/a;->c:Z

    if-eqz v0, :cond_0

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/a;->e:Z

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    invoke-virtual {v0}, Landroidx/core/widget/a$a;->b()V

    goto :goto_0
.end method

.method private f(FF)F
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 634
    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    iget v2, p0, Landroidx/core/widget/a;->j:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 641
    :pswitch_0
    cmpg-float v2, p1, p2

    if-gez v2, :cond_0

    .line 642
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    .line 644
    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_0

    .line 645
    :cond_2
    iget-boolean v2, p0, Landroidx/core/widget/a;->e:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/core/widget/a;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 647
    goto :goto_0

    .line 652
    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 654
    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_0

    .line 638
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(FF)Landroidx/core/widget/a;
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 296
    iget-object v0, p0, Landroidx/core/widget/a;->n:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 297
    iget-object v0, p0, Landroidx/core/widget/a;->n:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 298
    return-object p0
.end method

.method public a(I)Landroidx/core/widget/a;
    .locals 0

    .prologue
    .line 359
    iput p1, p0, Landroidx/core/widget/a;->j:I

    .line 360
    return-object p0
.end method

.method public a(Z)Landroidx/core/widget/a;
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Landroidx/core/widget/a;->p:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 237
    invoke-direct {p0}, Landroidx/core/widget/a;->d()V

    .line 240
    :cond_0
    iput-boolean p1, p0, Landroidx/core/widget/a;->p:Z

    .line 241
    return-object p0
.end method

.method public abstract a(II)V
.end method

.method a()Z
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    .line 503
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->f()I

    move-result v1

    .line 504
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->e()I

    move-result v0

    .line 506
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/core/widget/a;->f(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p0, v0}, Landroidx/core/widget/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    .line 507
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(FF)Landroidx/core/widget/a;
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 315
    iget-object v0, p0, Landroidx/core/widget/a;->m:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 316
    iget-object v0, p0, Landroidx/core/widget/a;->m:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 317
    return-object p0
.end method

.method public b(I)Landroidx/core/widget/a;
    .locals 0

    .prologue
    .line 420
    iput p1, p0, Landroidx/core/widget/a;->k:I

    .line 421
    return-object p0
.end method

.method b()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 688
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 690
    iget-object v1, p0, Landroidx/core/widget/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 691
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 692
    return-void
.end method

.method public c(FF)Landroidx/core/widget/a;
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 337
    iget-object v0, p0, Landroidx/core/widget/a;->l:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 338
    iget-object v0, p0, Landroidx/core/widget/a;->l:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 339
    return-object p0
.end method

.method public c(I)Landroidx/core/widget/a;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    invoke-virtual {v0, p1}, Landroidx/core/widget/a$a;->a(I)V

    .line 437
    return-object p0
.end method

.method public d(FF)Landroidx/core/widget/a;
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Landroidx/core/widget/a;->h:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 380
    iget-object v0, p0, Landroidx/core/widget/a;->h:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 381
    return-object p0
.end method

.method public d(I)Landroidx/core/widget/a;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    invoke-virtual {v0, p1}, Landroidx/core/widget/a$a;->b(I)V

    .line 453
    return-object p0
.end method

.method public e(FF)Landroidx/core/widget/a;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Landroidx/core/widget/a;->i:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 403
    iget-object v0, p0, Landroidx/core/widget/a;->i:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 404
    return-object p0
.end method

.method public abstract e(I)Z
.end method

.method public abstract f(I)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 466
    iget-boolean v2, p0, Landroidx/core/widget/a;->p:Z

    if-nez v2, :cond_0

    .line 495
    :goto_0
    return v1

    .line 470
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 471
    packed-switch v2, :pswitch_data_0

    .line 495
    :cond_1
    :goto_1
    iget-boolean v2, p0, Landroidx/core/widget/a;->q:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/core/widget/a;->e:Z

    if-eqz v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    .line 473
    :pswitch_0
    iput-boolean v0, p0, Landroidx/core/widget/a;->d:Z

    .line 474
    iput-boolean v1, p0, Landroidx/core/widget/a;->o:Z

    .line 478
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/core/widget/a;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 477
    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/core/widget/a;->a(IFFF)F

    move-result v2

    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/core/widget/a;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 479
    invoke-direct {p0, v0, v3, v4, v5}, Landroidx/core/widget/a;->a(IFFF)F

    move-result v3

    .line 481
    iget-object v4, p0, Landroidx/core/widget/a;->a:Landroidx/core/widget/a$a;

    invoke-virtual {v4, v2, v3}, Landroidx/core/widget/a$a;->a(FF)V

    .line 485
    iget-boolean v2, p0, Landroidx/core/widget/a;->e:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/core/widget/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 486
    invoke-direct {p0}, Landroidx/core/widget/a;->c()V

    goto :goto_1

    .line 491
    :pswitch_2
    invoke-direct {p0}, Landroidx/core/widget/a;->d()V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 495
    goto :goto_2

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
