.class public final synthetic Lzd0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/view/View;


# direct methods
.method public synthetic constructor <init>(Lcarbon/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzd0;->a:Lcarbon/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lzd0;->a:Lcarbon/view/View;

    invoke-virtual {v0, p1}, Lcarbon/view/View;->k(Landroid/animation/ValueAnimator;)V

    return-void
.end method
