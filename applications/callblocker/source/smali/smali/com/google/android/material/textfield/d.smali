.class Lcom/google/android/material/textfield/d;
.super Lcom/google/android/material/textfield/e;
.source "DropdownMenuEndIconDelegate.java"


# static fields
.field private static final d:Z


# instance fields
.field private final e:Landroid/text/TextWatcher;

.field private final f:Lcom/google/android/material/textfield/TextInputLayout$a;

.field private final g:Lcom/google/android/material/textfield/TextInputLayout$b;

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Landroid/graphics/drawable/StateListDrawable;

.field private l:Lcom/google/android/material/q/g;

.field private m:Landroid/view/accessibility/AccessibilityManager;

.field private n:Landroid/animation/ValueAnimator;

.field private o:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 70
    new-instance v0, Lcom/google/android/material/textfield/d$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/d$1;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->e:Landroid/text/TextWatcher;

    .line 93
    new-instance v0, Lcom/google/android/material/textfield/d$2;

    iget-object v1, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/textfield/d$2;-><init>(Lcom/google/android/material/textfield/d;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->f:Lcom/google/android/material/textfield/TextInputLayout$a;

    .line 120
    new-instance v0, Lcom/google/android/material/textfield/d$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/d$3;-><init>(Lcom/google/android/material/textfield/d;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->g:Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 140
    iput-boolean v2, p0, Lcom/google/android/material/textfield/d;->h:Z

    .line 141
    iput-boolean v2, p0, Lcom/google/android/material/textfield/d;->i:Z

    .line 142
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/material/textfield/d;->j:J

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;J)J
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/google/android/material/textfield/d;->j:J

    return-wide p1
.end method

.method private varargs a(I[F)Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 434
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 435
    sget-object v1, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 436
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 437
    new-instance v1, Lcom/google/android/material/textfield/d$9;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/d$9;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->m:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private a(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 2

    .prologue
    .line 403
    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->a(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    return-object v0
.end method

.method private a(FFFI)Lcom/google/android/material/q/g;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 383
    invoke-static {}, Lcom/google/android/material/q/k;->a()Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p1}, Lcom/google/android/material/q/k$a;->b(F)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p1}, Lcom/google/android/material/q/k$a;->c(F)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p2}, Lcom/google/android/material/q/k$a;->e(F)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 387
    invoke-virtual {v0, p2}, Lcom/google/android/material/q/k$a;->d(F)Lcom/google/android/material/q/k$a;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    .line 390
    invoke-static {v1, p3}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;F)Lcom/google/android/material/q/g;

    move-result-object v1

    .line 391
    invoke-virtual {v1, v0}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 392
    invoke-virtual {v1, v2, p4, v2, p4}, Lcom/google/android/material/q/g;->a(IIII)V

    .line 393
    return-object v1
.end method

.method private a(Landroid/widget/AutoCompleteTextView;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/d;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    iput-boolean v1, p0, Lcom/google/android/material/textfield/d;->h:Z

    .line 228
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/material/textfield/d;->h:Z

    if-nez v2, :cond_6

    .line 229
    sget-boolean v2, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v2, :cond_3

    .line 230
    iget-boolean v2, p0, Lcom/google/android/material/textfield/d;->i:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/d;->a(Z)V

    .line 235
    :goto_2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->i:Z

    if-eqz v0, :cond_5

    .line 236
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 237
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 230
    goto :goto_1

    .line 232
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/material/textfield/d;->i:Z

    if-nez v2, :cond_4

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/textfield/d;->i:Z

    .line 233
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 232
    goto :goto_3

    .line 239
    :cond_5
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 242
    :cond_6
    iput-boolean v1, p0, Lcom/google/android/material/textfield/d;->h:Z

    goto :goto_0
.end method

.method private a(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/q/g;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 284
    sget v0, Lcom/google/android/material/a$b;->colorSurface:I

    invoke-static {p1, v0}, Lcom/google/android/material/g/a;->a(Landroid/view/View;I)I

    move-result v0

    .line 285
    new-instance v1, Lcom/google/android/material/q/g;

    .line 286
    invoke-virtual {p4}, Lcom/google/android/material/q/g;->L()Lcom/google/android/material/q/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    .line 287
    const v2, 0x3dcccccd    # 0.1f

    invoke-static {p2, v0, v2}, Lcom/google/android/material/g/a;->a(IIF)I

    move-result v2

    .line 288
    new-array v3, v7, [I

    aput v2, v3, v5

    aput v5, v3, v6

    .line 289
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, p3, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v4}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 291
    sget-boolean v3, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v3, :cond_0

    .line 292
    invoke-virtual {v1, v0}, Lcom/google/android/material/q/g;->setTint(I)V

    .line 293
    new-array v3, v7, [I

    aput v2, v3, v5

    aput v0, v3, v6

    .line 294
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p3, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 295
    new-instance v2, Lcom/google/android/material/q/g;

    .line 296
    invoke-virtual {p4}, Lcom/google/android/material/q/g;->L()Lcom/google/android/material/q/k;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    .line 297
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/q/g;->setTint(I)V

    .line 298
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v3, v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 299
    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v5

    aput-object p4, v1, v6

    .line 300
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 306
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 307
    return-void

    .line 302
    :cond_0
    new-array v2, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v5

    aput-object p4, v2, v6

    .line 303
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->a(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/d;Z)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->i:Z

    if-eq v0, p1, :cond_0

    .line 414
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->i:Z

    .line 415
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 416
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 418
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/textfield/d;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->e:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private b(Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    .prologue
    .line 247
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    .line 249
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->l:Lcom/google/android/material/q/g;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->k:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private b(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/q/g;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 314
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v0

    .line 315
    const v1, 0x3dcccccd    # 0.1f

    invoke-static {p2, v0, v1}, Lcom/google/android/material/g/a;->a(IIF)I

    move-result v1

    .line 316
    new-array v2, v5, [I

    aput v1, v2, v3

    aput v0, v2, v4

    .line 318
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 320
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v1, v0, p4, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-static {p1, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 336
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v0, Lcom/google/android/material/q/g;

    .line 325
    invoke-virtual {p4}, Lcom/google/android/material/q/g;->L()Lcom/google/android/material/q/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    .line 326
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, p3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 327
    new-array v1, v5, [Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v3

    aput-object v0, v1, v4

    .line 328
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 329
    invoke-static {p1}, Landroidx/core/h/u;->i(Landroid/view/View;)I

    move-result v1

    .line 330
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v2

    .line 331
    invoke-static {p1}, Landroidx/core/h/u;->j(Landroid/view/View;)I

    move-result v3

    .line 332
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v4

    .line 333
    invoke-static {p1, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 334
    invoke-static {p1, v1, v2, v3, v4}, Landroidx/core/h/u;->a(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/textfield/d;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/material/textfield/d;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/textfield/d;)Lcom/google/android/material/textfield/TextInputLayout$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->f:Lcom/google/android/material/textfield/TextInputLayout$a;

    return-object v0
.end method

.method private c(Landroid/widget/AutoCompleteTextView;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 259
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v0

    .line 264
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lcom/google/android/material/q/g;

    move-result-object v1

    .line 265
    sget v2, Lcom/google/android/material/a$b;->colorControlHighlight:I

    invoke-static {p1, v2}, Lcom/google/android/material/g/a;->a(Landroid/view/View;I)I

    move-result v2

    .line 266
    new-array v3, v8, [[I

    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    aput-object v4, v3, v6

    new-array v4, v6, [I

    aput-object v4, v3, v7

    .line 271
    if-ne v0, v8, :cond_2

    .line 272
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/google/android/material/textfield/d;->a(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/q/g;)V

    goto :goto_0

    .line 273
    :cond_2
    if-ne v0, v7, :cond_0

    .line 274
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/google/android/material/textfield/d;->b(Landroid/widget/AutoCompleteTextView;I[[ILcom/google/android/material/q/g;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->c(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/d;->j:J

    sub-long/2addr v0, v2

    .line 398
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 421
    const/16 v0, 0x43

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/d;->a(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->o:Landroid/animation/ValueAnimator;

    .line 422
    const/16 v0, 0x32

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/textfield/d;->a(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->n:Landroid/animation/ValueAnimator;

    .line 423
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/d$8;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/d$8;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    return-void

    .line 421
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 422
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private d(Landroid/widget/AutoCompleteTextView;)V
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/google/android/material/textfield/d$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/textfield/d$5;-><init>(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    new-instance v0, Lcom/google/android/material/textfield/d$6;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/d$6;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 367
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lcom/google/android/material/textfield/d$7;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/d$7;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 378
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/d;->d(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/textfield/d;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/material/textfield/d;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/google/android/material/textfield/d;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/material/textfield/d;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/material/textfield/d;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->o:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$d;->mtrl_shape_corner_size_small_component:I

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 159
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    .line 161
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$d;->mtrl_exposed_dropdown_menu_popup_elevation:I

    .line 162
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 163
    iget-object v2, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    .line 165
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/a$d;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    .line 166
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 170
    invoke-direct {p0, v0, v0, v1, v2}, Lcom/google/android/material/textfield/d;->a(FFFI)Lcom/google/android/material/q/g;

    move-result-object v3

    .line 176
    const/4 v4, 0x0

    .line 177
    invoke-direct {p0, v4, v0, v1, v2}, Lcom/google/android/material/textfield/d;->a(FFFI)Lcom/google/android/material/q/g;

    move-result-object v0

    .line 183
    iput-object v3, p0, Lcom/google/android/material/textfield/d;->l:Lcom/google/android/material/q/g;

    .line 184
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/textfield/d;->k:Landroid/graphics/drawable/StateListDrawable;

    .line 185
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->k:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, 0x10100aa

    aput v4, v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->k:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 191
    sget-boolean v0, Lcom/google/android/material/textfield/d;->d:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/a$e;->mtrl_dropdown_arrow:I

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 195
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$j;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/d$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/d$4;-><init>(Lcom/google/android/material/textfield/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/d;->g:Lcom/google/android/material/textfield/TextInputLayout$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$b;)V

    .line 205
    invoke-direct {p0}, Lcom/google/android/material/textfield/d;->d()V

    .line 206
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->c:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/material/textfield/d;->b:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/d;->m:Landroid/view/accessibility/AccessibilityManager;

    .line 209
    return-void

    .line 191
    :cond_0
    sget v0, Lcom/google/android/material/a$e;->mtrl_ic_arrow_drop_down:I

    goto :goto_0
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 218
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method
