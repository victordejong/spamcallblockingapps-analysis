.class public Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/Serializable;Z)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
    .locals 2

    .line 1022
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketPlaceInActivityWidget;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager;->getSpringSystem()Lcom/facebook/rebound/k;

    move-result-object p2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketPlaceInActivityWidget;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V

    return-object p1
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setChatHeadToDefaultPosition$6fde7147(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 5

    .line 27
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    .line 28
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager;->getMaxWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 29
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    .line 30
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager;->getMaxHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    return-void
.end method
