.class final Lcom/google/android/material/progressindicator/f$1;
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

    .line 345
    iput-object p1, p0, Lcom/google/android/material/progressindicator/f$1;->a:Lcom/google/android/material/progressindicator/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 350
    iget-object p1, p0, Lcom/google/android/material/progressindicator/f$1;->a:Lcom/google/android/material/progressindicator/f;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/f;->a(Lcom/google/android/material/progressindicator/f;)V

    return-void
.end method
