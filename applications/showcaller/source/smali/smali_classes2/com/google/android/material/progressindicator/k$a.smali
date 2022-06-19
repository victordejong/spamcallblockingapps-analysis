.class Lcom/google/android/material/progressindicator/k$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LinearIndeterminateContiguousAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/k;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/progressindicator/k;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/k$a;->a:Lcom/google/android/material/progressindicator/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k$a;->a:Lcom/google/android/material/progressindicator/k;

    .line 3
    invoke-static {p1}, Lcom/google/android/material/progressindicator/k;->i(Lcom/google/android/material/progressindicator/k;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/k$a;->a:Lcom/google/android/material/progressindicator/k;

    invoke-static {v2}, Lcom/google/android/material/progressindicator/k;->k(Lcom/google/android/material/progressindicator/k;)Lcom/google/android/material/progressindicator/b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/material/progressindicator/b;->c:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/k;->j(Lcom/google/android/material/progressindicator/k;I)I

    .line 5
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k$a;->a:Lcom/google/android/material/progressindicator/k;

    invoke-static {p1, v1}, Lcom/google/android/material/progressindicator/k;->l(Lcom/google/android/material/progressindicator/k;Z)Z

    return-void
.end method
