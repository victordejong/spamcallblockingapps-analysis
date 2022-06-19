.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/skyfishjy/library/RippleBackground;

.field final synthetic b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;Lcom/skyfishjy/library/RippleBackground;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$12;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$12;->a:Lcom/skyfishjy/library/RippleBackground;

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

    .line 376
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$12;->a:Lcom/skyfishjy/library/RippleBackground;

    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->b()V

    .line 377
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$12;->a:Lcom/skyfishjy/library/RippleBackground;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/skyfishjy/library/RippleBackground;->setVisibility(I)V

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
