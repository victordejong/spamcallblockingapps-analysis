.class abstract Lcom/google/android/material/floatingactionbutton/b$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "g"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/google/android/material/floatingactionbutton/b;

.field private c:F

.field private d:F


# direct methods
.method private constructor <init>(Lcom/google/android/material/floatingactionbutton/b;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b$g;->b:Lcom/google/android/material/floatingactionbutton/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/floatingactionbutton/b;Lcom/google/android/material/floatingactionbutton/b$1;)V
    .locals 0

    .prologue
    .line 778
    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/b$g;-><init>(Lcom/google/android/material/floatingactionbutton/b;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$g;->b:Lcom/google/android/material/floatingactionbutton/b;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b$g;->d:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->e(F)V

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b$g;->a:Z

    .line 803
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b$g;->a:Z

    if-nez v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$g;->b:Lcom/google/android/material/floatingactionbutton/b;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/b$g;->c:F

    .line 789
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/b$g;->a()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/b$g;->d:F

    .line 790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b$g;->a:Z

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$g;->b:Lcom/google/android/material/floatingactionbutton/b;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/b$g;->c:F

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/b$g;->d:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/b$g;->c:F

    sub-float/2addr v2, v3

    .line 796
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 793
    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->e(F)V

    .line 797
    return-void

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$g;->b:Lcom/google/android/material/floatingactionbutton/b;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/b;->c:Lcom/google/android/material/q/g;

    invoke-virtual {v0}, Lcom/google/android/material/q/g;->S()F

    move-result v0

    goto :goto_0
.end method
