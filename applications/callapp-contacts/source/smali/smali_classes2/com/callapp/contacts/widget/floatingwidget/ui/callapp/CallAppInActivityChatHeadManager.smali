.class public abstract Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;-><init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;)V

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;

    const v0, 0x7f1202b9

    .line 31
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppInActivityChatHeadManager$U3R7Tm61dG6kOMn4UAAAdFBgvsA;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/-$$Lambda$CallAppInActivityChatHeadManager$U3R7Tm61dG6kOMn4UAAAdFBgvsA;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;)V

    const v2, 0x7f080372

    invoke-direct {p2, v0, v2, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 30
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setChatHeadCloseButtonData(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)V

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getCloseButtonShadow()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f0800d6

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getListener()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadListener;->a(I)V

    return-void
.end method

.method public static synthetic lambda$U3R7Tm61dG6kOMn4UAAAdFBgvsA(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;
    .locals 3

    .line 39
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070379

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->setHeadHeight(I)V

    .line 41
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->setHeadWidth(I)V

    .line 42
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getMaxHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-direct {p1, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->setInitialPosition(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public final a(II)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/container/DefaultChatHeadManager;->a(II)V

    .line 63
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->setChatHeadToDefaultPosition$6fde7147(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getCloseButtonShadow()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->bringToFront()V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 72
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCloseButtons(II)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e()V

    .line 55
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v0

    int-to-float p2, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p2, p2, v1

    float-to-int p2, p2

    int-to-float p1, p1

    const v1, 0x3f666666    # 0.9f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p2, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setCenter(II)V

    .line 57
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setVisibility(I)V

    return-void
.end method

.method public setupPosition(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getInitialPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v1, v1

    const/4 v3, 0x1

    .line 1113
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 49
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getInitialPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    .line 2113
    invoke-virtual {p1, v0, v1, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void
.end method
