.class final Lcom/google/android/material/card/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final r:[I

.field private static final s:D


# instance fields
.field final a:Lcom/google/android/material/card/MaterialCardView;

.field final b:Landroid/graphics/Rect;

.field final c:Lcom/google/android/material/k/h;

.field final d:Lcom/google/android/material/k/h;

.field e:I

.field f:I

.field g:I

.field h:Landroid/graphics/drawable/Drawable;

.field i:Landroid/graphics/drawable/Drawable;

.field j:Landroid/content/res/ColorStateList;

.field k:Landroid/content/res/ColorStateList;

.field l:Lcom/google/android/material/k/m;

.field m:Landroid/content/res/ColorStateList;

.field n:Landroid/graphics/drawable/LayerDrawable;

.field o:Lcom/google/android/material/k/h;

.field p:Z

.field q:Z

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Lcom/google/android/material/k/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 61
    sput-object v0, Lcom/google/android/material/card/a;->r:[I

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/card/a;->s:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/android/material/card/a;->p:Z

    .line 123
    iput-object p1, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 124
    new-instance v0, Lcom/google/android/material/k/h;

    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/android/material/k/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    .line 125
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0}, Lcom/google/android/material/k/h;->i()V

    .line 1271
    iget-object p4, v0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object p4, p4, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 128
    invoke-virtual {p4}, Lcom/google/android/material/k/m;->b()Lcom/google/android/material/k/m$a;

    move-result-object p4

    .line 131
    invoke-virtual {p1}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/a$l;->CardView:[I

    sget v1, Lcom/google/android/material/a$k;->CardView:I

    .line 132
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 133
    sget p2, Lcom/google/android/material/a$l;->CardView_cardCornerRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 135
    sget p2, Lcom/google/android/material/a$l;->CardView_cardCornerRadius:I

    const/4 p3, 0x0

    .line 136
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 135
    invoke-virtual {p4, p2}, Lcom/google/android/material/k/m$a;->a(F)Lcom/google/android/material/k/m$a;

    .line 139
    :cond_0
    new-instance p2, Lcom/google/android/material/k/h;

    invoke-direct {p2}, Lcom/google/android/material/k/h;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/card/a;->d:Lcom/google/android/material/k/h;

    .line 140
    invoke-virtual {p4}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/card/a;->a(Lcom/google/android/material/k/m;)V

    .line 142
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Lcom/google/android/material/k/d;F)F
    .locals 4

    .line 598
    instance-of v0, p0, Lcom/google/android/material/k/l;

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 599
    sget-wide v2, Lcom/google/android/material/card/a;->s:D

    sub-double/2addr v0, v2

    float-to-double p0, p1

    mul-double v0, v0, p0

    double-to-float p0, v0

    return p0

    .line 600
    :cond_0
    instance-of p0, p0, Lcom/google/android/material/k/e;

    if-eqz p0, :cond_1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private l()Z
    .locals 2

    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v0}, Lcom/google/android/material/k/h;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private m()F
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 556
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 557
    sget-wide v2, Lcom/google/android/material/card/a;->s:D

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2}, Lcom/google/android/material/card/MaterialCardView;->al_()F

    move-result v2

    float-to-double v2, v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private n()F
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/google/android/material/card/a;->l:Lcom/google/android/material/k/m;

    .line 3622
    iget-object v0, v0, Lcom/google/android/material/k/m;->b:Lcom/google/android/material/k/d;

    .line 584
    iget-object v1, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v1}, Lcom/google/android/material/k/h;->k()F

    move-result v1

    .line 583
    invoke-static {v0, v1}, Lcom/google/android/material/card/a;->a(Lcom/google/android/material/k/d;F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/card/a;->l:Lcom/google/android/material/k/m;

    .line 3632
    iget-object v1, v1, Lcom/google/android/material/k/m;->c:Lcom/google/android/material/k/d;

    .line 586
    iget-object v2, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    .line 587
    invoke-virtual {v2}, Lcom/google/android/material/k/h;->l()F

    move-result v2

    .line 585
    invoke-static {v1, v2}, Lcom/google/android/material/card/a;->a(Lcom/google/android/material/k/d;F)F

    move-result v1

    .line 582
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/card/a;->l:Lcom/google/android/material/k/m;

    .line 3642
    iget-object v1, v1, Lcom/google/android/material/k/m;->d:Lcom/google/android/material/k/d;

    .line 590
    iget-object v2, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    .line 591
    invoke-virtual {v2}, Lcom/google/android/material/k/h;->n()F

    move-result v2

    .line 589
    invoke-static {v1, v2}, Lcom/google/android/material/card/a;->a(Lcom/google/android/material/k/d;F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/card/a;->l:Lcom/google/android/material/k/m;

    .line 3652
    iget-object v2, v2, Lcom/google/android/material/k/m;->e:Lcom/google/android/material/k/d;

    .line 593
    iget-object v3, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    .line 594
    invoke-virtual {v3}, Lcom/google/android/material/k/h;->m()F

    move-result v3

    .line 592
    invoke-static {v2, v3}, Lcom/google/android/material/card/a;->a(Lcom/google/android/material/k/d;F)F

    move-result v2

    .line 588
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 581
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private o()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 625
    sget-boolean v0, Lcom/google/android/material/i/b;->a:Z

    if-eqz v0, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/google/android/material/card/a;->r()Lcom/google/android/material/k/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/a;->o:Lcom/google/android/material/k/h;

    .line 628
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/a;->j:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/card/a;->o:Lcom/google/android/material/k/h;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 631
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/card/a;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private p()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 636
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 637
    invoke-direct {p0}, Lcom/google/android/material/card/a;->r()Lcom/google/android/material/k/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/card/a;->u:Lcom/google/android/material/k/h;

    .line 638
    iget-object v2, p0, Lcom/google/android/material/card/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 639
    iget-object v2, p0, Lcom/google/android/material/card/a;->u:Lcom/google/android/material/k/h;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private q()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 654
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 655
    iget-object v1, p0, Lcom/google/android/material/card/a;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 656
    sget-object v2, Lcom/google/android/material/card/a;->r:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0
.end method

.method private r()Lcom/google/android/material/k/h;
    .locals 2

    .line 663
    new-instance v0, Lcom/google/android/material/k/h;

    iget-object v1, p0, Lcom/google/android/material/card/a;->l:Lcom/google/android/material/k/m;

    invoke-direct {v0, v1}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    iget-object v1, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getCardElevation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->r(F)V

    return-void
.end method

.method final a(IIII)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->d()V

    return-void
.end method

.method final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    .line 208
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->c()V

    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 385
    iput-object p1, p0, Lcom/google/android/material/card/a;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/card/a;->i:Landroid/graphics/drawable/Drawable;

    .line 388
    iget-object v0, p0, Lcom/google/android/material/card/a;->k:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/card/a;->n:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/google/android/material/card/a;->q()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 393
    iget-object v0, p0, Lcom/google/android/material/card/a;->n:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/google/android/material/a$f;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_1
    return-void
.end method

.method final a(Lcom/google/android/material/k/m;)V
    .locals 2

    .line 453
    iput-object p1, p0, Lcom/google/android/material/card/a;->l:Lcom/google/android/material/k/m;

    .line 454
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 455
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v0}, Lcom/google/android/material/k/h;->o()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2754
    iput-boolean v1, v0, Lcom/google/android/material/k/h;->u:Z

    .line 456
    iget-object v0, p0, Lcom/google/android/material/card/a;->d:Lcom/google/android/material/k/h;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->o:Lcom/google/android/material/k/h;

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/a;->u:Lcom/google/android/material/k/h;

    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    :cond_2
    return-void
.end method

.method final b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 502
    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_2

    .line 504
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->f()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 505
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->g()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move v7, v0

    move v8, v1

    .line 507
    :goto_2
    new-instance v0, Lcom/google/android/material/card/a$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, v7

    move v6, v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/material/card/a$1;-><init>(Lcom/google/android/material/card/a;Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method final b()V
    .locals 2

    .line 2195
    iget-boolean v0, p0, Lcom/google/android/material/card/a;->p:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    invoke-virtual {p0, v1}, Lcom/google/android/material/card/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Lcom/google/android/material/card/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/google/android/material/card/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method final b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/android/material/card/a;->c:Lcom/google/android/material/k/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method final c()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/google/android/material/card/a;->d:Lcom/google/android/material/k/h;

    iget v1, p0, Lcom/google/android/material/card/a;->g:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/card/a;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/k/h;->a(FLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method final c(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/android/material/card/a;->d:Lcom/google/android/material/k/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 249
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 248
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method final d()V
    .locals 6

    .line 333
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/google/android/material/card/a;->n()F

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 340
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/card/a;->m()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 342
    iget-object v1, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    iget-object v2, p0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/android/material/card/a;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/material/card/MaterialCardView;->a(IIII)V

    return-void
.end method

.method final d(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/google/android/material/card/a;->j:Landroid/content/res/ColorStateList;

    .line 359
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->k()V

    return-void
.end method

.method final e()V
    .locals 7

    .line 441
    iget-object v0, p0, Lcom/google/android/material/card/a;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 446
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 447
    iget-object v2, p0, Lcom/google/android/material/card/a;->t:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    iget-object v2, p0, Lcom/google/android/material/card/a;->t:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method final f()F
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getMaxCardElevation()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    .line 537
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/a;->n()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method final g()F
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getMaxCardElevation()F

    move-result v0

    .line 547
    invoke-virtual {p0}, Lcom/google/android/material/card/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/a;->n()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method final h()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/card/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final i()Z
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/google/android/material/card/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/a;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 569
    invoke-virtual {v0}, Lcom/google/android/material/card/MaterialCardView;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final j()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 608
    iget-object v0, p0, Lcom/google/android/material/card/a;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/google/android/material/card/a;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/card/a;->t:Landroid/graphics/drawable/Drawable;

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->n:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1

    .line 613
    invoke-direct {p0}, Lcom/google/android/material/card/a;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 614
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/material/card/a;->t:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/material/card/a;->d:Lcom/google/android/material/k/h;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/google/android/material/card/a;->n:Landroid/graphics/drawable/LayerDrawable;

    .line 617
    sget v0, Lcom/google/android/material/a$f;->mtrl_card_checked_layer_id:I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/a;->n:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method final k()V
    .locals 2

    .line 645
    sget-boolean v0, Lcom/google/android/material/i/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/card/a;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 646
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/card/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/a;->u:Lcom/google/android/material/k/h;

    if-eqz v0, :cond_1

    .line 648
    iget-object v1, p0, Lcom/google/android/material/card/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
