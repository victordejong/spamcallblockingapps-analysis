.class public Lcarbon/widget/LinearLayout$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/LinearLayout;->e(I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcarbon/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/LinearLayout$b;->a:Lcarbon/widget/LinearLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcarbon/widget/LinearLayout$b;->a:Lcarbon/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcarbon/widget/LinearLayout;->d(Lcarbon/widget/LinearLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcarbon/widget/LinearLayout$b;->a:Lcarbon/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcarbon/widget/LinearLayout;->d(Lcarbon/widget/LinearLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
