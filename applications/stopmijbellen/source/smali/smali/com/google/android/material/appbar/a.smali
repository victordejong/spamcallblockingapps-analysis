.class public Lcom/google/android/material/appbar/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lc4/f;

.field public final synthetic b:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Lc4/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/appbar/a;->b:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/google/android/material/appbar/a;->a:Lc4/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->a:Lc4/f;

    invoke-virtual {v0, p1}, Lc4/f;->p(F)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/graphics/drawable/Drawable;

    .line 5
    instance-of v1, v0, Lc4/f;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lc4/f;

    invoke-virtual {v0, p1}, Lc4/f;->p(F)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->b:Lcom/google/android/material/appbar/AppBarLayout;

    .line 8
    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->o:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$d;

    .line 10
    iget-object v2, p0, Lcom/google/android/material/appbar/a;->a:Lc4/f;

    .line 11
    iget v2, v2, Lc4/f;->u:I

    .line 12
    invoke-interface {v1, p1, v2}, Lcom/google/android/material/appbar/AppBarLayout$d;->a(FI)V

    goto :goto_0

    :cond_1
    return-void
.end method
