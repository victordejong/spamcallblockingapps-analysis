.class Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/callapp/contacts/util/animation/flip3d/FlipViews;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;FFF)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->d:Lcom/callapp/contacts/util/animation/flip3d/FlipViews;

    iput p2, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->a:F

    iput p3, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->b:F

    iput p4, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->d:Lcom/callapp/contacts/util/animation/flip3d/FlipViews;

    invoke-static {p1}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->a(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->d:Lcom/callapp/contacts/util/animation/flip3d/FlipViews;

    invoke-static {p1}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->b(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->d:Lcom/callapp/contacts/util/animation/flip3d/FlipViews;

    invoke-static {p1}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->b(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 71
    new-instance p1, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;

    iget v0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->a:F

    neg-float v0, v0

    iget v1, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->b:F

    iget v2, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->c:F

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3, v1, v2}, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;-><init>(FFFF)V

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->d:Lcom/callapp/contacts/util/animation/flip3d/FlipViews;

    invoke-static {v0}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->c(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;->setFillAfter(Z)V

    .line 75
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/animation/flip3d/Flip3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/flip3d/FlipViews$1;->d:Lcom/callapp/contacts/util/animation/flip3d/FlipViews;

    invoke-static {v0}, Lcom/callapp/contacts/util/animation/flip3d/FlipViews;->b(Lcom/callapp/contacts/util/animation/flip3d/FlipViews;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
