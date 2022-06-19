.class Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;
.super Ljava/lang/Object;
.source "CircleProgressView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/CircleProgressView;->setProgressWithAnimation(FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

.field final synthetic val$progress:F


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/CircleProgressView;F)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;->this$0:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    iput p2, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 394
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;->this$0:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->access$002(Lcom/telguarder/features/postCallStatistics/CircleProgressView;Z)Z

    .line 395
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;->this$0:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;->val$progress:F

    invoke-static {p1, v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->access$102(Lcom/telguarder/features/postCallStatistics/CircleProgressView;F)F

    .line 396
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;->this$0:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->access$200(Lcom/telguarder/features/postCallStatistics/CircleProgressView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;->val$progress:F

    :goto_0
    invoke-static {p1, v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->access$300(Lcom/telguarder/features/postCallStatistics/CircleProgressView;F)V

    .line 397
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;->this$0:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->access$400(Lcom/telguarder/features/postCallStatistics/CircleProgressView;)Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 398
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$1;->this$0:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-static {p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->access$400(Lcom/telguarder/features/postCallStatistics/CircleProgressView;)Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;->onAnimationEnd()V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
