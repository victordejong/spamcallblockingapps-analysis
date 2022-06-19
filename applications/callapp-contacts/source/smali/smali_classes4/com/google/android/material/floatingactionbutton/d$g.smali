.class abstract Lcom/google/android/material/floatingactionbutton/d$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "g"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/google/android/material/floatingactionbutton/d;

.field private c:F

.field private d:F


# direct methods
.method private constructor <init>(Lcom/google/android/material/floatingactionbutton/d;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d$g;->b:Lcom/google/android/material/floatingactionbutton/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/floatingactionbutton/d;Lcom/google/android/material/floatingactionbutton/d$1;)V
    .locals 0

    .line 778
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/d$g;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 801
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d$g;->b:Lcom/google/android/material/floatingactionbutton/d;

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d$g;->d:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/d;->d(F)V

    const/4 p1, 0x0

    .line 802
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/d$g;->a:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 787
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d$g;->a:Z

    if-nez v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d$g;->b:Lcom/google/android/material/floatingactionbutton/d;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d$g;->b:Lcom/google/android/material/floatingactionbutton/d;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/d;->c:Lcom/google/android/material/k/h;

    .line 1657
    iget-object v0, v0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget v0, v0, Lcom/google/android/material/k/h$a;->o:F

    .line 788
    :goto_0
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d$g;->c:F

    .line 789
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d$g;->a()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d$g;->d:F

    const/4 v0, 0x1

    .line 790
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d$g;->a:Z

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d$g;->b:Lcom/google/android/material/floatingactionbutton/d;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d$g;->c:F

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/d$g;->d:F

    sub-float/2addr v2, v1

    .line 796
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    int-to-float p1, p1

    .line 793
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->d(F)V

    return-void
.end method
