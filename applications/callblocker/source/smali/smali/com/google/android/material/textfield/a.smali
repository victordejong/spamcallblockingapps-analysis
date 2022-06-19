.class Lcom/google/android/material/textfield/a;
.super Lcom/google/android/material/textfield/e;
.source "ClearTextEndIconDelegate.java"


# instance fields
.field private final d:Landroid/text/TextWatcher;

.field private final e:Lcom/google/android/material/textfield/TextInputLayout$b;

.field private f:Landroid/animation/AnimatorSet;

.field private g:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 43
    new-instance v0, Lcom/google/android/material/textfield/a$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/a$1;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/a;->d:Landroid/text/TextWatcher;

    .line 64
    new-instance v0, Lcom/google/android/material/textfield/a$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/a$2;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/a;->e:Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/a;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->g:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private varargs a([F)Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 124
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 126
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    new-instance v1, Lcom/google/android/material/textfield/a$6;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$6;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 136
    return-object v0
.end method

.method static synthetic a(Landroid/text/Editable;)Z
    .locals 1

    .prologue
    .line 37
    invoke-static {p0}, Lcom/google/android/material/textfield/a;->b(Landroid/text/Editable;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/a;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->f:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private static b(Landroid/text/Editable;)Z
    .locals 1

    .prologue
    .line 156
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/material/textfield/a;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->d:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 102
    invoke-direct {p0}, Lcom/google/android/material/textfield/a;->d()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 103
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/a;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 104
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/textfield/a;->f:Landroid/animation/AnimatorSet;

    .line 105
    iget-object v2, p0, Lcom/google/android/material/textfield/a;->f:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/material/textfield/a$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$4;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/a;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/a;->g:Landroid/animation/ValueAnimator;

    .line 114
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->g:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/a$5;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$5;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 121
    return-void

    .line 103
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 113
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private d()Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 140
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    new-instance v1, Lcom/google/android/material/textfield/a$7;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$7;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    return-object v0

    .line 140
    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$e;->mtrl_ic_cancel:I

    .line 87
    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 89
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$j;->clear_text_end_icon_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/a$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$3;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->e:Lcom/google/android/material/textfield/TextInputLayout$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$b;)V

    .line 98
    invoke-direct {p0}, Lcom/google/android/material/textfield/a;->c()V

    .line 99
    return-void
.end method
