.class Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealAnimatedDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

.field final synthetic val$alphaAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    iput-object p2, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$3;->val$alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 124
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->access$302(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;Z)Z

    .line 126
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$3;->val$alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
