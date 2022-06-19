.class Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator$3;
.super Ljava/lang/Object;
.source "CubeTransitionIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator;


# direct methods
.method constructor <init>(Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator$3;->this$0:Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator$3;->this$0:Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator;->scaleFloat:F

    .line 2
    iget-object p1, p0, Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator$3;->this$0:Lcom/github/jdsjlzx/progressindicator/indicators/CubeTransitionIndicator;

    invoke-virtual {p1}, Lcom/github/jdsjlzx/progressindicator/a;->postInvalidate()V

    return-void
.end method
