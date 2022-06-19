.class final Lcom/google/android/material/textfield/f;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/material/textfield/TextInputLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:Landroid/widget/FrameLayout;

.field private f:I

.field private g:Landroid/animation/Animator;

.field private final h:F

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Z

.field private m:Landroid/widget/TextView;

.field private n:I

.field private o:Landroid/content/res/ColorStateList;

.field private p:Ljava/lang/CharSequence;

.field private q:Z

.field private r:Landroid/widget/TextView;

.field private s:I

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    .line 119
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 120
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$d;->design_textinput_caption_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/textfield/f;->h:F

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;I)I
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/google/android/material/textfield/f;->i:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->g:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 317
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/textfield/f;->h:F

    neg-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 318
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 319
    const-wide/16 v2, 0xd9

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    sget-object v1, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 321
    return-object v0
.end method

.method private a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 309
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 310
    :goto_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 311
    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 312
    sget-object v1, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    return-object v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 262
    if-ne p1, p2, :cond_0

    .line 285
    :goto_0
    return-void

    .line 266
    :cond_0
    if-eqz p2, :cond_1

    .line 267
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1

    .line 269
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 274
    :cond_1
    if-eqz p1, :cond_2

    .line 275
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_2

    .line 277
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_2
    iput p2, p0, Lcom/google/android/material/textfield/f;->i:I

    goto :goto_0
.end method

.method private a(IIZ)V
    .locals 8

    .prologue
    .line 200
    if-eqz p3, :cond_0

    .line 201
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 202
    iput-object v7, p0, Lcom/google/android/material/textfield/f;->g:Landroid/animation/Animator;

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    iget-boolean v2, p0, Lcom/google/android/material/textfield/f;->q:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/f;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 213
    iget-boolean v2, p0, Lcom/google/android/material/textfield/f;->l:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    const/4 v4, 0x1

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/f;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 221
    invoke-static {v7, v1}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v3

    .line 223
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v5

    .line 225
    new-instance v0, Lcom/google/android/material/textfield/f$1;

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/f$1;-><init>(Lcom/google/android/material/textfield/f;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 256
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 257
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 258
    return-void

    .line 253
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/f;->a(II)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;I)V
    .locals 1

    .prologue
    .line 411
    if-nez p2, :cond_0

    .line 412
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 414
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 532
    if-eqz p1, :cond_0

    .line 533
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 535
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 295
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    if-eq p4, p6, :cond_2

    if-ne p4, p5, :cond_0

    .line 300
    :cond_2
    if-ne p6, p4, :cond_3

    const/4 v0, 0x1

    .line 301
    :goto_1
    invoke-direct {p0, p3, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 300
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    if-ne p6, p4, :cond_0

    .line 303
    invoke-direct {p0, p3}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 189
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/f;->j:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->i:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(I)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 336
    packed-switch p1, :pswitch_data_0

    .line 343
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 338
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 494
    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->k:Ljava/lang/CharSequence;

    .line 496
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    :goto_0
    return v0

    .line 496
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 141
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/textfield/f;->j:I

    .line 144
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->j:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 145
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 144
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    .line 146
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->o:Landroid/content/res/ColorStateList;

    .line 549
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 552
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 525
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    .line 526
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 527
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 529
    :cond_0
    return-void
.end method

.method a(Landroid/widget/TextView;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 363
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    .line 365
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 366
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v5, v4}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 368
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    .line 369
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 374
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 375
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 376
    iget-object v2, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->d()V

    .line 383
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 386
    iget v0, p0, Lcom/google/android/material/textfield/f;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/textfield/f;->f:I

    .line 390
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    iget v0, p0, Lcom/google/android/material/textfield/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/textfield/f;->d:I

    .line 392
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 125
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 126
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->p:Ljava/lang/CharSequence;

    .line 127
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    if-eq v0, v1, :cond_0

    .line 131
    iput v1, p0, Lcom/google/android/material/textfield/f;->j:I

    .line 133
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->j:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    .line 134
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 133
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    .line 135
    return-void
.end method

.method a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 418
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->l:Z

    if-ne v0, p1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 425
    if-eqz p1, :cond_2

    .line 426
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    .line 427
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    sget v1, Lcom/google/android/material/a$f;->textinput_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 428
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 431
    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/f;->n:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/f;->b(I)V

    .line 432
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/content/res/ColorStateList;)V

    .line 433
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/h/u;->d(Landroid/view/View;I)V

    .line 435
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;I)V

    .line 443
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/f;->l:Z

    goto :goto_0

    .line 437
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->b()V

    .line 438
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/f;->b(Landroid/widget/TextView;I)V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    .line 440
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 441
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    goto :goto_1
.end method

.method a(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 331
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iput-object v3, p0, Lcom/google/android/material/textfield/f;->k:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 165
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/textfield/f;->j:I

    .line 174
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->j:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    .line 175
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 174
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    .line 176
    return-void

    .line 171
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/textfield/f;->j:I

    goto :goto_0
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 555
    iput p1, p0, Lcom/google/android/material/textfield/f;->n:I

    .line 556
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/widget/TextView;I)V

    .line 559
    :cond_0
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->t:Landroid/content/res/ColorStateList;

    .line 572
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 575
    :cond_0
    return-void
.end method

.method b(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 400
    iget v0, p0, Lcom/google/android/material/textfield/f;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/textfield/f;->f:I

    .line 401
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/google/android/material/textfield/f;->f:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/f;->a(Landroid/view/ViewGroup;I)V

    .line 402
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 406
    :goto_1
    iget v0, p0, Lcom/google/android/material/textfield/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/textfield/f;->d:I

    .line 407
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/android/material/textfield/f;->d:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/f;->a(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 149
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 150
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->k:Ljava/lang/CharSequence;

    .line 151
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    if-eq v0, v1, :cond_0

    .line 155
    iput v1, p0, Lcom/google/android/material/textfield/f;->j:I

    .line 157
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->i:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->j:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    .line 158
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 157
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    .line 159
    return-void
.end method

.method b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 456
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->q:Z

    if-ne v0, p1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 463
    if-eqz p1, :cond_2

    .line 464
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    .line 465
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    sget v1, Lcom/google/android/material/a$f;->textinput_helper_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 466
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/h/u;->d(Landroid/view/View;I)V

    .line 472
    iget v0, p0, Lcom/google/android/material/textfield/f;->s:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/f;->c(I)V

    .line 473
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/f;->b(Landroid/content/res/ColorStateList;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;I)V

    .line 482
    :goto_1
    iput-boolean p1, p0, Lcom/google/android/material/textfield/f;->q:Z

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->a()V

    .line 477
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/textfield/f;->b(Landroid/widget/TextView;I)V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    .line 479
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 480
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    goto :goto_1
.end method

.method c()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 328
    :cond_0
    return-void
.end method

.method c(I)V
    .locals 1

    .prologue
    .line 578
    iput p1, p0, Lcom/google/android/material/textfield/f;->s:I

    .line 579
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 582
    :cond_0
    return-void
.end method

.method d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-direct {p0}, Lcom/google/android/material/textfield/f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 351
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/h/u;->i(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 353
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/h/u;->j(Landroid/view/View;)I

    move-result v2

    .line 349
    invoke-static {v0, v1, v3, v2, v3}, Landroidx/core/h/u;->a(Landroid/view/View;IIII)V

    .line 356
    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->l:Z

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->q:Z

    return v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/google/android/material/textfield/f;->j:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/f;->e(I)Z

    move-result v0

    return v0
.end method

.method h()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method i()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method j()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method k()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
