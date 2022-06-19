.class Lcom/google/android/material/progressindicator/d$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/d;->q()V
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

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/d$b;->a:Lcom/google/android/material/progressindicator/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/d$b;->a:Lcom/google/android/material/progressindicator/d;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/d;->a()V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/progressindicator/d$b;->a:Lcom/google/android/material/progressindicator/d;

    iget-object v0, p1, Lcom/google/android/material/progressindicator/d;->p:Lb/t/a/a/b;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {v0, p1}, Lb/t/a/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
