.class public abstract Lcom/explorestack/iab/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Lcom/explorestack/iab/utils/h;

.field c:Z

.field final d:Landroid/animation/Animator$AnimatorListener;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/i;->c:Z

    .line 169
    new-instance v0, Lcom/explorestack/iab/utils/i$1;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/i$1;-><init>(Lcom/explorestack/iab/utils/i;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/i;->f:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Lcom/explorestack/iab/utils/i$2;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/i$2;-><init>(Lcom/explorestack/iab/utils/i;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/i;->d:Landroid/animation/Animator$AnimatorListener;

    .line 29
    iput-object p1, p0, Lcom/explorestack/iab/utils/i;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 6

    .line 46
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1374
    iget-object v1, p1, Lcom/explorestack/iab/utils/h;->l:Ljava/lang/Float;

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, -0x2

    .line 1383
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v1, :cond_2

    .line 1375
    iget-object v1, p1, Lcom/explorestack/iab/utils/h;->l:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 1376
    iget-object v1, p1, Lcom/explorestack/iab/utils/h;->l:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 1378
    :cond_0
    iget-object v1, p1, Lcom/explorestack/iab/utils/h;->l:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 1379
    iget-object v1, p1, Lcom/explorestack/iab/utils/h;->l:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 1381
    :cond_1
    iget-object v1, p1, Lcom/explorestack/iab/utils/h;->l:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p0, v1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 46
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1392
    iget-object v5, p1, Lcom/explorestack/iab/utils/h;->m:Ljava/lang/Float;

    if-eqz v5, :cond_5

    .line 1393
    iget-object v4, p1, Lcom/explorestack/iab/utils/h;->m:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_3

    .line 1394
    iget-object p0, p1, Lcom/explorestack/iab/utils/h;->m:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 1396
    :cond_3
    iget-object v3, p1, Lcom/explorestack/iab/utils/h;->m:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v2, v3, v2

    if-nez v2, :cond_4

    .line 1397
    iget-object p0, p1, Lcom/explorestack/iab/utils/h;->m:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 1399
    :cond_4
    iget-object p1, p1, Lcom/explorestack/iab/utils/h;->m:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 47
    :cond_5
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;
.end method

.method public final a()V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/explorestack/iab/utils/i;->b:Lcom/explorestack/iab/utils/h;

    invoke-virtual {p0, v0, v1, v2}, Lcom/explorestack/iab/utils/i;->a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/h;)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/explorestack/iab/utils/h;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/h;)V
    .locals 3

    .line 53
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/iab/utils/i;->a(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/explorestack/iab/utils/h;->a(Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object p3

    .line 54
    invoke-virtual {p3}, Lcom/explorestack/iab/utils/h;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/i;->d()V

    return-void

    .line 59
    :cond_0
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    invoke-static {p1, p3}, Lcom/explorestack/iab/utils/i;->c(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1569
    invoke-virtual {p3}, Lcom/explorestack/iab/utils/h;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3}, Lcom/explorestack/iab/utils/h;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v1, v2

    .line 1453
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 64
    :cond_1
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    invoke-static {p1, p3}, Lcom/explorestack/iab/utils/i;->c(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 67
    invoke-virtual {p3, v0}, Lcom/explorestack/iab/utils/h;->a(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 73
    :goto_0
    invoke-virtual {p3, p1, v0}, Lcom/explorestack/iab/utils/h;->a(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/explorestack/iab/utils/i;->b:Lcom/explorestack/iab/utils/h;

    if-eqz v1, :cond_3

    .line 2153
    iget-object v1, v1, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    .line 3153
    iget-object v2, p3, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    .line 2101
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    iget-object p2, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p2, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/explorestack/iab/utils/i;->b(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    .line 78
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :goto_2
    iget-object p2, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    invoke-virtual {p3}, Lcom/explorestack/iab/utils/h;->g()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 84
    iget-object p2, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    invoke-virtual {p3, p1, p2}, Lcom/explorestack/iab/utils/h;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    iget-object p2, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object p3, p0, Lcom/explorestack/iab/utils/i;->b:Lcom/explorestack/iab/utils/h;

    .line 88
    iget-object p2, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    .line 4093
    instance-of v0, p2, Lcom/explorestack/iab/utils/g;

    if-eqz v0, :cond_4

    .line 4094
    check-cast p2, Lcom/explorestack/iab/utils/g;

    invoke-interface {p2, p3}, Lcom/explorestack/iab/utils/g;->setStyle(Lcom/explorestack/iab/utils/h;)V

    .line 89
    :cond_4
    iget-object p2, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/utils/i;->a(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/h;)V

    return-void

    .line 70
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent should be instance of FrameLayout or RelativeLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract b(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/explorestack/iab/utils/h;",
            ")TT;"
        }
    .end annotation
.end method

.method public final b()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/i;->f()V

    .line 129
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    .line 131
    iput-object v0, p0, Lcom/explorestack/iab/utils/i;->b:Lcom/explorestack/iab/utils/h;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->b:Lcom/explorestack/iab/utils/h;

    if-nez v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/i;->f()V

    .line 4144
    iget-boolean v0, p0, Lcom/explorestack/iab/utils/i;->c:Z

    if-nez v0, :cond_3

    .line 4147
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->b:Lcom/explorestack/iab/utils/h;

    if-nez v0, :cond_1

    goto :goto_0

    .line 4174
    :cond_1
    iget-object v0, v0, Lcom/explorestack/iab/utils/h;->i:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 4151
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 4154
    iput-boolean v1, p0, Lcom/explorestack/iab/utils/i;->c:Z

    .line 4155
    iget-object v1, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/explorestack/iab/utils/i;->f:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v0, v0, v3

    float-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/i;->c:Z

    .line 160
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/utils/i;->b:Lcom/explorestack/iab/utils/h;

    if-nez v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 164
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/i;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 166
    iget-object v0, p0, Lcom/explorestack/iab/utils/i;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/i;->b:Lcom/explorestack/iab/utils/h;

    invoke-virtual {v1}, Lcom/explorestack/iab/utils/h;->g()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method
