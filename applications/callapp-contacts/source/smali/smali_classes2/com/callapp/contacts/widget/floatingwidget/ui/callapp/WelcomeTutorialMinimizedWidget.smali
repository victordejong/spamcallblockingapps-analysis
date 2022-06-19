.class public Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 8

    .line 71
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(Lcom/facebook/rebound/e;)V

    .line 72
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->o:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    .line 1153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, p1, Lcom/facebook/rebound/e$a;->a:D

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v2, v4

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-double v7, v0, v2

    if-gez v7, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 2153
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 75
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->o:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    :cond_1
    return-void
.end method

.method protected final d(Z)V
    .locals 0

    return-void
.end method

.method protected final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getIconResId()I
    .locals 1

    .line 23
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0804e4

    return v0

    :cond_0
    const v0, 0x7f080308

    return v0
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d01cb

    return v0
.end method

.method public isTooltipLeftShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTooltipRightShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setChatHeadToDefaultPosition(Z)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    .line 55
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fW:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v1

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 59
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 62
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    return-void
.end method
