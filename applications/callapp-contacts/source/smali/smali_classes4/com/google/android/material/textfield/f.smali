.class final Lcom/google/android/material/textfield/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/google/android/material/textfield/TextInputLayout;

.field c:Landroid/animation/Animator;

.field d:I

.field e:I

.field f:Ljava/lang/CharSequence;

.field g:Z

.field h:Landroid/widget/TextView;

.field i:Ljava/lang/CharSequence;

.field j:I

.field k:Landroid/content/res/ColorStateList;

.field l:Ljava/lang/CharSequence;

.field m:Z

.field n:Landroid/widget/TextView;

.field o:I

.field p:Landroid/content/res/ColorStateList;

.field q:Landroid/graphics/Typeface;

.field private r:Landroid/widget/LinearLayout;

.field private s:I

.field private t:Landroid/widget/FrameLayout;

.field private final u:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    .line 123
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/a$d;->design_textinput_caption_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/textfield/f;->u:F

    return-void
.end method

.method private a(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    return p3
.end method

.method private a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 325
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/google/android/material/textfield/f;->u:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 326
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xd9

    .line 327
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 328
    sget-object v0, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private static a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 3

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 318
    :goto_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa7

    .line 319
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    sget-object p1, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private a(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 275
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 288
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_2
    iput p2, p0, Lcom/google/android/material/textfield/f;->d:I

    return-void
.end method

.method static a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 562
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    :cond_1
    if-ne p6, p4, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 309
    :goto_0
    invoke-static {p3, p2}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 308
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_3

    .line 311
    invoke-direct {p0, p3}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private static c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private d(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->n:Landroid/widget/TextView;

    return-object p1

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    return-object p1
.end method


# virtual methods
.method final a()V
    .locals 4

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->f:Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->b()V

    .line 169
    iget v1, p0, Lcom/google/android/material/textfield/f;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 171
    iget-boolean v1, p0, Lcom/google/android/material/textfield/f;->m:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->l:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 172
    iput v1, p0, Lcom/google/android/material/textfield/f;->e:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 175
    iput v1, p0, Lcom/google/android/material/textfield/f;->e:I

    .line 178
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/textfield/f;->d:I

    iget v2, p0, Lcom/google/android/material/textfield/f;->e:I

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p0, v3, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 178
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    return-void
.end method

.method final a(I)V
    .locals 2

    .line 584
    iput p1, p0, Lcom/google/android/material/textfield/f;->j:I

    .line 585
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method final a(IIZ)V
    .locals 13

    move-object v7, p0

    move v8, p2

    move v9, p1

    move/from16 v10, p3

    if-ne v9, v8, :cond_0

    return-void

    :cond_0
    if-eqz v10, :cond_1

    .line 209
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 210
    iput-object v11, v7, Lcom/google/android/material/textfield/f;->c:Landroid/animation/Animator;

    .line 211
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-boolean v2, v7, Lcom/google/android/material/textfield/f;->m:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/f;->n:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v12

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/f;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 221
    iget-boolean v2, v7, Lcom/google/android/material/textfield/f;->g:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/f;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 229
    invoke-static {v11, v12}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v3

    .line 231
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v5

    .line 233
    new-instance v6, Lcom/google/android/material/textfield/f$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/f$1;-><init>(Lcom/google/android/material/textfield/f;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 261
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/f;->a(II)V

    .line 263
    :goto_0
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 264
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    .line 2489
    invoke-virtual {v0, v10, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(ZZ)V

    .line 265
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->g()V

    return-void
.end method

.method final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 577
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->k:Landroid/content/res/ColorStateList;

    .line 578
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 579
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method final a(Landroid/widget/TextView;I)V
    .locals 5

    .line 391
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->t:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    .line 393
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 394
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 396
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->t:Landroid/widget/FrameLayout;

    .line 397
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 399
    iget-object v3, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/textfield/f;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5537
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 406
    :cond_0
    invoke-static {p2}, Lcom/google/android/material/textfield/f;->c(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 407
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 408
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->t:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 410
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 412
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 415
    iget p1, p0, Lcom/google/android/material/textfield/f;->s:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/material/textfield/f;->s:I

    return-void
.end method

.method final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 591
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->i:Ljava/lang/CharSequence;

    .line 592
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method final a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Landroidx/core/view/v;->B(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/f;->e:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->d:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final b()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method final b(I)V
    .locals 1

    .line 620
    iput p1, p0, Lcom/google/android/material/textfield/f;->o:I

    .line 621
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 622
    invoke-static {v0, p1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method final b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 613
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->p:Landroid/content/res/ColorStateList;

    .line 614
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 615
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method final b(Landroid/widget/TextView;I)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    invoke-static {p2}, Lcom/google/android/material/textfield/f;->c(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/f;->t:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 424
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 428
    :goto_0
    iget p1, p0, Lcom/google/android/material/textfield/f;->s:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/textfield/f;->s:I

    .line 429
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    if-nez p1, :cond_2

    const/16 p1, 0x8

    .line 6434
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method final c()V
    .locals 8

    .line 3380
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3537
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4537
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 358
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/material/h/c;->a(Landroid/content/Context;)Z

    move-result v2

    .line 359
    iget-object v3, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/LinearLayout;

    sget v4, Lcom/google/android/material/a$d;->material_helper_text_font_1_3_padding_horizontal:I

    .line 364
    invoke-static {v0}, Landroidx/core/view/v;->i(Landroid/view/View;)I

    move-result v5

    .line 361
    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/material/textfield/f;->a(ZII)I

    move-result v4

    sget v5, Lcom/google/android/material/a$d;->material_helper_text_font_1_3_padding_top:I

    iget-object v6, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    .line 369
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/android/material/a$d;->material_helper_text_default_padding_top:I

    .line 370
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 365
    invoke-direct {p0, v2, v5, v6}, Lcom/google/android/material/textfield/f;->a(ZII)I

    move-result v5

    sget v6, Lcom/google/android/material/a$d;->material_helper_text_font_1_3_padding_horizontal:I

    .line 374
    invoke-static {v0}, Landroidx/core/view/v;->j(Landroid/view/View;)I

    move-result v0

    .line 371
    invoke-direct {p0, v2, v6, v0}, Lcom/google/android/material/textfield/f;->a(ZII)I

    move-result v0

    .line 359
    invoke-static {v3, v4, v5, v0, v1}, Landroidx/core/view/v;->b(Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method final d()Z
    .locals 2

    .line 519
    iget v0, p0, Lcom/google/android/material/textfield/f;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6523
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->f:Ljava/lang/CharSequence;

    .line 6525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final e()I
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method final f()Landroid/content/res/ColorStateList;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
