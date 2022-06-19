.class Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$3;
.super Ljava/lang/Object;
.source "CircularAnimatedDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->setupAnimations()V
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

    .line 161
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->access$302(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;F)F

    .line 165
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->access$300(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->access$202(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;Z)Z

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->access$200(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable$3;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;

    invoke-static {p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;->access$400(Lcom/telguarder/helpers/ui/loadingButton/CircularAnimatedDrawable;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
