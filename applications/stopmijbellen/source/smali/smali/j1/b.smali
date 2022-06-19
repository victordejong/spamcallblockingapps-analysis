.class public Lj1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lj1/d$a;

.field public final synthetic b:Lj1/d;


# direct methods
.method public constructor <init>(Lj1/d;Lj1/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj1/b;->b:Lj1/d;

    iput-object p2, p0, Lj1/b;->a:Lj1/d$a;

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
    iget-object v0, p0, Lj1/b;->b:Lj1/d;

    iget-object v1, p0, Lj1/b;->a:Lj1/d$a;

    invoke-virtual {v0, p1, v1}, Lj1/d;->d(FLj1/d$a;)V

    .line 3
    iget-object v0, p0, Lj1/b;->b:Lj1/d;

    iget-object v1, p0, Lj1/b;->a:Lj1/d$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lj1/d;->a(FLj1/d$a;Z)V

    .line 4
    iget-object p1, p0, Lj1/b;->b:Lj1/d;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
