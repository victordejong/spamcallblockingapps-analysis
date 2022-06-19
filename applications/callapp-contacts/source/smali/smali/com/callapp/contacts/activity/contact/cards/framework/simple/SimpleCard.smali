.class public abstract Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        "T:",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder<",
        "TO;>;>",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "TT;TO;>;"
    }
.end annotation


# instance fields
.field private cardViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d026f

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->cardViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    return-object p0
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->cardViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->showMainContent(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->showMainContent(Z)V

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->getCardInitHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;ILandroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;)V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;Z)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    .line 41
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->cardViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->isCardVisibleOnScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 7
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;Z)V

    return-void
.end method
