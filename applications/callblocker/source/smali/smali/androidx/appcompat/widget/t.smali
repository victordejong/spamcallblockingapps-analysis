.class Landroidx/appcompat/widget/t;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/t$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/appcompat/widget/an;

.field private c:Landroidx/appcompat/widget/an;

.field private d:Landroidx/appcompat/widget/an;

.field private e:Landroidx/appcompat/widget/an;

.field private f:Landroidx/appcompat/widget/an;

.field private g:Landroidx/appcompat/widget/an;

.field private h:Landroidx/appcompat/widget/an;

.field private final i:Landroidx/appcompat/widget/u;

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Typeface;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/t;->j:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/t;->k:I

    .line 75
    iput-object p1, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    .line 76
    new-instance v0, Landroidx/appcompat/widget/u;

    iget-object v1, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/u;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    .line 77
    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/an;
    .locals 3

    .prologue
    .line 561
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/i;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 562
    if-eqz v1, :cond_0

    .line 563
    new-instance v0, Landroidx/appcompat/widget/an;

    invoke-direct {v0}, Landroidx/appcompat/widget/an;-><init>()V

    .line 564
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/appcompat/widget/an;->d:Z

    .line 565
    iput-object v1, v0, Landroidx/appcompat/widget/an;->a:Landroid/content/res/ColorStateList;

    .line 568
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroidx/appcompat/widget/ap;)V
    .locals 8

    .prologue
    const/16 v7, 0x1c

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 407
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_textStyle:I

    iget v3, p0, Landroidx/appcompat/widget/t;->j:I

    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/t;->j:I

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_0

    .line 410
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v6}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/t;->k:I

    .line 412
    iget v0, p0, Landroidx/appcompat/widget/t;->k:I

    if-eq v0, v6, :cond_0

    .line 413
    iget v0, p0, Landroidx/appcompat/widget/t;->j:I

    and-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/t;->j:I

    .line 417
    :cond_0
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroidx/appcompat/a$j;->TextAppearance_fontFamily:I

    .line 418
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 419
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    .line 420
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroidx/appcompat/a$j;->TextAppearance_fontFamily:I

    .line 423
    :goto_0
    iget v3, p0, Landroidx/appcompat/widget/t;->k:I

    .line 424
    iget v4, p0, Landroidx/appcompat/widget/t;->j:I

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 426
    new-instance v5, Landroidx/appcompat/widget/t$a;

    invoke-direct {v5, p0, v3, v4}, Landroidx/appcompat/widget/t$a;-><init>(Landroidx/appcompat/widget/t;II)V

    .line 430
    :try_start_0
    iget v3, p0, Landroidx/appcompat/widget/t;->j:I

    invoke-virtual {p2, v0, v3, v5}, Landroidx/appcompat/widget/ap;->a(IILandroidx/core/a/a/f$a;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 431
    if-eqz v3, :cond_2

    .line 432
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_7

    iget v4, p0, Landroidx/appcompat/widget/t;->k:I

    if-eq v4, v6, :cond_7

    .line 434
    const/4 v4, 0x0

    .line 435
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    iget v5, p0, Landroidx/appcompat/widget/t;->k:I

    iget v3, p0, Landroidx/appcompat/widget/t;->j:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    move v3, v1

    .line 434
    :goto_1
    invoke-static {v4, v5, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    .line 442
    :cond_2
    :goto_2
    iget-object v3, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    if-nez v3, :cond_8

    move v3, v1

    :goto_3
    iput-boolean v3, p0, Landroidx/appcompat/widget/t;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 447
    :cond_3
    :goto_4
    iget-object v3, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    if-nez v3, :cond_4

    .line 449
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_4

    .line 451
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_a

    iget v3, p0, Landroidx/appcompat/widget/t;->k:I

    if-eq v3, v6, :cond_a

    .line 454
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iget v4, p0, Landroidx/appcompat/widget/t;->k:I

    iget v0, p0, Landroidx/appcompat/widget/t;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    move v0, v1

    .line 453
    :goto_5
    invoke-static {v3, v4, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    .line 482
    :cond_4
    :goto_6
    return-void

    .line 420
    :cond_5
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_fontFamily:I

    goto :goto_0

    :cond_6
    move v3, v2

    .line 435
    goto :goto_1

    .line 438
    :cond_7
    :try_start_1
    iput-object v3, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 443
    :catch_0
    move-exception v3

    goto :goto_4

    :cond_8
    move v3, v2

    .line 442
    goto :goto_3

    :cond_9
    move v0, v2

    .line 454
    goto :goto_5

    .line 457
    :cond_a
    iget v1, p0, Landroidx/appcompat/widget/t;->j:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    goto :goto_6

    .line 464
    :cond_b
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 466
    iput-boolean v2, p0, Landroidx/appcompat/widget/t;->m:Z

    .line 467
    sget v0, Landroidx/appcompat/a$j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    .line 468
    packed-switch v0, :pswitch_data_0

    goto :goto_6

    .line 470
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    goto :goto_6

    .line 474
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    goto :goto_6

    .line 478
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    goto :goto_6

    .line 443
    :catch_1
    move-exception v3

    goto :goto_4

    .line 468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const/16 v1, 0x11

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 685
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6

    if-nez p5, :cond_0

    if-eqz p6, :cond_6

    .line 686
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 687
    iget-object v1, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_2

    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    if-eqz p6, :cond_4

    :goto_2
    if-eqz p4, :cond_5

    :goto_3
    invoke-virtual {v1, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 717
    :cond_1
    :goto_4
    return-void

    .line 687
    :cond_2
    aget-object p5, v0, v2

    goto :goto_0

    :cond_3
    aget-object p2, v0, v4

    goto :goto_1

    :cond_4
    aget-object p6, v0, v3

    goto :goto_2

    :cond_5
    aget-object p4, v0, v5

    goto :goto_3

    .line 693
    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    if-nez p3, :cond_7

    if-eqz p4, :cond_1

    .line 696
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_b

    .line 697
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 698
    aget-object v1, v0, v2

    if-nez v1, :cond_8

    aget-object v1, v0, v3

    if-eqz v1, :cond_b

    .line 699
    :cond_8
    iget-object v1, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    aget-object v2, v0, v2

    if-eqz p2, :cond_9

    :goto_5
    aget-object v3, v0, v3

    if-eqz p4, :cond_a

    :goto_6
    invoke-virtual {v1, v2, p2, v3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_9
    aget-object p2, v0, v4

    goto :goto_5

    :cond_a
    aget-object p4, v0, v5

    goto :goto_6

    .line 709
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 710
    iget-object v1, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    :goto_7
    if-eqz p2, :cond_d

    :goto_8
    if-eqz p3, :cond_e

    :goto_9
    if-eqz p4, :cond_f

    :goto_a
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_c
    aget-object p1, v0, v2

    goto :goto_7

    :cond_d
    aget-object p2, v0, v4

    goto :goto_8

    :cond_e
    aget-object p3, v0, v3

    goto :goto_9

    :cond_f
    aget-object p4, v0, v5

    goto :goto_a
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;)V
    .locals 1

    .prologue
    .line 554
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 555
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/i;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;[I)V

    .line 557
    :cond_0
    return-void
.end method

.method private b(IF)V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/u;->a(IF)V

    .line 603
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iput-object v0, p0, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/an;

    .line 674
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iput-object v0, p0, Landroidx/appcompat/widget/t;->c:Landroidx/appcompat/widget/an;

    .line 675
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iput-object v0, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/an;

    .line 676
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iput-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/an;

    .line 677
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iput-object v0, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/an;

    .line 678
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iput-object v0, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/an;

    .line 679
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 532
    invoke-virtual {p0}, Landroidx/appcompat/widget/t;->b()V

    .line 533
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/u;->a(I)V

    .line 607
    return-void
.end method

.method a(IF)V
    .locals 1

    .prologue
    .line 582
    sget-boolean v0, Landroidx/core/widget/b;->d:Z

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Landroidx/appcompat/widget/t;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/t;->b(IF)V

    .line 587
    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/u;->a(IIII)V

    .line 616
    return-void
.end method

.method a(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 485
    sget-object v0, Landroidx/appcompat/a$j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/ap;

    move-result-object v0

    .line 487
    sget v1, Landroidx/appcompat/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    sget v1, Landroidx/appcompat/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/t;->a(Z)V

    .line 494
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    sget v1, Landroidx/appcompat/a$j;->TextAppearance_android_textColor:I

    .line 495
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    sget v1, Landroidx/appcompat/a$j;->TextAppearance_android_textColor:I

    .line 499
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_1

    .line 501
    iget-object v2, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 505
    :cond_1
    sget v1, Landroidx/appcompat/a$j;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    sget v1, Landroidx/appcompat/a$j;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v1

    if-nez v1, :cond_2

    .line 507
    iget-object v1, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 511
    :cond_2
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;)V

    .line 513
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    sget v1, Landroidx/appcompat/a$j;->TextAppearance_fontVariationSettings:I

    .line 514
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 515
    sget v1, Landroidx/appcompat/a$j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 517
    if-eqz v1, :cond_3

    .line 518
    iget-object v2, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 521
    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ap;->a()V

    .line 522
    iget-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    if-eqz v0, :cond_4

    .line 523
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    iget v2, p0, Landroidx/appcompat/widget/t;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 525
    :cond_4
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Landroidx/appcompat/widget/an;

    invoke-direct {v0}, Landroidx/appcompat/widget/an;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    .line 653
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iput-object p1, v0, Landroidx/appcompat/widget/an;->a:Landroid/content/res/ColorStateList;

    .line 654
    iget-object v1, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroidx/appcompat/widget/an;->d:Z

    .line 655
    invoke-direct {p0}, Landroidx/appcompat/widget/t;->l()V

    .line 656
    return-void

    .line 654
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Landroidx/appcompat/widget/an;

    invoke-direct {v0}, Landroidx/appcompat/widget/an;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    .line 667
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iput-object p1, v0, Landroidx/appcompat/widget/an;->b:Landroid/graphics/PorterDuff$Mode;

    .line 668
    iget-object v1, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroidx/appcompat/widget/an;->c:Z

    .line 669
    invoke-direct {p0}, Landroidx/appcompat/widget/t;->l()V

    .line 670
    return-void

    .line 668
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Landroidx/appcompat/widget/t;->m:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 339
    iput-object p1, p0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    .line 341
    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 82
    invoke-static {}, Landroidx/appcompat/widget/i;->b()Landroidx/appcompat/widget/i;

    move-result-object v10

    .line 85
    sget-object v2, Landroidx/appcompat/a$j;->AppCompatTextHelper:[I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v9, v0, v2, v1, v3}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v2

    .line 87
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v11

    .line 89
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableLeft:I

    const/4 v4, 0x0

    .line 91
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v3

    .line 90
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/an;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/an;

    .line 93
    :cond_0
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableTop:I

    const/4 v4, 0x0

    .line 95
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v3

    .line 94
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/an;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/t;->c:Landroidx/appcompat/widget/an;

    .line 97
    :cond_1
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableRight:I

    const/4 v4, 0x0

    .line 99
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v3

    .line 98
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/an;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/an;

    .line 101
    :cond_2
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableBottom:I

    const/4 v4, 0x0

    .line 103
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v3

    .line 102
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/an;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/an;

    .line 106
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_5

    .line 107
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableStart:I

    const/4 v4, 0x0

    .line 109
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v3

    .line 108
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/an;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/an;

    .line 111
    :cond_4
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextHelper_android_drawableEnd:I

    const/4 v4, 0x0

    .line 113
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v3

    .line 112
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/i;I)Landroidx/appcompat/widget/an;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/an;

    .line 117
    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/widget/ap;->a()V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    instance-of v12, v2, Landroid/text/method/PasswordTransformationMethod;

    .line 124
    const/4 v3, 0x0

    .line 125
    const/4 v2, 0x0

    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    const/4 v6, 0x0

    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v7, 0x0

    .line 133
    const/4 v13, -0x1

    if-eq v11, v13, :cond_c

    .line 134
    sget-object v13, Landroidx/appcompat/a$j;->TextAppearance:[I

    invoke-static {v9, v11, v13}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/ap;

    move-result-object v11

    .line 135
    if-nez v12, :cond_6

    sget v13, Landroidx/appcompat/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 136
    const/4 v2, 0x1

    .line 137
    sget v3, Landroidx/appcompat/a$j;->TextAppearance_textAllCaps:I

    const/4 v13, 0x0

    invoke-virtual {v11, v3, v13}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v3

    .line 140
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;)V

    .line 141
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-ge v13, v14, :cond_9

    .line 144
    sget v13, Landroidx/appcompat/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 145
    sget v4, Landroidx/appcompat/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v11, v4}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 147
    :cond_7
    sget v13, Landroidx/appcompat/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 148
    sget v5, Landroidx/appcompat/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v11, v5}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 151
    :cond_8
    sget v13, Landroidx/appcompat/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 152
    sget v6, Landroidx/appcompat/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 156
    :cond_9
    sget v13, Landroidx/appcompat/a$j;->TextAppearance_textLocale:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 157
    sget v7, Landroidx/appcompat/a$j;->TextAppearance_textLocale:I

    invoke-virtual {v11, v7}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    :cond_a
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v13, v14, :cond_b

    sget v13, Landroidx/appcompat/a$j;->TextAppearance_fontVariationSettings:I

    .line 160
    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 161
    sget v8, Landroidx/appcompat/a$j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v11, v8}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v8

    .line 163
    :cond_b
    invoke-virtual {v11}, Landroidx/appcompat/widget/ap;->a()V

    .line 167
    :cond_c
    sget-object v11, Landroidx/appcompat/a$j;->TextAppearance:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v9, v0, v11, v1, v13}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ap;

    move-result-object v11

    .line 169
    if-nez v12, :cond_d

    sget v13, Landroidx/appcompat/a$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 170
    const/4 v2, 0x1

    .line 171
    sget v3, Landroidx/appcompat/a$j;->TextAppearance_textAllCaps:I

    const/4 v13, 0x0

    invoke-virtual {v11, v3, v13}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v3

    .line 173
    :cond_d
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-ge v13, v14, :cond_10

    .line 176
    sget v13, Landroidx/appcompat/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 177
    sget v4, Landroidx/appcompat/a$j;->TextAppearance_android_textColor:I

    invoke-virtual {v11, v4}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 179
    :cond_e
    sget v13, Landroidx/appcompat/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 180
    sget v5, Landroidx/appcompat/a$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v11, v5}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 183
    :cond_f
    sget v13, Landroidx/appcompat/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 184
    sget v6, Landroidx/appcompat/a$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 188
    :cond_10
    sget v13, Landroidx/appcompat/a$j;->TextAppearance_textLocale:I

    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 189
    sget v7, Landroidx/appcompat/a$j;->TextAppearance_textLocale:I

    invoke-virtual {v11, v7}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    :cond_11
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v13, v14, :cond_12

    sget v13, Landroidx/appcompat/a$j;->TextAppearance_fontVariationSettings:I

    .line 193
    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 194
    sget v8, Landroidx/appcompat/a$j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v11, v8}, Landroidx/appcompat/widget/ap;->d(I)Ljava/lang/String;

    move-result-object v8

    .line 197
    :cond_12
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_13

    sget v13, Landroidx/appcompat/a$j;->TextAppearance_android_textSize:I

    .line 198
    invoke-virtual {v11, v13}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 199
    sget v13, Landroidx/appcompat/a$j;->TextAppearance_android_textSize:I

    const/4 v14, -0x1

    invoke-virtual {v11, v13, v14}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v13

    if-nez v13, :cond_13

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 204
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11}, Landroidx/appcompat/widget/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;)V

    .line 205
    invoke-virtual {v11}, Landroidx/appcompat/widget/ap;->a()V

    .line 207
    if-eqz v4, :cond_14

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 210
    :cond_14
    if-eqz v5, :cond_15

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 213
    :cond_15
    if-eqz v6, :cond_16

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 216
    :cond_16
    if-nez v12, :cond_17

    if-eqz v2, :cond_17

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/t;->a(Z)V

    .line 219
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    if-eqz v2, :cond_18

    .line 220
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/appcompat/widget/t;->k:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget v4, v0, Landroidx/appcompat/widget/t;->j:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 226
    :cond_18
    :goto_0
    if-eqz v8, :cond_19

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 229
    :cond_19
    if-eqz v7, :cond_1a

    .line 230
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_28

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    .line 239
    :cond_1a
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/widget/u;->a(Landroid/util/AttributeSet;I)V

    .line 241
    sget-boolean v2, Landroidx/core/widget/b;->d:Z

    if-eqz v2, :cond_1b

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v2}, Landroidx/appcompat/widget/u;->a()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    .line 246
    invoke-virtual {v2}, Landroidx/appcompat/widget/u;->e()[I

    move-result-object v2

    .line 247
    array-length v3, v2

    if-lez v3, :cond_1b

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_29

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    .line 252
    invoke-virtual {v3}, Landroidx/appcompat/widget/u;->c()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    .line 253
    invoke-virtual {v4}, Landroidx/appcompat/widget/u;->d()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    .line 254
    invoke-virtual {v5}, Landroidx/appcompat/widget/u;->b()I

    move-result v5

    const/4 v6, 0x0

    .line 251
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 265
    :cond_1b
    :goto_2
    sget-object v2, Landroidx/appcompat/a$j;->AppCompatTextView:[I

    move-object/from16 v0, p1

    invoke-static {v9, v0, v2}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ap;

    move-result-object v11

    .line 268
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 269
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 270
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableLeftCompat:I

    const/4 v12, -0x1

    invoke-virtual {v11, v2, v12}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 272
    const/4 v12, -0x1

    if-eq v2, v12, :cond_1c

    .line 273
    invoke-virtual {v10, v9, v2}, Landroidx/appcompat/widget/i;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 275
    :cond_1c
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableTopCompat:I

    const/4 v12, -0x1

    invoke-virtual {v11, v2, v12}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 277
    const/4 v12, -0x1

    if-eq v2, v12, :cond_1d

    .line 278
    invoke-virtual {v10, v9, v2}, Landroidx/appcompat/widget/i;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 280
    :cond_1d
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableRightCompat:I

    const/4 v12, -0x1

    invoke-virtual {v11, v2, v12}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 282
    const/4 v12, -0x1

    if-eq v2, v12, :cond_1e

    .line 283
    invoke-virtual {v10, v9, v2}, Landroidx/appcompat/widget/i;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 285
    :cond_1e
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableBottomCompat:I

    const/4 v12, -0x1

    invoke-virtual {v11, v2, v12}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 287
    const/4 v12, -0x1

    if-eq v2, v12, :cond_1f

    .line 288
    invoke-virtual {v10, v9, v2}, Landroidx/appcompat/widget/i;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 290
    :cond_1f
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableStartCompat:I

    const/4 v12, -0x1

    invoke-virtual {v11, v2, v12}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 292
    const/4 v12, -0x1

    if-eq v2, v12, :cond_20

    .line 293
    invoke-virtual {v10, v9, v2}, Landroidx/appcompat/widget/i;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 295
    :cond_20
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableEndCompat:I

    const/4 v12, -0x1

    invoke-virtual {v11, v2, v12}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v2

    .line 297
    const/4 v12, -0x1

    if-eq v2, v12, :cond_21

    .line 298
    invoke-virtual {v10, v9, v2}, Landroidx/appcompat/widget/i;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :cond_21
    move-object/from16 v2, p0

    .line 300
    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/widget/t;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 303
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 304
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 308
    :cond_22
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v11, v2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 309
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_drawableTintMode:I

    const/4 v3, -0x1

    .line 310
    invoke-virtual {v11, v2, v3}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v2

    const/4 v3, 0x0

    .line 309
    invoke-static {v2, v3}, Landroidx/appcompat/widget/y;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 314
    :cond_23
    sget v2, Landroidx/appcompat/a$j;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v3, -0x1

    invoke-virtual {v11, v2, v3}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v2

    .line 316
    sget v3, Landroidx/appcompat/a$j;->AppCompatTextView_lastBaselineToBottomHeight:I

    const/4 v4, -0x1

    invoke-virtual {v11, v3, v4}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v3

    .line 318
    sget v4, Landroidx/appcompat/a$j;->AppCompatTextView_lineHeight:I

    const/4 v5, -0x1

    invoke-virtual {v11, v4, v5}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v4

    .line 321
    invoke-virtual {v11}, Landroidx/appcompat/widget/ap;->a()V

    .line 322
    const/4 v5, -0x1

    if-eq v2, v5, :cond_24

    .line 323
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-static {v5, v2}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;I)V

    .line 325
    :cond_24
    const/4 v2, -0x1

    if-eq v3, v2, :cond_25

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroidx/core/widget/i;->c(Landroid/widget/TextView;I)V

    .line 328
    :cond_25
    const/4 v2, -0x1

    if-eq v4, v2, :cond_26

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-static {v2, v4}, Landroidx/core/widget/i;->d(Landroid/widget/TextView;I)V

    .line 331
    :cond_26
    return-void

    .line 223
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/t;->l:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0

    .line 232
    :cond_28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1a

    .line 233
    const/4 v2, 0x0

    const/16 v3, 0x2c

    .line 234
    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    goto/16 :goto_1

    .line 257
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 529
    return-void
.end method

.method a(ZIIII)V
    .locals 1

    .prologue
    .line 574
    sget-boolean v0, Landroidx/core/widget/b;->d:Z

    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p0}, Landroidx/appcompat/widget/t;->c()V

    .line 577
    :cond_0
    return-void
.end method

.method a([II)V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/u;->a([II)V

    .line 621
    return-void
.end method

.method b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 536
    iget-object v0, p0, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/an;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/t;->c:Landroidx/appcompat/widget/an;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/an;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/an;

    if-eqz v0, :cond_1

    .line 538
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 539
    aget-object v1, v0, v3

    iget-object v2, p0, Landroidx/appcompat/widget/t;->b:Landroidx/appcompat/widget/an;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/t;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;)V

    .line 540
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroidx/appcompat/widget/t;->c:Landroidx/appcompat/widget/an;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/t;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;)V

    .line 541
    aget-object v1, v0, v4

    iget-object v2, p0, Landroidx/appcompat/widget/t;->d:Landroidx/appcompat/widget/an;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/t;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;)V

    .line 542
    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/t;->e:Landroidx/appcompat/widget/an;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/t;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;)V

    .line 544
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/an;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/an;

    if-eqz v0, :cond_3

    .line 546
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 547
    aget-object v1, v0, v3

    iget-object v2, p0, Landroidx/appcompat/widget/t;->f:Landroidx/appcompat/widget/an;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/t;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;)V

    .line 548
    aget-object v0, v0, v4

    iget-object v1, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/an;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/t;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/an;)V

    .line 551
    :cond_3
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->f()V

    .line 593
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->g()Z

    move-result v0

    return v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->a()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->b()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->c()I

    move-result v0

    return v0
.end method

.method h()I
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->d()I

    move-result v0

    return v0
.end method

.method i()[I
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/t;->i:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/u;->e()[I

    move-result-object v0

    return-object v0
.end method

.method j()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iget-object v0, v0, Landroidx/appcompat/widget/an;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/t;->h:Landroidx/appcompat/widget/an;

    iget-object v0, v0, Landroidx/appcompat/widget/an;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
