.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$a;,
        Lcom/google/android/material/textfield/TextInputLayout$d;,
        Lcom/google/android/material/textfield/TextInputLayout$c;,
        Lcom/google/android/material/textfield/TextInputLayout$b;
    }
.end annotation


# static fields
.field private static final d:I


# instance fields
.field private final A:I

.field private B:I

.field private C:I

.field private final D:Landroid/graphics/Rect;

.field private final E:Landroid/graphics/Rect;

.field private final F:Landroid/graphics/RectF;

.field private G:Landroid/graphics/Typeface;

.field private final H:Lcom/google/android/material/internal/CheckableImageButton;

.field private I:Landroid/content/res/ColorStateList;

.field private J:Z

.field private K:Landroid/graphics/PorterDuff$Mode;

.field private L:Z

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Landroid/view/View$OnLongClickListener;

.field private final O:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/material/textfield/TextInputLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private P:I

.field private final Q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/material/textfield/e;",
            ">;"
        }
    .end annotation
.end field

.field private final R:Lcom/google/android/material/internal/CheckableImageButton;

.field private final S:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/google/android/material/textfield/TextInputLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private T:Landroid/content/res/ColorStateList;

.field private U:Z

.field private V:Landroid/graphics/PorterDuff$Mode;

.field private W:Z

.field a:Landroid/widget/EditText;

.field private aa:Landroid/graphics/drawable/Drawable;

.field private ab:Landroid/graphics/drawable/Drawable;

.field private final ac:Lcom/google/android/material/internal/CheckableImageButton;

.field private ad:Landroid/view/View$OnLongClickListener;

.field private ae:Landroid/content/res/ColorStateList;

.field private af:Landroid/content/res/ColorStateList;

.field private final ag:I

.field private final ah:I

.field private ai:I

.field private aj:I

.field private final ak:I

.field private final al:I

.field private final am:I

.field private an:Z

.field private ao:Z

.field private ap:Landroid/animation/ValueAnimator;

.field private aq:Z

.field private ar:Z

.field b:Z

.field final c:Lcom/google/android/material/internal/a;

.field private final e:Landroid/widget/FrameLayout;

.field private final f:Landroid/widget/FrameLayout;

.field private g:Ljava/lang/CharSequence;

.field private final h:Lcom/google/android/material/textfield/f;

.field private i:I

.field private j:Z

.field private k:Landroid/widget/TextView;

.field private l:I

.field private m:I

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/content/res/ColorStateList;

.field private p:Z

.field private q:Ljava/lang/CharSequence;

.field private r:Z

.field private s:Lcom/google/android/material/q/g;

.field private t:Lcom/google/android/material/q/g;

.field private u:Lcom/google/android/material/q/k;

.field private final v:I

.field private w:I

.field private final x:I

.field private y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    sget v0, Lcom/google/android/material/a$k;->Widget_Design_TextInputLayout:I

    sput v0, Lcom/google/android/material/textfield/TextInputLayout;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 396
    sget v0, Lcom/google/android/material/a$b;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 397
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 400
    sget v0, Lcom/google/android/material/textfield/TextInputLayout;->d:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    new-instance v0, Lcom/google/android/material/textfield/f;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/graphics/Rect;

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/graphics/Rect;

    .line 237
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/graphics/RectF;

    .line 349
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Ljava/util/LinkedHashSet;

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 353
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/util/SparseArray;

    .line 355
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Ljava/util/LinkedHashSet;

    .line 382
    new-instance v0, Lcom/google/android/material/internal/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    .line 402
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 404
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setOrientation(I)V

    .line 405
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setWillNotDraw(Z)V

    .line 406
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 408
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    .line 409
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 410
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;)V

    .line 411
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/FrameLayout;

    .line 412
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const v5, 0x800015

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 419
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    sget-object v2, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/a;->a(Landroid/animation/TimeInterpolator;)V

    .line 420
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    sget-object v2, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/a;->b(Landroid/animation/TimeInterpolator;)V

    .line 421
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    const v2, 0x800033

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/a;->b(I)V

    .line 423
    sget-object v2, Lcom/google/android/material/a$l;->TextInputLayout:[I

    sget v4, Lcom/google/android/material/textfield/TextInputLayout;->d:I

    const/4 v1, 0x5

    new-array v5, v1, [I

    const/4 v1, 0x0

    sget v3, Lcom/google/android/material/a$l;->TextInputLayout_counterTextAppearance:I

    aput v3, v5, v1

    const/4 v1, 0x1

    sget v3, Lcom/google/android/material/a$l;->TextInputLayout_counterOverflowTextAppearance:I

    aput v3, v5, v1

    const/4 v1, 0x2

    sget v3, Lcom/google/android/material/a$l;->TextInputLayout_errorTextAppearance:I

    aput v3, v5, v1

    const/4 v1, 0x3

    sget v3, Lcom/google/android/material/a$l;->TextInputLayout_helperTextTextAppearance:I

    aput v3, v5, v1

    const/4 v1, 0x4

    sget v3, Lcom/google/android/material/a$l;->TextInputLayout_hintTextAppearance:I

    aput v3, v5, v1

    move-object v1, p2

    move v3, p3

    .line 424
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/i;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/ap;

    move-result-object v2

    .line 436
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_hintEnabled:I

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    .line 437
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_android_hint:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 438
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_hintAnimationEnabled:I

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ao:Z

    .line 440
    sget v1, Lcom/google/android/material/textfield/TextInputLayout;->d:I

    .line 441
    invoke-static {v0, p2, p3, v1}, Lcom/google/android/material/q/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/q/k$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Lcom/google/android/material/q/k;

    .line 445
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/a$d;->mtrl_textinput_box_label_cutout_padding:I

    .line 446
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    .line 447
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_boxCollapsedPaddingTop:I

    const/4 v3, 0x0

    .line 448
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->d(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 450
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_boxStrokeWidth:I

    .line 454
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/a$d;->mtrl_textinput_box_stroke_width_default:I

    .line 455
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 451
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    .line 456
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_boxStrokeWidthFocused:I

    .line 460
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/a$d;->mtrl_textinput_box_stroke_width_focused:I

    .line 461
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 457
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->e(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    .line 462
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    .line 464
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_boxCornerRadiusTopStart:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 465
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->b(IF)F

    move-result v1

    .line 466
    sget v3, Lcom/google/android/material/a$l;->TextInputLayout_boxCornerRadiusTopEnd:I

    const/high16 v4, -0x40800000    # -1.0f

    .line 467
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/widget/ap;->b(IF)F

    move-result v3

    .line 468
    sget v4, Lcom/google/android/material/a$l;->TextInputLayout_boxCornerRadiusBottomEnd:I

    const/high16 v5, -0x40800000    # -1.0f

    .line 469
    invoke-virtual {v2, v4, v5}, Landroidx/appcompat/widget/ap;->b(IF)F

    move-result v4

    .line 470
    sget v5, Lcom/google/android/material/a$l;->TextInputLayout_boxCornerRadiusBottomStart:I

    const/high16 v6, -0x40800000    # -1.0f

    .line 471
    invoke-virtual {v2, v5, v6}, Landroidx/appcompat/widget/ap;->b(IF)F

    move-result v5

    .line 472
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Lcom/google/android/material/q/k;

    invoke-virtual {v6}, Lcom/google/android/material/q/k;->n()Lcom/google/android/material/q/k$a;

    move-result-object v6

    .line 473
    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-ltz v7, :cond_0

    .line 474
    invoke-virtual {v6, v1}, Lcom/google/android/material/q/k$a;->b(F)Lcom/google/android/material/q/k$a;

    .line 476
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_1

    .line 477
    invoke-virtual {v6, v3}, Lcom/google/android/material/q/k$a;->c(F)Lcom/google/android/material/q/k$a;

    .line 479
    :cond_1
    const/4 v1, 0x0

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_2

    .line 480
    invoke-virtual {v6, v4}, Lcom/google/android/material/q/k$a;->d(F)Lcom/google/android/material/q/k$a;

    .line 482
    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_3

    .line 483
    invoke-virtual {v6, v5}, Lcom/google/android/material/q/k$a;->e(F)Lcom/google/android/material/q/k$a;

    .line 485
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/material/q/k$a;->a()Lcom/google/android/material/q/k;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Lcom/google/android/material/q/k;

    .line 487
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_boxBackgroundColor:I

    .line 488
    invoke-static {v0, v2, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_18

    .line 491
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:I

    .line 492
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:I

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 493
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 494
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, -0x101009e

    aput v5, v3, v4

    const/4 v4, -0x1

    .line 495
    invoke-virtual {v1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:I

    .line 497
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x1010367

    aput v5, v3, v4

    const/4 v4, -0x1

    .line 498
    invoke-virtual {v1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:I

    .line 517
    :goto_0
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 518
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_android_textColorHint:I

    .line 519
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/content/res/ColorStateList;

    .line 522
    :cond_4
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_boxStrokeColor:I

    .line 523
    invoke-static {v0, v2, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 525
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:I

    .line 526
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, -0x101009e

    aput v5, v3, v4

    const/4 v4, -0x1

    .line 527
    invoke-virtual {v1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:I

    .line 528
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x1010367

    aput v5, v3, v4

    const/4 v4, -0x1

    .line 529
    invoke-virtual {v1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ah:I

    .line 530
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x101009c

    aput v5, v3, v4

    const/4 v4, -0x1

    .line 531
    invoke-virtual {v1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:I

    .line 544
    :goto_1
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_hintTextAppearance:I

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v1

    .line 545
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 546
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_hintTextAppearance:I

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextAppearance(I)V

    .line 549
    :cond_5
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorTextAppearance:I

    const/4 v3, 0x0

    .line 550
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v3

    .line 551
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorEnabled:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v4

    .line 555
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/google/android/material/a$h;->design_text_input_end_icon:I

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    .line 556
    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    .line 557
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 558
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 559
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 560
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorIconDrawable:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    :cond_6
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorIconTint:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 563
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorIconTint:I

    .line 564
    invoke-static {v0, v2, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 563
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintList(Landroid/content/res/ColorStateList;)V

    .line 567
    :cond_7
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorIconTintMode:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 568
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorIconTintMode:I

    const/4 v5, -0x1

    .line 570
    invoke-virtual {v2, v1, v5}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    const/4 v5, 0x0

    .line 569
    invoke-static {v1, v5}, Lcom/google/android/material/internal/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 568
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 572
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    .line 573
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/a$j;->error_icon_content_description:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 572
    invoke-virtual {v1, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 576
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    .line 577
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 578
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    .line 580
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_helperTextTextAppearance:I

    const/4 v5, 0x0

    .line 581
    invoke-virtual {v2, v1, v5}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v5

    .line 582
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_helperTextEnabled:I

    const/4 v6, 0x0

    .line 583
    invoke-virtual {v2, v1, v6}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v6

    .line 584
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_helperText:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 586
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_counterEnabled:I

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v8

    .line 587
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_counterMaxLength:I

    const/4 v9, -0x1

    invoke-virtual {v2, v1, v9}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterMaxLength(I)V

    .line 588
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_counterTextAppearance:I

    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:I

    .line 589
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_counterOverflowTextAppearance:I

    const/4 v9, 0x0

    .line 590
    invoke-virtual {v2, v1, v9}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 595
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v9, Lcom/google/android/material/a$h;->design_text_input_start_icon:I

    iget-object v10, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    .line 596
    invoke-virtual {v1, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    .line 597
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 598
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 599
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 602
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 603
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_startIconDrawable:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_startIconContentDescription:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 605
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_startIconContentDescription:I

    .line 606
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 605
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 608
    :cond_9
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_startIconCheckable:I

    const/4 v9, 0x1

    invoke-virtual {v2, v1, v9}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconCheckable(Z)V

    .line 611
    :cond_a
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_startIconTint:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 612
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_startIconTint:I

    .line 613
    invoke-static {v0, v2, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 612
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintList(Landroid/content/res/ColorStateList;)V

    .line 617
    :cond_b
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_startIconTintMode:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 618
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_startIconTintMode:I

    const/4 v9, -0x1

    .line 620
    invoke-virtual {v2, v1, v9}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    const/4 v9, 0x0

    .line 619
    invoke-static {v1, v9}, Lcom/google/android/material/internal/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 618
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 623
    :cond_c
    invoke-virtual {p0, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 624
    invoke-virtual {p0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-virtual {p0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 626
    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 627
    invoke-virtual {p0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextAppearance(I)V

    .line 628
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextAppearance(I)V

    .line 629
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextAppearance(I)V

    .line 631
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorTextColor:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 632
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_errorTextColor:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorTextColor(Landroid/content/res/ColorStateList;)V

    .line 634
    :cond_d
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 635
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_helperTextTextColor:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextColor(Landroid/content/res/ColorStateList;)V

    .line 637
    :cond_e
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_hintTextColor:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 638
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_hintTextColor:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 640
    :cond_f
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_counterTextColor:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 641
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_counterTextColor:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterTextColor(Landroid/content/res/ColorStateList;)V

    .line 643
    :cond_10
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_counterOverflowTextColor:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 644
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_counterOverflowTextColor:I

    .line 645
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 644
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V

    .line 647
    :cond_11
    invoke-virtual {p0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setCounterEnabled(Z)V

    .line 649
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_boxBackgroundMode:I

    const/4 v3, 0x0

    .line 650
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    .line 649
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 655
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/google/android/material/a$h;->design_text_input_end_icon:I

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    .line 656
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    .line 657
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 658
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 659
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/util/SparseArray;

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/material/textfield/b;

    invoke-direct {v4, p0}, Lcom/google/android/material/textfield/b;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 660
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/util/SparseArray;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/material/textfield/g;

    invoke-direct {v4, p0}, Lcom/google/android/material/textfield/g;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 661
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/util/SparseArray;

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/material/textfield/h;

    invoke-direct {v4, p0}, Lcom/google/android/material/textfield/h;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 662
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/util/SparseArray;

    const/4 v3, 0x2

    new-instance v4, Lcom/google/android/material/textfield/a;

    invoke-direct {v4, p0}, Lcom/google/android/material/textfield/a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 663
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/util/SparseArray;

    const/4 v3, 0x3

    new-instance v4, Lcom/google/android/material/textfield/d;

    invoke-direct {v4, p0}, Lcom/google/android/material/textfield/d;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 665
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_endIconMode:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 667
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_endIconMode:I

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 669
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 670
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_endIconDrawable:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_12
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_endIconContentDescription:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 673
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_endIconContentDescription:I

    .line 674
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 673
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 676
    :cond_13
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_endIconCheckable:I

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 697
    :cond_14
    :goto_2
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 699
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_endIconTint:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 700
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_endIconTint:I

    .line 701
    invoke-static {v0, v2, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 700
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 705
    :cond_15
    sget v0, Lcom/google/android/material/a$l;->TextInputLayout_endIconTintMode:I

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 706
    sget v0, Lcom/google/android/material/a$l;->TextInputLayout_endIconTintMode:I

    const/4 v1, -0x1

    .line 708
    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v0

    const/4 v1, 0x0

    .line 707
    invoke-static {v0, v1}, Lcom/google/android/material/internal/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 706
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 712
    :cond_16
    invoke-virtual {v2}, Landroidx/appcompat/widget/ap;->a()V

    .line 716
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 717
    return-void

    .line 501
    :cond_17
    sget v1, Lcom/google/android/material/a$c;->mtrl_filled_background_color:I

    .line 502
    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 503
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, -0x101009e

    aput v5, v3, v4

    const/4 v4, -0x1

    .line 504
    invoke-virtual {v1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:I

    .line 506
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x1010367

    aput v5, v3, v4

    const/4 v4, -0x1

    .line 507
    invoke-virtual {v1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:I

    goto/16 :goto_0

    .line 511
    :cond_18
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 512
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:I

    .line 513
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:I

    .line 514
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:I

    goto/16 :goto_0

    .line 535
    :cond_19
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_boxStrokeColor:I

    const/4 v3, 0x0

    .line 536
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->b(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:I

    .line 537
    sget v1, Lcom/google/android/material/a$c;->mtrl_textinput_default_box_stroke_color:I

    .line 538
    invoke-static {v0, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:I

    .line 539
    sget v1, Lcom/google/android/material/a$c;->mtrl_textinput_disabled_color:I

    invoke-static {v0, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:I

    .line 540
    sget v1, Lcom/google/android/material/a$c;->mtrl_textinput_hovered_box_stroke_color:I

    .line 541
    invoke-static {v0, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ah:I

    goto/16 :goto_1

    .line 677
    :cond_1a
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 679
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_passwordToggleEnabled:I

    const/4 v3, 0x0

    .line 680
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->a(IZ)Z

    move-result v1

    .line 681
    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 682
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_passwordToggleContentDescription:I

    .line 684
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 683
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 685
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 686
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_passwordToggleTint:I

    .line 687
    invoke-static {v0, v2, v1}, Lcom/google/android/material/n/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ap;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 686
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintList(Landroid/content/res/ColorStateList;)V

    .line 690
    :cond_1b
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 691
    sget v1, Lcom/google/android/material/a$l;->TextInputLayout_passwordToggleTintMode:I

    const/4 v3, -0x1

    .line 693
    invoke-virtual {v2, v1, v3}, Landroidx/appcompat/widget/ap;->a(II)I

    move-result v1

    const/4 v3, 0x0

    .line 692
    invoke-static {v1, v3}, Lcom/google/android/material/internal/j;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 691
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 681
    :cond_1c
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private A()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2903
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 2965
    :goto_0
    return v2

    .line 2909
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_3

    .line 2910
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 2911
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Landroid/graphics/drawable/Drawable;

    .line 2912
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2913
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2914
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2916
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2915
    invoke-static {v0}, Landroidx/core/h/f;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v3

    .line 2917
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2919
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2920
    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Landroid/graphics/drawable/Drawable;

    if-eq v3, v4, :cond_8

    .line 2921
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Landroid/graphics/drawable/Drawable;

    aget-object v5, v0, v1

    aget-object v6, v0, v7

    aget-object v0, v0, v8

    invoke-static {v3, v4, v5, v6, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    :goto_1
    move v3, v0

    .line 2935
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    .line 2936
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_4

    .line 2937
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 2938
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    .line 2940
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 2941
    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2943
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2942
    invoke-static {v0}, Landroidx/core/h/f;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v4

    .line 2944
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2946
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2948
    aget-object v4, v0, v7

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-eq v4, v5, :cond_6

    .line 2949
    aget-object v3, v0, v7

    iput-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ab:Landroid/graphics/drawable/Drawable;

    .line 2950
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    aget-object v2, v0, v2

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v8

    invoke-static {v3, v2, v4, v5, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    move v2, v1

    .line 2965
    goto/16 :goto_0

    .line 2925
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 2927
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2928
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    aget-object v4, v0, v1

    aget-object v5, v0, v7

    aget-object v0, v0, v8

    invoke-static {v3, v9, v4, v5, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2930
    iput-object v9, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Landroid/graphics/drawable/Drawable;

    move v3, v1

    .line 2931
    goto :goto_2

    .line 2954
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 2956
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2957
    aget-object v4, v0, v7

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    if-ne v4, v5, :cond_5

    .line 2958
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    aget-object v2, v0, v2

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ab:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v8

    invoke-static {v3, v2, v4, v5, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2962
    :goto_4
    iput-object v9, p0, Lcom/google/android/material/textfield/TextInputLayout;->aa:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    move v3, v2

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_1
.end method

.method private B()Z
    .locals 1

    .prologue
    .line 3100
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    instance-of v0, v0, Lcom/google/android/material/textfield/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()V
    .locals 3

    .prologue
    .line 3104
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3114
    :goto_0
    return-void

    .line 3107
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Landroid/graphics/RectF;

    .line 3108
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/RectF;)V

    .line 3109
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/RectF;)V

    .line 3112
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3113
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    check-cast v0, Lcom/google/android/material/textfield/c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/c;->a(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private D()V
    .locals 1

    .prologue
    .line 3117
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3118
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    check-cast v0, Lcom/google/android/material/textfield/c;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/c;->b()V

    .line 3120
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Rect;F)I
    .locals 2

    .prologue
    .line 1890
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 1893
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I
    .locals 2

    .prologue
    .line 1898
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1902
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    float-to-int v0, v0

    .line 1904
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1847
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/graphics/Rect;

    .line 1851
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1852
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    packed-switch v1, :pswitch_data_0

    .line 1864
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1865
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1866
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1867
    :goto_0
    return-object v0

    .line 1854
    :pswitch_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1855
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1856
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1859
    :pswitch_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1860
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1861
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1852
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Landroid/widget/TextView;IIZ)V
    .locals 4

    .prologue
    .line 1740
    if-eqz p4, :cond_0

    sget v0, Lcom/google/android/material/a$j;->character_counter_overflowed_content_description:I

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1745
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1746
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1741
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1740
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1747
    return-void

    .line 1740
    :cond_0
    sget v0, Lcom/google/android/material/a$j;->character_counter_content_description:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 3070
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v0, :cond_0

    .line 3071
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Canvas;)V

    .line 3073
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 3123
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 3124
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 3125
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 3126
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 3127
    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    .line 1759
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1760
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1761
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1762
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1763
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/view/ViewGroup;Z)V

    .line 1759
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1766
    :cond_1
    return-void
.end method

.method private static a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 3006
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3007
    invoke-static {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->b(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 3008
    return-void
.end method

.method private static a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 3012
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3013
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->b(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 3014
    return-void
.end method

.method private a(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 2985
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2986
    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    if-eqz p4, :cond_2

    .line 2987
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2989
    if-eqz p2, :cond_1

    .line 2990
    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2992
    :cond_1
    if-eqz p4, :cond_2

    .line 2993
    invoke-static {v0, p5}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2997
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 2998
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3000
    :cond_3
    return-void
.end method

.method private a(ZZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1147
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v3

    .line 1148
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1149
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1150
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v2

    .line 1153
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 1154
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    .line 1155
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/a;->b(Landroid/content/res/ColorStateList;)V

    .line 1159
    :cond_0
    if-nez v3, :cond_7

    .line 1160
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    .line 1161
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/a;->b(Landroid/content/res/ColorStateList;)V

    .line 1170
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v1, :cond_2

    if-eqz v2, :cond_a

    .line 1172
    :cond_2
    if-nez p2, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Z

    if-eqz v0, :cond_4

    .line 1173
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->c(Z)V

    .line 1181
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v0, v2

    .line 1148
    goto :goto_0

    :cond_6
    move v1, v2

    .line 1149
    goto :goto_1

    .line 1162
    :cond_7
    if-eqz v2, :cond_8

    .line 1163
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->k()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 1164
    :cond_8
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 1165
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 1166
    :cond_9
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    .line 1167
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 1177
    :cond_a
    if-nez p2, :cond_b

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Z

    if-nez v0, :cond_4

    .line 1178
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->d(Z)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Z

    return v0
.end method

.method private b(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 1874
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/graphics/Rect;

    .line 1879
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v1}, Lcom/google/android/material/internal/a;->b()F

    move-result v1

    .line 1881
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1882
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/Rect;F)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1883
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1884
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1886
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout$c;

    .line 2876
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/textfield/TextInputLayout$c;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V

    goto :goto_0

    .line 2878
    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 3078
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3079
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3080
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/q/g;->draw(Landroid/graphics/Canvas;)V

    .line 3082
    :cond_0
    return-void
.end method

.method private static b(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3018
    invoke-static {p0}, Landroidx/core/h/u;->C(Landroid/view/View;)Z

    move-result v3

    .line 3019
    if-eqz p1, :cond_2

    move v2, v1

    .line 3020
    :goto_0
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 3021
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    .line 3022
    invoke-virtual {p0, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    .line 3023
    invoke-virtual {p0, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 3024
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setLongClickable(Z)V

    .line 3025
    if-eqz v0, :cond_3

    :goto_1
    invoke-static {p0, v1}, Landroidx/core/h/u;->b(Landroid/view/View;I)V

    .line 3030
    return-void

    :cond_2
    move v2, v0

    .line 3019
    goto :goto_0

    .line 3025
    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 2881
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2884
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2885
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    .line 2886
    invoke-virtual {v1}, Lcom/google/android/material/textfield/f;->j()I

    move-result v1

    .line 2885
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 2887
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2891
    :goto_0
    return-void

    .line 2889
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    goto :goto_0
.end method

.method private c(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    .line 3057
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    sub-int/2addr v0, v1

    .line 3058
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/material/q/g;->setBounds(IIII)V

    .line 3060
    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3085
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3086
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3088
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ao:Z

    if-eqz v0, :cond_2

    .line 3089
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 3093
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Z

    .line 3094
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3095
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    .line 3097
    :cond_1
    return-void

    .line 3091
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->b(F)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3227
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3228
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3230
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ao:Z

    if-eqz v0, :cond_2

    .line 3231
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(F)V

    .line 3235
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    check-cast v0, Lcom/google/android/material/textfield/c;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3236
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->D()V

    .line 3238
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Z

    .line 3239
    return-void

    .line 3233
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->b(F)V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    .line 787
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()V

    .line 788
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 789
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    if-eqz v0, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    .line 792
    :cond_0
    return-void
.end method

.method private getEndIconDelegate()Lcom/google/android/material/textfield/e;
    .locals 2

    .prologue
    .line 2847
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/e;

    .line 2848
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/e;

    goto :goto_0
.end method

.method private getEndIconToUpdateDummyDrawable()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2971
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2975
    :goto_0
    return-object v0

    .line 2972
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2973
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    goto :goto_0

    .line 2975
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 795
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    packed-switch v0, :pswitch_data_0

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :pswitch_0
    new-instance v0, Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Lcom/google/android/material/q/k;

    invoke-direct {v0, v1}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    .line 798
    new-instance v0, Lcom/google/android/material/q/g;

    invoke-direct {v0}, Lcom/google/android/material/q/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    .line 816
    :goto_0
    return-void

    .line 801
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    instance-of v0, v0, Lcom/google/android/material/textfield/c;

    if-nez v0, :cond_0

    .line 802
    new-instance v0, Lcom/google/android/material/textfield/c;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Lcom/google/android/material/q/k;

    invoke-direct {v0, v1}, Lcom/google/android/material/textfield/c;-><init>(Lcom/google/android/material/q/k;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    .line 806
    :goto_1
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    goto :goto_0

    .line 804
    :cond_0
    new-instance v0, Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Lcom/google/android/material/q/k;

    invoke-direct {v0, v1}, Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/k;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    goto :goto_1

    .line 809
    :pswitch_2
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    .line 810
    iput-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    goto :goto_0

    .line 795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i()V
    .locals 2

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 823
    :cond_0
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 830
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    .line 830
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 1122
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1124
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()I

    move-result v1

    .line 1126
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    .line 1127
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1128
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1131
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1693
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(I)V

    .line 1695
    :cond_0
    return-void

    .line 1693
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1791
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/widget/TextView;I)V

    .line 1793
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1796
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 1797
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1800
    :cond_1
    return-void

    .line 1791
    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:I

    goto :goto_0
.end method

.method private n()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1829
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-nez v1, :cond_0

    .line 1840
    :goto_0
    return v0

    .line 1833
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1838
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->c()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 1835
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->c()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 1833
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private o()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1908
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    if-ne v1, v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 1909
    invoke-virtual {v1}, Landroid/widget/EditText;->getMinLines()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 1908
    :cond_0
    :goto_0
    return v0

    .line 1909
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()I
    .locals 3

    .prologue
    .line 1919
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 1920
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1921
    sget v0, Lcom/google/android/material/a$b;->colorSurface:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/material/g/a;->a(Landroid/view/View;II)I

    move-result v0

    .line 1922
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    invoke-static {v0, v1}, Lcom/google/android/material/g/a;->a(II)I

    move-result v0

    .line 1924
    :cond_0
    return v0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    if-nez v0, :cond_0

    .line 1946
    :goto_0
    return-void

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Lcom/google/android/material/q/k;

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->setShapeAppearanceModel(Lcom/google/android/material/q/k;)V

    .line 1934
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1935
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/q/g;->a(FI)V

    .line 1938
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->p()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 1939
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 1940
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1942
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1944
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->r()V

    .line 1945
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    if-nez v0, :cond_0

    .line 1958
    :goto_0
    return-void

    .line 1954
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1955
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lcom/google/android/material/q/g;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 1957
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    goto :goto_0
.end method

.method private s()Z
    .locals 2

    .prologue
    .line 1961
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1044
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_1

    .line 1049
    const-string/jumbo v0, "TextInputLayout"

    const-string/jumbo v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 1056
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()V

    .line 1057
    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$a;)V

    .line 1060
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->b(Landroid/graphics/Typeface;)V

    .line 1061
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/a;->a(F)V

    .line 1063
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    .line 1064
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/a;->b(I)V

    .line 1066
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->a(I)V

    .line 1069
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$1;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1087
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    .line 1088
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/content/res/ColorStateList;

    .line 1092
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v0, :cond_4

    .line 1093
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1095
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;

    .line 1096
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1098
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1100
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z

    .line 1103
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1104
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(I)V

    .line 1106
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 1108
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->d()V

    .line 1110
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->bringToFront()V

    .line 1111
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 1112
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->bringToFront()V

    .line 1113
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 1116
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->a(ZZ)V

    .line 1117
    return-void
.end method

.method private setErrorIconVisible(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3219
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 3220
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3221
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3222
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()Z

    .line 3224
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 3219
    goto :goto_0

    :cond_2
    move v2, v1

    .line 3220
    goto :goto_1
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;

    .line 1205
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->a(Ljava/lang/CharSequence;)V

    .line 1207
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Z

    if-nez v0, :cond_0

    .line 1208
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    .line 1211
    :cond_0
    return-void
.end method

.method private t()Z
    .locals 2

    .prologue
    .line 1965
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2159
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 2173
    :cond_0
    :goto_0
    return v0

    .line 2166
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    .line 2167
    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CheckableImageButton;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2168
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 2170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 2853
    invoke-interface {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$b;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_0

    .line 2855
    :cond_0
    return-void
.end method

.method private w()Z
    .locals 1

    .prologue
    .line 2858
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()V
    .locals 6

    .prologue
    .line 2862
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/content/res/ColorStateList;

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    .line 2868
    return-void
.end method

.method private y()Z
    .locals 1

    .prologue
    .line 2871
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()V
    .locals 6

    .prologue
    .line 2894
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    .line 2896
    return-void
.end method


# virtual methods
.method a(F)V
    .locals 4

    .prologue
    .line 3243
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->f()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 3260
    :goto_0
    return-void

    .line 3246
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 3247
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    .line 3248
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3249
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3250
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$4;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3258
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v3}, Lcom/google/android/material/internal/a;->f()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3259
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ap:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method a(I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1698
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    .line 1699
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 1700
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1701
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1702
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    .line 1727
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eq v3, v0, :cond_0

    .line 1728
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 1729
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 1730
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 1732
    :cond_0
    return-void

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/h/u;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1708
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/h/u;->d(Landroid/view/View;I)V

    .line 1711
    :cond_2
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    if-le p1, v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    .line 1713
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    iget-boolean v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    .line 1712
    invoke-static {v0, v4, p1, v5, v6}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/content/Context;Landroid/widget/TextView;IIZ)V

    .line 1715
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eq v3, v0, :cond_3

    .line 1716
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 1719
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz v0, :cond_3

    .line 1720
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroidx/core/h/u;->d(Landroid/view/View;I)V

    .line 1724
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    .line 1725
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/android/material/a$j;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1724
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1711
    goto :goto_1
.end method

.method a(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1804
    const/4 v1, 0x0

    .line 1806
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 1808
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 1809
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const v3, -0xff01

    if-ne v2, v3, :cond_1

    .line 1820
    :goto_0
    if-eqz v0, :cond_0

    .line 1823
    sget v0, Lcom/google/android/material/a$k;->TextAppearance_AppCompat_Caption:I

    invoke-static {p1, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 1824
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$c;->design_error:I

    invoke-static {v0, v1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1826
    :cond_0
    return-void

    .line 1815
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/material/textfield/TextInputLayout$b;)V
    .locals 1

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2631
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2632
    invoke-interface {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$b;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 2634
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/material/textfield/TextInputLayout$c;)V
    .locals 1

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2603
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(ZZ)V

    .line 1144
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 1283
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z

    return v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 722
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 727
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    .line 734
    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 739
    :goto_0
    return-void

    .line 737
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->f()Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    if-eqz v0, :cond_1

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1976
    if-eqz v0, :cond_0

    .line 1980
    invoke-static {v0}, Landroidx/appcompat/widget/y;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1981
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1984
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1986
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    .line 1988
    invoke-virtual {v1}, Lcom/google/android/material/textfield/f;->j()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1987
    invoke-static {v1, v2}, Landroidx/appcompat/widget/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1986
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1989
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1991
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    .line 1993
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1992
    invoke-static {v1, v2}, Landroidx/appcompat/widget/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1991
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1997
    :cond_4
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1998
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 1023
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1040
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z

    .line 1031
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z

    .line 1032
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1033
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1035
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1038
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z

    goto :goto_0

    .line 1037
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1038
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z

    .line 1039
    throw v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Z

    .line 2092
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ar:Z

    .line 2094
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 3064
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3065
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/Canvas;)V

    .line 3066
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->b(Landroid/graphics/Canvas;)V

    .line 3067
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3136
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Z

    if-eqz v0, :cond_0

    .line 3164
    :goto_0
    return-void

    .line 3143
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Z

    .line 3145
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 3147
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v0

    .line 3150
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    if-eqz v3, :cond_3

    .line 3151
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/a;->a([I)Z

    move-result v0

    or-int/2addr v0, v1

    .line 3155
    :goto_1
    invoke-static {p0}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 3156
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->c()V

    .line 3157
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 3159
    if-eqz v0, :cond_1

    .line 3160
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->invalidate()V

    .line 3163
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aq:Z

    goto :goto_0

    :cond_2
    move v2, v1

    .line 3155
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3167
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    if-nez v0, :cond_1

    .line 3216
    :cond_0
    :goto_0
    return-void

    .line 3171
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    .line 3172
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isHovered()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    move v3, v2

    .line 3175
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3176
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->am:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    .line 3189
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    .line 3190
    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3191
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/textfield/e;->b()Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    .line 3189
    :goto_4
    invoke-direct {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->b(Z)V

    .line 3193
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    .line 3194
    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    .line 3195
    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 3192
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    .line 3198
    if-nez v3, :cond_5

    if-eqz v0, :cond_f

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3199
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    .line 3205
    :goto_5
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    if-ne v0, v2, :cond_6

    .line 3206
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3207
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ak:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 3215
    :cond_6
    :goto_6
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 3171
    goto :goto_1

    :cond_8
    move v3, v1

    .line 3172
    goto :goto_2

    .line 3177
    :cond_9
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3178
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/f;->j()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    goto :goto_3

    .line 3179
    :cond_a
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    .line 3180
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    goto :goto_3

    .line 3181
    :cond_b
    if-eqz v0, :cond_c

    .line 3182
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    goto :goto_3

    .line 3183
    :cond_c
    if-eqz v3, :cond_d

    .line 3184
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ah:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    goto/16 :goto_3

    .line 3186
    :cond_d
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->ag:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    goto/16 :goto_3

    :cond_e
    move v4, v1

    .line 3191
    goto :goto_4

    .line 3201
    :cond_f
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    goto :goto_5

    .line 3208
    :cond_10
    if-eqz v3, :cond_11

    .line 3209
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->al:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    goto :goto_6

    .line 3211
    :cond_11
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    goto :goto_6
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->n()I

    move-result v1

    add-int/2addr v0, v1

    .line 1138
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method getBoxBackground()Lcom/google/android/material/q/g;
    .locals 2

    .prologue
    .line 743
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    return-object v0

    .line 746
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getBoxBackgroundColor()I
    .locals 1

    .prologue
    .line 897
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    return v0
.end method

.method public getBoxBackgroundMode()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->aa()F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->ab()F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->Z()F

    move-result v0

    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->Y()F

    move-result v0

    return v0
.end method

.method public getBoxStrokeColor()I
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:I

    return v0
.end method

.method public getCounterMaxLength()I
    .locals 1

    .prologue
    .line 1774
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    return v0
.end method

.method getCounterOverflowDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1783
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1786
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCounterOverflowTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCounterTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEndIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getEndIconMode()I
    .locals 1

    .prologue
    .line 2400
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    return v0
.end method

.method getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->h()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorCurrentTextColors()I
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->j()I

    move-result v0

    return v0
.end method

.method public getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final getErrorTextCurrentColor()I
    .locals 1

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->j()I

    move-result v0

    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    .line 2117
    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->i()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2116
    :goto_0
    return-object v0

    .line 2117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHelperTextCurrentTextColor()I
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->l()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1221
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getHintCollapsedTextHeight()F
    .locals 1

    .prologue
    .line 3279
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->c()F

    move-result v0

    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .locals 1

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->g()I

    move-result v0

    return v0
.end method

.method public getHintTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2723
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getStartIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/graphics/Typeface;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 3034
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 3036
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3037
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/graphics/Rect;

    .line 3038
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {p0, v1, v0}, Lcom/google/android/material/internal/b;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3039
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->c(Landroid/graphics/Rect;)V

    .line 3041
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v1, :cond_0

    .line 3042
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/a;->b(Landroid/graphics/Rect;)V

    .line 3043
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->b(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Rect;)V

    .line 3044
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->h()V

    .line 3048
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->an:Z

    if-nez v0, :cond_0

    .line 3049
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->C()V

    .line 3053
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 2143
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2145
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->u()Z

    move-result v0

    .line 2146
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()Z

    move-result v1

    .line 2147
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 2148
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$3;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 2156
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 2068
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$d;

    if-nez v0, :cond_0

    .line 2069
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2087
    :goto_0
    return-void

    .line 2072
    :cond_0
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$d;

    .line 2073
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout$d;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2074
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$d;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 2075
    iget-boolean v0, p1, Lcom/google/android/material/textfield/TextInputLayout$d;->b:Z

    if-eqz v0, :cond_1

    .line 2077
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$2;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->post(Ljava/lang/Runnable;)Z

    .line 2086
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->requestLayout()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 2057
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2058
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$d;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$d;-><init>(Landroid/os/Parcelable;)V

    .line 2059
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$d;->a:Ljava/lang/CharSequence;

    .line 2062
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout$d;->b:Z

    .line 2063
    return-object v1

    .line 2062
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBoxBackgroundColor(I)V
    .locals 1

    .prologue
    .line 883
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    if-eq v0, p1, :cond_0

    .line 884
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:I

    .line 885
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->aj:I

    .line 886
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->q()V

    .line 888
    :cond_0
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .locals 1

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundColor(I)V

    .line 870
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    if-ne p1, v0, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    .line 769
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 770
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->g()V

    goto :goto_0
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:I

    if-eq v0, p1, :cond_0

    .line 844
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ai:I

    .line 845
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 847
    :cond_0
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1559
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eq v0, p1, :cond_1

    .line 1560
    if-eqz p1, :cond_2

    .line 1561
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    .line 1562
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    sget v1, Lcom/google/android/material/a$f;->textinput_counter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1563
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1567
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;I)V

    .line 1568
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 1569
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 1574
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    .line 1576
    :cond_1
    return-void

    .line 1571
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/textfield/f;->b(Landroid/widget/TextView;I)V

    .line 1572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    .prologue
    .line 1679
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    if-eq v0, p1, :cond_0

    .line 1680
    if-lez p1, :cond_1

    .line 1681
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    .line 1685
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Z

    if-eqz v0, :cond_0

    .line 1686
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->l()V

    .line 1689
    :cond_0
    return-void

    .line 1683
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:I

    goto :goto_0
.end method

.method public setCounterOverflowTextAppearance(I)V
    .locals 1

    .prologue
    .line 1627
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    if-eq v0, p1, :cond_0

    .line 1628
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 1629
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 1631
    :cond_0
    return-void
.end method

.method public setCounterOverflowTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1644
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Landroid/content/res/ColorStateList;

    .line 1645
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 1647
    :cond_0
    return-void
.end method

.method public setCounterTextAppearance(I)V
    .locals 1

    .prologue
    .line 1586
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:I

    if-eq v0, p1, :cond_0

    .line 1587
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:I

    .line 1588
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 1590
    :cond_0
    return-void
.end method

.method public setCounterTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1602
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/content/res/ColorStateList;

    .line 1603
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->m()V

    .line 1605
    :cond_0
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/content/res/ColorStateList;

    .line 1333
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/content/res/ColorStateList;

    .line 1335
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 1338
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 1754
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/view/ViewGroup;Z)V

    .line 1755
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1756
    return-void
.end method

.method public setEndIconActivated(Z)V
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setActivated(Z)V

    .line 2455
    return-void
.end method

.method public setEndIconCheckable(Z)V
    .locals 1

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 2469
    return-void
.end method

.method public setEndIconContentDescription(I)V
    .locals 1

    .prologue
    .line 2527
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 2528
    return-void

    .line 2527
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2542
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2544
    :cond_0
    return-void
.end method

.method public setEndIconDrawable(I)V
    .locals 1

    .prologue
    .line 2490
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2491
    return-void

    .line 2490
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2504
    return-void
.end method

.method public setEndIconMode(I)V
    .locals 3

    .prologue
    .line 2375
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 2376
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    .line 2377
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 2378
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2379
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/e;->a()V

    .line 2387
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 2388
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->b(I)V

    .line 2389
    return-void

    .line 2377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2381
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The current box background mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported by the end icon mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 2412
    return-void
.end method

.method public setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 2423
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ad:Landroid/view/View$OnLongClickListener;

    .line 2424
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 2425
    return-void
.end method

.method public setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2570
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    .line 2571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    .line 2572
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 2574
    :cond_0
    return-void
.end method

.method public setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2586
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    .line 2587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    .line 2588
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 2590
    :cond_0
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 2

    .prologue
    .line 2433
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2434
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 2435
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()Z

    .line 2437
    :cond_0
    return-void

    .line 2434
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    :goto_0
    return-void

    .line 1474
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1477
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1478
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1480
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->b()V

    goto :goto_0
.end method

.method public setErrorEnabled(Z)V
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->a(Z)V

    .line 1358
    return-void
.end method

.method public setErrorIconDrawable(I)V
    .locals 1

    .prologue
    .line 1491
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1492
    return-void

    .line 1491
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1502
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconVisible(Z)V

    .line 1503
    return-void

    .line 1502
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1524
    if-eqz v0, :cond_0

    .line 1525
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1526
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1529
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 1530
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1532
    :cond_1
    return-void
.end method

.method public setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1543
    if-eqz v0, :cond_0

    .line 1544
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1545
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1548
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 1549
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ac:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1551
    :cond_1
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->b(I)V

    .line 1367
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/content/res/ColorStateList;)V

    .line 1372
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1430
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1437
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->b(Landroid/content/res/ColorStateList;)V

    .line 1392
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->b(Z)V

    .line 1413
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->c(I)V

    .line 1387
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v0, :cond_0

    .line 1197
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 1198
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 1200
    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .prologue
    .line 2138
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->ao:Z

    .line 2139
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1236
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eq p1, v0, :cond_1

    .line 1237
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    .line 1238
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-nez v0, :cond_2

    .line 1240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z

    .line 1241
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1246
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 1261
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1262
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    .line 1265
    :cond_1
    return-void

    .line 1248
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1252
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1253
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1255
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1257
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Z

    goto :goto_0
.end method

.method public setHintTextAppearance(I)V
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->c(I)V

    .line 1293
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->i()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/content/res/ColorStateList;

    .line 1295
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 1298
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->k()V

    .line 1300
    :cond_0
    return-void
.end method

.method public setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->ae:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->a(Landroid/content/res/ColorStateList;)V

    .line 1312
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->af:Landroid/content/res/ColorStateList;

    .line 1314
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 1318
    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2694
    if-eqz p1, :cond_0

    .line 2695
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2694
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    .line 2696
    return-void

    .line 2695
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2711
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2663
    if-eqz p1, :cond_0

    .line 2664
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2663
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2665
    return-void

    .line 2664
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2680
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2763
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:I

    if-eq v0, v1, :cond_1

    .line 2765
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    .line 2770
    :cond_0
    :goto_0
    return-void

    .line 2766
    :cond_1
    if-nez p1, :cond_0

    .line 2768
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconMode(I)V

    goto :goto_0
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2786
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/content/res/ColorStateList;

    .line 2787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    .line 2788
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 2789
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2802
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/PorterDuff$Mode;

    .line 2803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Z

    .line 2804
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->z()V

    .line 2805
    return-void
.end method

.method public setStartIconCheckable(Z)V
    .locals 1

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    .line 2280
    return-void
.end method

.method public setStartIconContentDescription(I)V
    .locals 1

    .prologue
    .line 2301
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    .line 2302
    return-void

    .line 2301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2315
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getStartIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2318
    :cond_0
    return-void
.end method

.method public setStartIconDrawable(I)V
    .locals 1

    .prologue
    .line 2186
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2187
    return-void

    .line 2186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2199
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2200
    if-eqz p1, :cond_0

    .line 2201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    .line 2202
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 2209
    :goto_0
    return-void

    .line 2204
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconVisible(Z)V

    .line 2205
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2206
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2207
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 2232
    return-void
.end method

.method public setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 2243
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:Landroid/view/View$OnLongClickListener;

    .line 2244
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 2245
    return-void
.end method

.method public setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2344
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/content/res/ColorStateList;

    .line 2345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 2346
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 2348
    :cond_0
    return-void
.end method

.method public setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2360
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Landroid/graphics/PorterDuff$Mode;

    .line 2361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->L:Z

    .line 2362
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->x()V

    .line 2364
    :cond_0
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 2

    .prologue
    .line 2253
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->d()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2254
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    .line 2255
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->A()Z

    .line 2257
    :cond_0
    return-void

    .line 2254
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$a;)V
    .locals 1

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2837
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v0, p1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 2839
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 1001
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/graphics/Typeface;

    .line 1003
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->b(Landroid/graphics/Typeface;)V

    .line 1004
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:Lcom/google/android/material/textfield/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/graphics/Typeface;)V

    .line 1006
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1010
    :cond_0
    return-void
.end method
