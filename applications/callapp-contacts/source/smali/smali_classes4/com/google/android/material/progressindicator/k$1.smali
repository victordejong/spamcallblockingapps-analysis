.class final Lcom/google/android/material/progressindicator/k$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/k;
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

    .line 80
    iput-object p1, p0, Lcom/google/android/material/progressindicator/k$1;->a:Lcom/google/android/material/progressindicator/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 84
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k$1;->a:Lcom/google/android/material/progressindicator/k;

    .line 85
    invoke-static {p1}, Lcom/google/android/material/progressindicator/k;->a(Lcom/google/android/material/progressindicator/k;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/progressindicator/k$1;->a:Lcom/google/android/material/progressindicator/k;

    invoke-static {v1}, Lcom/google/android/material/progressindicator/k;->b(Lcom/google/android/material/progressindicator/k;)Lcom/google/android/material/progressindicator/b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 84
    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/k;->a(Lcom/google/android/material/progressindicator/k;I)I

    .line 86
    iget-object p1, p0, Lcom/google/android/material/progressindicator/k$1;->a:Lcom/google/android/material/progressindicator/k;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/k;->c(Lcom/google/android/material/progressindicator/k;)Z

    return-void
.end method
