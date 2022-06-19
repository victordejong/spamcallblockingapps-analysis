.class final Lcom/google/android/material/progressindicator/f$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/progressindicator/f;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/f;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/google/android/material/progressindicator/f$2;->a:Lcom/google/android/material/progressindicator/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 379
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 381
    iget-object p1, p0, Lcom/google/android/material/progressindicator/f$2;->a:Lcom/google/android/material/progressindicator/f;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/f;->b(Lcom/google/android/material/progressindicator/f;)Z

    .line 383
    iget-object p1, p0, Lcom/google/android/material/progressindicator/f$2;->a:Lcom/google/android/material/progressindicator/f;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/f;->c(Lcom/google/android/material/progressindicator/f;)V

    return-void
.end method
