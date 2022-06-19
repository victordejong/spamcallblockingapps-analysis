.class Landroidx/appcompat/b/a/b;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/b/a/b$a;,
        Landroidx/appcompat/b/a/b$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/b/a/b$b;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:J

.field private l:J

.field private m:Landroidx/appcompat/b/a/b$a;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Landroidx/appcompat/b/a/b;->e:I

    .line 74
    iput v1, p0, Landroidx/appcompat/b/a/b;->g:I

    .line 75
    iput v1, p0, Landroidx/appcompat/b/a/b;->h:I

    return-void
.end method

.method static a(Landroid/content/res/Resources;I)I
    .locals 1

    .prologue
    .line 1204
    if-nez p0, :cond_1

    move v0, p1

    .line 1205
    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0xa0

    :cond_0
    return v0

    .line 1204
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Landroidx/appcompat/b/a/b$a;

    invoke-direct {v0}, Landroidx/appcompat/b/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    .line 497
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/b/a/b$a;->a(Landroid/graphics/drawable/Drawable$Callback;)Landroidx/appcompat/b/a/b$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 499
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v0, v0, Landroidx/appcompat/b/a/b$b;->C:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/b/a/b;->f:Z

    if-eqz v0, :cond_1

    .line 500
    iget v0, p0, Landroidx/appcompat/b/a/b;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 502
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->G:Z

    if-eqz v0, :cond_6

    .line 504
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 513
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 514
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->z:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 515
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 516
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 517
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 519
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 521
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 522
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->E:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 524
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->b:Landroid/graphics/Rect;

    .line 525
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    if-eqz v0, :cond_5

    .line 526
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 532
    return-void

    .line 506
    :cond_6
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->J:Z

    if-eqz v0, :cond_7

    .line 507
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 509
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->K:Z

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/b/a/b;->m:Landroidx/appcompat/b/a/b$a;

    invoke-virtual {v1}, Landroidx/appcompat/b/a/b$a;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 531
    throw v0
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 102
    :goto_0
    return v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/b/a/b$b;->a(Landroid/content/res/Resources;)V

    .line 590
    return-void
.end method

.method a(Landroidx/appcompat/b/a/b$b;)V
    .locals 1

    .prologue
    .line 1152
    iput-object p1, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 1154
    iget v0, p0, Landroidx/appcompat/b/a/b;->g:I

    if-ltz v0, :cond_0

    .line 1155
    iget v0, p0, Landroidx/appcompat/b/a/b;->g:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/b/a/b$b;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    .line 1156
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/b/a/b;->h:I

    .line 1163
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 1164
    return-void
.end method

.method a(Z)V
    .locals 12

    .prologue
    const-wide/16 v10, 0xff

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 535
    iput-boolean v2, p0, Landroidx/appcompat/b/a/b;->f:Z

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 538
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 539
    iget-wide v6, p0, Landroidx/appcompat/b/a/b;->k:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    .line 540
    iget-wide v6, p0, Landroidx/appcompat/b/a/b;->k:J

    cmp-long v0, v6, v4

    if-gtz v0, :cond_2

    .line 541
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/b/a/b;->e:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 542
    iput-wide v8, p0, Landroidx/appcompat/b/a/b;->k:J

    move v0, v1

    .line 553
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 554
    iget-wide v6, p0, Landroidx/appcompat/b/a/b;->l:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    .line 555
    iget-wide v6, p0, Landroidx/appcompat/b/a/b;->l:J

    cmp-long v3, v6, v4

    if-gtz v3, :cond_5

    .line 556
    iget-object v2, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 557
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 558
    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/b/a/b;->h:I

    .line 559
    iput-wide v8, p0, Landroidx/appcompat/b/a/b;->l:J

    .line 570
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Landroidx/appcompat/b/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 573
    :cond_1
    return-void

    .line 544
    :cond_2
    iget-wide v6, p0, Landroidx/appcompat/b/a/b;->k:J

    sub-long/2addr v6, v4

    mul-long/2addr v6, v10

    long-to-int v0, v6

    iget-object v3, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v3, v3, Landroidx/appcompat/b/a/b$b;->C:I

    div-int/2addr v0, v3

    .line 546
    iget-object v3, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    rsub-int v0, v0, 0xff

    iget v6, p0, Landroidx/appcompat/b/a/b;->e:I

    mul-int/2addr v0, v6

    div-int/lit16 v0, v0, 0xff

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v0, v2

    .line 548
    goto :goto_0

    .line 551
    :cond_3
    iput-wide v8, p0, Landroidx/appcompat/b/a/b;->k:J

    :cond_4
    move v0, v1

    goto :goto_0

    .line 561
    :cond_5
    iget-wide v0, p0, Landroidx/appcompat/b/a/b;->l:J

    sub-long/2addr v0, v4

    mul-long/2addr v0, v10

    long-to-int v0, v0

    iget-object v1, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v1, v1, Landroidx/appcompat/b/a/b$b;->D:I

    div-int/2addr v0, v1

    .line 563
    iget-object v1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/b/a/b;->e:I

    mul-int/2addr v0, v3

    div-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v0, v2

    .line 565
    goto :goto_1

    .line 568
    :cond_6
    iput-wide v8, p0, Landroidx/appcompat/b/a/b;->l:J

    goto :goto_1
.end method

.method a(I)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 427
    iget v2, p0, Landroidx/appcompat/b/a/b;->g:I

    if-ne p1, v2, :cond_0

    .line 482
    :goto_0
    return v0

    .line 430
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 436
    iget-object v4, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v4, v4, Landroidx/appcompat/b/a/b$b;->D:I

    if-lez v4, :cond_8

    .line 437
    iget-object v4, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 438
    iget-object v4, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 440
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 441
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 442
    iget v0, p0, Landroidx/appcompat/b/a/b;->g:I

    iput v0, p0, Landroidx/appcompat/b/a/b;->h:I

    .line 443
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v0, v0, Landroidx/appcompat/b/a/b$b;->D:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroidx/appcompat/b/a/b;->l:J

    .line 452
    :cond_2
    :goto_1
    if-ltz p1, :cond_9

    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v0, v0, Landroidx/appcompat/b/a/b$b;->j:I

    if-ge p1, v0, :cond_9

    .line 453
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/b/a/b$b;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 454
    iput-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    .line 455
    iput p1, p0, Landroidx/appcompat/b/a/b;->g:I

    .line 456
    if-eqz v0, :cond_4

    .line 457
    iget-object v4, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v4, v4, Landroidx/appcompat/b/a/b$b;->C:I

    if-lez v4, :cond_3

    .line 458
    iget-object v4, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget v4, v4, Landroidx/appcompat/b/a/b$b;->C:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/appcompat/b/a/b;->k:J

    .line 460
    :cond_3
    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 466
    :cond_4
    :goto_2
    iget-wide v2, p0, Landroidx/appcompat/b/a/b;->k:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_5

    iget-wide v2, p0, Landroidx/appcompat/b/a/b;->l:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_6

    .line 467
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_a

    .line 468
    new-instance v0, Landroidx/appcompat/b/a/b$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/b/a/b$1;-><init>(Landroidx/appcompat/b/a/b;)V

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->j:Ljava/lang/Runnable;

    .line 479
    :goto_3
    invoke-virtual {p0, v1}, Landroidx/appcompat/b/a/b;->a(Z)V

    .line 481
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->invalidateSelf()V

    move v0, v1

    .line 482
    goto :goto_0

    .line 445
    :cond_7
    iput-object v9, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 446
    iput v8, p0, Landroidx/appcompat/b/a/b;->h:I

    .line 447
    iput-wide v6, p0, Landroidx/appcompat/b/a/b;->l:J

    goto :goto_1

    .line 449
    :cond_8
    iget-object v4, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 450
    iget-object v4, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 463
    :cond_9
    iput-object v9, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    .line 464
    iput v8, p0, Landroidx/appcompat/b/a/b;->g:I

    goto :goto_2

    .line 476
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0, p1}, Landroidx/appcompat/b/a/b$b;->a(Landroid/content/res/Resources$Theme;)V

    .line 596
    return-void
.end method

.method c()Landroidx/appcompat/b/a/b$b;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    return-object v0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Landroidx/appcompat/b/a/b;->g:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Landroidx/appcompat/b/a/b;->e:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 98
    invoke-virtual {v1}, Landroidx/appcompat/b/a/b$b;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    .line 97
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/b/a/b$b;->f:I

    .line 608
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 610
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->b:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->h()I

    move-result v0

    .line 345
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->g()I

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->j()I

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->i()I

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    .line 406
    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->l()I

    move-result v0

    goto :goto_0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 135
    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 120
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/b/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 122
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 123
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 124
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 126
    :cond_0
    return v0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 117
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->b()V

    .line 372
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->E:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->m()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    .line 249
    const/4 v0, 0x0

    .line 250
    iget-object v2, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 251
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/b/a/b;->h:I

    move v0, v1

    .line 256
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 258
    iget-boolean v2, p0, Landroidx/appcompat/b/a/b;->f:Z

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/b/a/b;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 262
    :cond_1
    iget-wide v2, p0, Landroidx/appcompat/b/a/b;->l:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 263
    iput-wide v4, p0, Landroidx/appcompat/b/a/b;->l:J

    move v0, v1

    .line 266
    :cond_2
    iget-wide v2, p0, Landroidx/appcompat/b/a/b;->k:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 267
    iput-wide v4, p0, Landroidx/appcompat/b/a/b;->k:J

    .line 270
    :goto_0
    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->invalidateSelf()V

    .line 273
    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 617
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->c()Landroidx/appcompat/b/a/b$b;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroidx/appcompat/b/a/b$b;->a()V

    .line 619
    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/b;->a(Landroidx/appcompat/b/a/b$b;)V

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b;->i:Z

    .line 622
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 224
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->d()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/b/a/b$b;->d(II)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 322
    :goto_0
    return v0

    .line 319
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    goto :goto_0

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 311
    :goto_0
    return v0

    .line 308
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 382
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 139
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/b/a/b;->e:I

    if-eq v0, p1, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b;->f:Z

    .line 141
    iput p1, p0, Landroidx/appcompat/b/a/b;->e:I

    .line 142
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 143
    iget-wide v0, p0, Landroidx/appcompat/b/a/b;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/b;->a(Z)V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->E:Z

    if-eq v0, p1, :cond_0

    .line 234
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-boolean p1, v0, Landroidx/appcompat/b/a/b$b;->E:Z

    .line 235
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v1, v1, Landroidx/appcompat/b/a/b$b;->E:Z

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/b/a/b$b;->G:Z

    .line 170
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 171
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-object p1, v0, Landroidx/appcompat/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    .line 172
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 176
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v0, v0, Landroidx/appcompat/b/a/b$b;->z:Z

    if-eq v0, p1, :cond_0

    .line 160
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-boolean p1, v0, Landroidx/appcompat/b/a/b$b;->z:Z

    .line 161
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-boolean v1, v1, Landroidx/appcompat/b/a/b$b;->z:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 280
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/appcompat/b/a/b;->b:Landroid/graphics/Rect;

    .line 289
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 292
    :cond_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/b/a/b$b;->J:Z

    .line 181
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 182
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-object p1, v0, Landroidx/appcompat/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    .line 183
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/b/a/b$b;->K:Z

    .line 190
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iget-object v0, v0, Landroidx/appcompat/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 191
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->a:Landroidx/appcompat/b/a/b$b;

    iput-object p1, v0, Landroidx/appcompat/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    .line 192
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 394
    iget-object v1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Landroidx/appcompat/b/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 397
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 400
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroidx/appcompat/b/a/b;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 389
    :cond_0
    return-void
.end method
