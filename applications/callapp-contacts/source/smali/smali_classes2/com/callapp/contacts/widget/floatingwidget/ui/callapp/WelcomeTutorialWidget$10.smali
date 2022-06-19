.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$10;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 305
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 306
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$10;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->k(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 307
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$10;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-static {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 309
    :catch_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$10;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->l(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
