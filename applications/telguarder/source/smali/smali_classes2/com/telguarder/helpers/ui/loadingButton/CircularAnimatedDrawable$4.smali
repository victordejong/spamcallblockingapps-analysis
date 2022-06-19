.class Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$4;
.super Ljava/lang/Object;
.source "CircularAnimatedDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->setProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$4;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$4;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->access$502(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;F)F

    .line 221
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$4;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->access$400(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
