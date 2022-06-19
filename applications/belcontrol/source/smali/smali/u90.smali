.class public final synthetic Lu90;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/animation/AnimatedColorStateList;

.field public final synthetic b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public synthetic constructor <init>(Lcarbon/animation/AnimatedColorStateList;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu90;->a:Lcarbon/animation/AnimatedColorStateList;

    iput-object p2, p0, Lu90;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lu90;->a:Lcarbon/animation/AnimatedColorStateList;

    iget-object v1, p0, Lu90;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1, p1}, Lcarbon/animation/AnimatedColorStateList;->d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator;)V

    return-void
.end method
