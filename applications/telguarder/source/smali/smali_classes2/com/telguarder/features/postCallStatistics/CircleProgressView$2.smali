.class Lcom/telguarder/features/postCallStatistics/CircleProgressView$2;
.super Ljava/lang/Object;
.source "CircleProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/CircleProgressView;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$2;->this$0:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CircleProgressView$2;->this$0:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->access$200(Lcom/telguarder/features/postCallStatistics/CircleProgressView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    invoke-static {v0, p1}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->access$300(Lcom/telguarder/features/postCallStatistics/CircleProgressView;F)V

    return-void
.end method
