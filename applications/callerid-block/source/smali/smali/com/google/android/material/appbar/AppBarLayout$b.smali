.class Lcom/google/android/material/appbar/AppBarLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayout;->x(Le/c/a/b/w/h;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/c/a/b/w/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Le/c/a/b/w/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->a:Le/c/a/b/w/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->a:Le/c/a/b/w/h;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Le/c/a/b/w/h;->Z(F)V

    return-void
.end method
