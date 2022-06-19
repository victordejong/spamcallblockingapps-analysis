.class public final Lqv0$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqv0;->b(Landroid/view/View;IILqv0$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lqv0$e;


# direct methods
.method public constructor <init>(Landroid/view/View;Lqv0$e;)V
    .locals 0

    iput-object p1, p0, Lqv0$b;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lqv0$b;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lqv0$b;->b:Lqv0$e;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lqv0$e;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lqv0$b;->b:Lqv0$e;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lqv0$e;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lqv0$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
