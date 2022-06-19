.class Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator$1;
.super Ljava/lang/Object;
.source "BallClipRotatePulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator;


# direct methods
.method constructor <init>(Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator$1;->this$0:Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator$1;->this$0:Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator;->scaleFloat1:F

    .line 2
    iget-object p1, p0, Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator$1;->this$0:Lcom/github/jdsjlzx/progressindicator/indicators/BallClipRotatePulseIndicator;

    invoke-virtual {p1}, Lcom/github/jdsjlzx/progressindicator/a;->postInvalidate()V

    return-void
.end method
