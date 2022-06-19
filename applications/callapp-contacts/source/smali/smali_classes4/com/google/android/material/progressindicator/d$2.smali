.class final Lcom/google/android/material/progressindicator/d$2;
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

    .line 107
    iput-object p1, p0, Lcom/google/android/material/progressindicator/d$2;->a:Lcom/google/android/material/progressindicator/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 111
    iget-object p1, p0, Lcom/google/android/material/progressindicator/d$2;->a:Lcom/google/android/material/progressindicator/d;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/d;->b()V

    .line 112
    iget-object p1, p0, Lcom/google/android/material/progressindicator/d$2;->a:Lcom/google/android/material/progressindicator/d;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/d;->a:Landroidx/l/a/a/b$a;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/d$2;->a:Lcom/google/android/material/progressindicator/d;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/d;->b:Lcom/google/android/material/progressindicator/i;

    invoke-virtual {p1, v0}, Landroidx/l/a/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
