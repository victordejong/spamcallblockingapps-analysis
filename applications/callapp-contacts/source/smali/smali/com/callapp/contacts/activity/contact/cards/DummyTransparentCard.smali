.class public Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">;>;",
        "Lcom/callapp/contacts/manager/phone/CallStateListener;"
    }
.end annotation


# instance fields
.field private cardInitHeight:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 27
    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->cardInitHeight:I

    .line 28
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 29
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 30
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;Z)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->showCard(Z)V

    return-void
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->cardInitHeight:I

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPreCall()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700ec

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->cardInitHeight:I

    .line 82
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->showCard(Z)V

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isOutgoing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isTalking()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 85
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700eb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->cardInitHeight:I

    .line 86
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->showCard(Z)V

    :cond_3
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/DummyTransparentCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 61
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->onDestroy()V

    return-void
.end method

.method public setBackground(Landroidx/cardview/widget/CardView;)V
    .locals 0

    return-void
.end method

.method public setElevation()V
    .locals 0

    return-void
.end method
