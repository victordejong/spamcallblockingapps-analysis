.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;Landroid/view/View;I)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;->a:Landroid/view/View;

    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 261
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 262
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;->b:I

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$8;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-static {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->f(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)I

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    :cond_0
    return-void
.end method
