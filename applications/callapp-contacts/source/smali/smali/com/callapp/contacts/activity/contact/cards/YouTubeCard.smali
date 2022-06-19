.class public Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;,
        Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;",
        "Ljava/util/Collection<",
        "Lcom/callapp/contacts/model/contact/VideoData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private firstItemObject:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d030c

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->setInitialCardDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Z)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;)Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->watchYoutubeVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method private setInitialCardDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;-><init>()V

    .line 1199
    iput-object p2, v0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;->a:Ljava/lang/String;

    .line 1204
    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;->b:Ljava/lang/String;

    .line 1209
    iput-object p3, v0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;->c:Ljava/lang/String;

    .line 1214
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject$Builder;Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;)V

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;

    return-void
.end method

.method private watchYoutubeVideo(Ljava/lang/String;)V
    .locals 5

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vnd.youtube:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "force_fullscreen"

    const/4 v3, 0x1

    .line 108
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 112
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "http://www.youtube.com/watch?v="

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 113
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
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

    .line 49
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->youTubeVideos:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xa0

    return v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;)V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->b(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;)Ljava/lang/String;

    move-result-object v0

    .line 3149
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p1, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;->a:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;->c:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->c(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;)Ljava/lang/String;

    move-result-object v0

    .line 3157
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;)V

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

    .line 94
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getYouTubeVideos()Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->updateCardData(Ljava/util/Collection;Z)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;
    .locals 2

    .line 122
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Landroid/view/View;Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;)V

    .line 123
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;)V

    .line 2153
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 35
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->updateCardData(Ljava/util/Collection;Z)V

    return-void
.end method

.method protected updateCardData(Ljava/util/Collection;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/VideoData;",
            ">;Z)V"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 66
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    .line 67
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/VideoData;

    .line 72
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/VideoData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 74
    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Lcom/callapp/contacts/model/contact/VideoData;)V

    .line 83
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->hideCard()V

    :cond_2
    return-void
.end method
