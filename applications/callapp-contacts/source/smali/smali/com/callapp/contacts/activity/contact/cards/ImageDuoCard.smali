.class public abstract Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;,
        Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;,
        Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final duoItemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;

.field private itemData:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0118

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 28
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->duoItemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->itemData:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;

    return-object p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->shouldShowCard(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Z)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->hideCard()V

    return-void
.end method

.method private shouldShowCard(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 68
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;->b(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 47
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLeftItemBuilder()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->duoItemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->getLeftItemBuilder()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected getRightItemBuilder()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->duoItemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;->getRightItemBuilder()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->itemData:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;
    .locals 2

    .line 73
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Landroid/view/View;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateCardData(Ljava/lang/Object;Z)V
    .locals 1

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->duoItemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;

    .line 1341
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;-><init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$Builder;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;)V

    .line 53
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject;)V

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
