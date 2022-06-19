.class public final synthetic Lmb0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lqb0;


# direct methods
.method public synthetic constructor <init>(Lqb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb0;->a:Lqb0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lmb0;->a:Lqb0;

    invoke-virtual {v0, p1}, Lqb0;->m(Landroid/animation/ValueAnimator;)V

    return-void
.end method
