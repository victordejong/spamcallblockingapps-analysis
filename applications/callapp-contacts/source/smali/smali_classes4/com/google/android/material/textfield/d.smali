.class final Lcom/google/android/material/textfield/d;
.super Lcom/google/android/material/textfield/e;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/text/TextWatcher;

.field private final f:Landroid/view/View$OnFocusChangeListener;

.field private final g:Lcom/google/android/material/textfield/TextInputLayout$a;

.field private final h:Lcom/google/android/material/textfield/TextInputLayout$b;

.field private final i:Lcom/google/android/material/textfield/TextInputLayout$c;

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Landroid/graphics/drawable/StateListDrawable;

.field private n:Lcom/google/android/material/k/h;

.field private o:Landroid/view/accessibility/AccessibilityManager;

.field private p:Landroid/animation/ValueAnimator;

.field private q:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/textfield/d;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 73
    new-instance p1, Lcom/google/android/material/textfield/d$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$1;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->b:Landroid/text/TextWatcher;

    .line 97
    new-instance p1, Lcom/google/android/material/textfield/d$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$3;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->f:Landroid/view/View$OnFocusChangeListener;

    .line 108
    new-instance p1, Lcom/google/android/material/textfield/d$4;

    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/textfield/d$4;-><init>(Lcom/google/android/material/textfield/d;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->g:Lcom/google/android/material/textfield/TextInputLayout$a;

    .line 140
    new-instance p1, Lcom/google/android/material/textfield/d$5;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$5;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->h:Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 164
    new-instance p1, Lcom/google/android/material/textfield/d$6;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$6;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/d;->i:Lcom/google/android/material/textfield/TextInputLayout$c;

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->j:Z

    .line 193
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->k:Z

    const-wide v0, 0x7fffffffffffffffL

    .line 194
    iput-wide v0, p0, Lcom/google/android/material/textfield/d;->l:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;J)J
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/google/android/material/textfield/d;->l:J

    return-wide p1
.end method

.method private varargs a(I[F)Landroid/animation/ValueAnimator;
    .locals 2

    .line 479
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 480
    sget-object v0, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p1

    .line 481
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 482
    new-instance p1, Lcom/google/android/material/textfield/d$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/d$2;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->o:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic a(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .line 2444
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 2450
    check-cast p0, Landroid/widget/AutoCompleteTextView;

    return-object p0

    .line 2445
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(FFFI)Lcom/google/android/material/k/h;
    .locals 1

    .line 424
    invoke-static {}, Lcom/google/android/material/k/m;->a()Lcom/google/android/material/k/m$a;

    move-result-object v0

    .line 425
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/m$a;->b(F)Lcom/google/android/material/k/m$a;

    move-result-object v0

    .line 426
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/m$a;->c(F)Lcom/google/android/material/k/m$a;

    move-result-object p1

    .line 427
    invoke-virtual {p1, p2}, Lcom/google/android/material/k/m$a;->e(F)Lcom/google/android/material/k/m$a;

    move-result-object p1

    .line 428
    invoke-virtual {p1, p2}, Lcom/google/android/material/k/m$a;->d(F)Lcom/google/android/material/k/m$a;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object p1

    .line 430
    iget-object p2, p0, Lcom/google/android/material/textfield/d;->d:Landroid/content/Context;

    .line 431
    invoke-static {p2, p3}, Lcom/google/android/material/k/h;->a(Landroid/content/Context;F)Lcom/google/android/material/k/h;

    move-result-object p2

    .line 432
    invoke-virtual {p2, p1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 433
    invoke-virtual {p2, p4, p4}, Lcom/google/android/material/k/h;->a(II)V

    return-object p2
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 3277
    invoke-direct {p0}, Lcom/google/android/material/textfield/d;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3278
    iput-boolean v1, p0, Lcom/google/android/material/textfield/d;->j:Z

    .line 3280
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->j:Z

    if-nez v0, :cond_3

    .line 3281
    sget-boolean v0, Lcom/google/android/material/textfield/d;->a:Z

    if-eqz v0, :cond_1

    .line 3282
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/d;->b(Z)V

    goto :goto_0

    .line 3284
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->k:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/d;->k:Z

    .line 3285
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->e:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 3287
    :goto_0
    iget-boolean p0, p0, Lcom/google/android/material/textfield/d;->k:Z

    if-eqz p0, :cond_2

    .line 3288
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3289
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    return-void

    .line 3291
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void

    .line 3294
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/textfield/d;->j:Z

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->b:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    .line 3299
    sget-boolean v0, Lcom/google/android/material/textfield/d;->a:Z

    if-eqz v0, :cond_1

    .line 3300
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3904
    iget v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3302
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->n:Lcom/google/android/material/k/h;

    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3304
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->m:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->k:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->k:Z

    .line 460
    iget-object p1, p0, Lcom/google/android/material/textfield/d;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 461
    iget-object p1, p0, Lcom/google/android/material/textfield/d;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/widget/EditText;)Z
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/google/android/material/textfield/d;->c(Landroid/widget/EditText;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/d;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/textfield/d;)Lcom/google/android/material/textfield/TextInputLayout$a;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->g:Lcom/google/android/material/textfield/TextInputLayout$a;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 9

    .line 4311
    invoke-static {p1}, Lcom/google/android/material/textfield/d;->c(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4315
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4904
    iget v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 4316
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 5865
    iget v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    iget v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 5868
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 5866
    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/k/h;

    .line 4317
    sget v2, Lcom/google/android/material/a$b;->colorControlHighlight:I

    .line 6053
    invoke-static {p1, v2}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result v2

    new-array v5, v3, [[I

    new-array v6, v4, [I

    const v7, 0x10100a7

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v5, v8

    new-array v6, v8, [I

    aput-object v6, v5, v4

    const v6, 0x3dcccccd    # 0.1f

    if-ne v0, v3, :cond_3

    .line 6336
    sget p0, Lcom/google/android/material/a$b;->colorSurface:I

    .line 7053
    invoke-static {p1, p0}, Lcom/google/android/material/h/b;->a(Landroid/view/View;I)I

    move-result p0

    .line 6337
    new-instance v0, Lcom/google/android/material/k/h;

    .line 7271
    iget-object v7, v1, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v7, v7, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 6338
    invoke-direct {v0, v7}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    .line 6339
    invoke-static {v2, p0, v6}, Lcom/google/android/material/b/a;->a(IIF)I

    move-result v2

    new-array v6, v3, [I

    aput v2, v6, v8

    aput v8, v6, v4

    .line 6341
    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v7}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 6343
    sget-boolean v6, Lcom/google/android/material/textfield/d;->a:Z

    if-eqz v6, :cond_2

    .line 6344
    invoke-virtual {v0, p0}, Lcom/google/android/material/k/h;->setTint(I)V

    new-array v6, v3, [I

    aput v2, v6, v8

    aput p0, v6, v4

    .line 6346
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 6347
    new-instance v2, Lcom/google/android/material/k/h;

    .line 8271
    iget-object v5, v1, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v5, v5, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 6348
    invoke-direct {v2, v5}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    const/4 v5, -0x1

    .line 6349
    invoke-virtual {v2, v5}, Lcom/google/android/material/k/h;->setTint(I)V

    .line 6350
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v5, p0, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array p0, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v5, p0, v8

    aput-object v1, p0, v4

    .line 6352
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    new-array p0, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, p0, v8

    aput-object v1, p0, v4

    .line 6355
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 6358
    :goto_1
    invoke-static {p1, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    if-ne v0, v4, :cond_5

    .line 8366
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 9211
    iget p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:I

    .line 8367
    invoke-static {v2, p0, v6}, Lcom/google/android/material/b/a;->a(IIF)I

    move-result v0

    new-array v2, v3, [I

    aput v0, v2, v8

    aput p0, v2, v4

    .line 8370
    sget-boolean p0, Lcom/google/android/material/textfield/d;->a:Z

    if-eqz p0, :cond_4

    .line 8371
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 8372
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8374
    invoke-static {p1, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 8376
    :cond_4
    new-instance p0, Lcom/google/android/material/k/h;

    .line 9271
    iget-object v0, v1, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v0, v0, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 8377
    invoke-direct {p0, v0}, Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/m;)V

    .line 8378
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v8

    aput-object p0, v0, v4

    .line 8380
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 8381
    invoke-static {p1}, Landroidx/core/view/v;->i(Landroid/view/View;)I

    move-result v0

    .line 8382
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v1

    .line 8383
    invoke-static {p1}, Landroidx/core/view/v;->j(Landroid/view/View;)I

    move-result v2

    .line 8384
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v3

    .line 8385
    invoke-static {p1, p0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 8386
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/v;->b(Landroid/view/View;IIII)V

    :cond_5
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/google/android/material/textfield/d;->a:Z

    return v0
.end method

.method private static c(Landroid/widget/EditText;)Z
    .locals 0

    .line 454
    invoke-virtual {p0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/textfield/d;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->f:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    .line 9394
    new-instance v0, Lcom/google/android/material/textfield/d$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/textfield/d$8;-><init>(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9407
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->f:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 9408
    sget-boolean v0, Lcom/google/android/material/textfield/d;->a:Z

    if-eqz v0, :cond_0

    .line 9409
    new-instance v0, Lcom/google/android/material/textfield/d$9;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/d$9;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 5

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/d;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic e(Lcom/google/android/material/textfield/d;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/google/android/material/textfield/d;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/textfield/d;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/android/material/textfield/d;->k:Z

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/textfield/d;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/d;->q:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->d:Landroid/content/Context;

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$d;->mtrl_shape_corner_size_small_component:I

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 211
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->d:Landroid/content/Context;

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$d;->mtrl_exposed_dropdown_menu_popup_elevation:I

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 215
    iget-object v2, p0, Lcom/google/android/material/textfield/d;->d:Landroid/content/Context;

    .line 217
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/a$d;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 218
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 222
    invoke-direct {p0, v0, v0, v1, v2}, Lcom/google/android/material/textfield/d;->a(FFFI)Lcom/google/android/material/k/h;

    move-result-object v3

    const/4 v4, 0x0

    .line 229
    invoke-direct {p0, v4, v0, v1, v2}, Lcom/google/android/material/textfield/d;->a(FFFI)Lcom/google/android/material/k/h;

    move-result-object v0

    .line 235
    iput-object v3, p0, Lcom/google/android/material/textfield/d;->n:Lcom/google/android/material/k/h;

    .line 236
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/d;->m:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, 0x10100aa

    const/4 v5, 0x0

    aput v4, v2, v5

    .line 237
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->m:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 243
    sget-boolean v0, Lcom/google/android/material/textfield/d;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/a$e;->mtrl_dropdown_arrow:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/a$e;->mtrl_ic_arrow_drop_down:I

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/d;->d:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 247
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$j;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/d$7;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/d$7;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/d;->h:Lcom/google/android/material/textfield/TextInputLayout$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$b;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/d;->i:Lcom/google/android/material/textfield/TextInputLayout$c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$c;)V

    const/16 v0, 0x43

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 1466
    fill-array-data v2, :array_0

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/textfield/d;->a(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->q:Landroid/animation/ValueAnimator;

    const/16 v0, 0x32

    new-array v1, v1, [F

    .line 1467
    fill-array-data v1, :array_1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/d;->a(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->p:Landroid/animation/ValueAnimator;

    .line 1468
    new-instance v1, Lcom/google/android/material/textfield/d$10;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/d$10;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->d:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->o:Landroid/view/accessibility/AccessibilityManager;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method final a(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
