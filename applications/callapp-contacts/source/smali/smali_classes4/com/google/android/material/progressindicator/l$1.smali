.class final Lcom/google/android/material/progressindicator/l$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/progressindicator/l;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/l;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/android/material/progressindicator/l$1;->a:Lcom/google/android/material/progressindicator/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 112
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l$1;->a:Lcom/google/android/material/progressindicator/l;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/l;->d(Lcom/google/android/material/progressindicator/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l$1;->a:Lcom/google/android/material/progressindicator/l;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/l;->e(Lcom/google/android/material/progressindicator/l;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 114
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l$1;->a:Lcom/google/android/material/progressindicator/l;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/l;->a:Landroidx/l/a/a/b$a;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/l$1;->a:Lcom/google/android/material/progressindicator/l;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/l;->b:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {p1, v0}, Landroidx/l/a/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l$1;->a:Lcom/google/android/material/progressindicator/l;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/l;->f(Lcom/google/android/material/progressindicator/l;)Z

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 105
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l$1;->a:Lcom/google/android/material/progressindicator/l;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/l;->a(Lcom/google/android/material/progressindicator/l;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/l$1;->a:Lcom/google/android/material/progressindicator/l;

    invoke-static {v1}, Lcom/google/android/material/progressindicator/l;->b(Lcom/google/android/material/progressindicator/l;)Lcom/google/android/material/progressindicator/b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/l;->a(Lcom/google/android/material/progressindicator/l;I)I

    .line 106
    iget-object p1, p0, Lcom/google/android/material/progressindicator/l$1;->a:Lcom/google/android/material/progressindicator/l;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/l;->c(Lcom/google/android/material/progressindicator/l;)Z

    return-void
.end method
