.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;
.super Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmailsDataHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

.field private e:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V
    .locals 6

    .line 451
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    .line 452
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;Ljava/util/List;II)V

    .line 523
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->e:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;IILcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$1;)V
    .locals 0

    .line 448
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 457
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 458
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->getData()Ljava/util/List;

    move-result-object p2

    monitor-enter p2

    .line 459
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a()V

    .line 460
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getVisibleEmails()Ljava/util/Collection;

    move-result-object p1

    .line 461
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    const v1, 0x7f08039d

    if-eqz v0, :cond_3

    .line 462
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONEmail;

    .line 464
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v8, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;

    const v4, 0x7f1204a9

    const v2, 0x7f1204aa

    .line 469
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    move-object v2, v8

    move-object v3, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;ILjava/lang/String;Ljava/lang/String;I)V

    .line 505
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v8}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a(Ljava/lang/String;ILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->b()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 512
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->getData()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->e:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->a(Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->getData()Ljava/util/List;

    move-result-object p1

    const v0, 0x7f1204a9

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->e:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;->b(Ljava/lang/String;ILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_4
    :goto_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
