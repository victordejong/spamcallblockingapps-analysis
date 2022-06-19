.class final Lcom/google/android/material/textfield/a;
.super Lcom/google/android/material/textfield/e;
.source "SourceFile"


# instance fields
.field final a:Landroid/text/TextWatcher;

.field final b:Landroid/view/View$OnFocusChangeListener;

.field private final f:Lcom/google/android/material/textfield/TextInputLayout$b;

.field private final g:Lcom/google/android/material/textfield/TextInputLayout$c;

.field private h:Landroid/animation/AnimatorSet;

.field private i:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 46
    new-instance p1, Lcom/google/android/material/textfield/a$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$1;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/a;->a:Landroid/text/TextWatcher;

    .line 62
    new-instance p1, Lcom/google/android/material/textfield/a$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$2;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/a;->b:Landroid/view/View$OnFocusChangeListener;

    .line 70
    new-instance p1, Lcom/google/android/material/textfield/a$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$3;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/a;->f:Lcom/google/android/material/textfield/TextInputLayout$b;

    .line 83
    new-instance p1, Lcom/google/android/material/textfield/a$4;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$4;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/a;->g:Lcom/google/android/material/textfield/TextInputLayout$c;

    return-void
.end method

.method private varargs a([F)Landroid/animation/ValueAnimator;
    .locals 2

    .line 182
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 183
    sget-object v0, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x64

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 185
    new-instance v0, Lcom/google/android/material/textfield/a$8;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/a$8;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic a(Landroid/text/Editable;)Z
    .locals 0

    .line 4214
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->d:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$e;->mtrl_ic_cancel:I

    .line 114
    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 116
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$j;->clear_text_end_icon_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/a$5;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$5;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->f:Lcom/google/android/material/textfield/TextInputLayout$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$b;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->g:Lcom/google/android/material/textfield/TextInputLayout$c;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$c;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3198
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3199
    sget-object v2, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    .line 3200
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3201
    new-instance v2, Lcom/google/android/material/textfield/a$9;

    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/a$9;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 3161
    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/google/android/material/textfield/a;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 3162
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/textfield/a;->h:Landroid/animation/AnimatorSet;

    new-array v4, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    .line 3163
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 3164
    iget-object v1, p0, Lcom/google/android/material/textfield/a;->h:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/google/android/material/textfield/a$6;

    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/a$6;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    .line 3171
    fill-array-data v0, :array_2

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/a;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/a;->i:Landroid/animation/ValueAnimator;

    .line 3172
    new-instance v1, Lcom/google/android/material/textfield/a$7;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$7;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method final a(Z)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3385
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/a;->b(Z)V

    return-void
.end method

.method final b(Z)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->c:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->e()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/google/android/material/textfield/a;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 146
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v0, :cond_2

    .line 148
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->h:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 152
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_2

    .line 154
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    return-void
.end method
