.class final Lcom/google/android/material/progressindicator/d$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/progressindicator/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/d;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/material/progressindicator/d$1;->a:Lcom/google/android/material/progressindicator/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 96
    iget-object p1, p0, Lcom/google/android/material/progressindicator/d$1;->a:Lcom/google/android/material/progressindicator/d;

    .line 97
    invoke-static {p1}, Lcom/google/android/material/progressindicator/d;->a(Lcom/google/android/material/progressindicator/d;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/android/material/progressindicator/d$1;->a:Lcom/google/android/material/progressindicator/d;

    invoke-static {v1}, Lcom/google/android/material/progressindicator/d;->b(Lcom/google/android/material/progressindicator/d;)Lcom/google/android/material/progressindicator/b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/progressindicator/b;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 96
    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/d;->a(Lcom/google/android/material/progressindicator/d;I)I

    return-void
.end method
