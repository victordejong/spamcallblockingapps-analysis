.class Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$1;
.super Ljava/lang/Object;
.source "CircularRevealAnimatedDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$1;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$1;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->access$002(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;I)I

    .line 104
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$1;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    invoke-virtual {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->invalidateSelf()V

    .line 105
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable$1;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;->access$100(Lcom/telguarder/helpers/ui/loadingButton/CircularRevealAnimatedDrawable;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
