.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;
.super Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebSiteDataHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    .line 347
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 352
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getWebsites()Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    .line 355
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONWebsite;

    .line 357
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONWebsite;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONWebsite;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/loader/YouTubeLoader;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 358
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONWebsite;->getWebsiteUrl()Ljava/lang/String;

    move-result-object p2

    .line 364
    :cond_2
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;

    const v2, 0x7f1204ac

    const v0, 0x7f1204ad

    .line 366
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;ILjava/lang/String;Ljava/lang/String;I)V

    const v0, 0x7f1204ac

    const v1, 0x7f0803fb

    .line 402
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;->a(Ljava/lang/String;IILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V

    :cond_3
    return-void
.end method
