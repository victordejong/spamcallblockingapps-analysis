.class public Lcarbon/widget/FrameLayout$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/FrameLayout;->e(I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcarbon/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/FrameLayout$b;->a:Lcarbon/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcarbon/widget/FrameLayout$b;->a:Lcarbon/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcarbon/widget/FrameLayout;->d(Lcarbon/widget/FrameLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcarbon/widget/FrameLayout$b;->a:Lcarbon/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcarbon/widget/FrameLayout;->d(Lcarbon/widget/FrameLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
