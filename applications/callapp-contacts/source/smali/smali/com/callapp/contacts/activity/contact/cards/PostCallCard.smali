.class public Lcom/callapp/contacts/activity/contact/cards/PostCallCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard<",
        "Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;",
        ">;",
        "Lcom/callapp/contacts/manager/phone/CallStateListener;"
    }
.end annotation


# instance fields
.field private contactData:Lcom/callapp/contacts/model/contact/ContactData;

.field private isCardAlreadyHide:Z

.field private final itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0245

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->isCardAlreadyHide:Z

    .line 80
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 64
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Lcom/callapp/contacts/manager/Singletons$SenderType;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleIntentViaSenderHelper(Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handlePvr()V

    return-void
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Z)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleNote()V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleIncognito()V

    return-void
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleUnIncognito()V

    return-void
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleAddAccount()V

    return-void
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleBlock()V

    return-void
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleUnBlock()V

    return-void
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleInvite()V

    return-void
.end method

.method static synthetic access$902(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->isCardAlreadyHide:Z

    return p1
.end method

.method public static getIM()Lcom/callapp/contacts/activity/contact/details/ContactAction;
    .locals 7

    .line 399
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UNKNOWN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 400
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->isAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    return-object v0

    .line 404
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UNKNOWN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 407
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->values()[Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v1

    .line 409
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 410
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 411
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object v0

    .line 413
    :cond_2
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->isIM()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->isAppInstalled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 414
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hl:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0, v5}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-object v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private getItemLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d011b

    return v0
.end method

.method private handleAddAccount()V
    .locals 4

    .line 344
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "ClickPostCallAddToContacts"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v0, Lcom/callapp/contacts/action/local/CreateContactsAction;

    invoke-direct {v0}, Lcom/callapp/contacts/action/local/CreateContactsAction;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/action/local/CreateContactsAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method

.method private handleBlock()V
    .locals 4

    .line 369
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "ClickPostCallBlock"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/callapp/contacts/action/local/BlockCallAction;

    invoke-direct {v0}, Lcom/callapp/contacts/action/local/BlockCallAction;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/action/local/BlockCallAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method

.method private handleHideCard()V
    .locals 4

    .line 225
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->isCardAlreadyHide:Z

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->hideCard()V

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->isCardAlreadyHide:Z

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private handleIncognito()V
    .locals 4

    .line 350
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "ClickPostCallPromotedFeature"

    const-string v3, "Incognito"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;

    invoke-direct {v0}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;-><init>()V

    .line 352
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method private handleIntentViaSenderHelper(Lcom/callapp/contacts/manager/Singletons$SenderType;)V
    .locals 4

    .line 387
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->SMS:Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-string v1, "Contact Details"

    if-ne p1, v0, :cond_0

    .line 388
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "ClickPostCallSMS"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons$SenderType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClickPostCall_IM"

    invoke-virtual {v0, v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    invoke-static {p1}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object p1

    .line 393
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method private handleInvite()V
    .locals 4

    .line 380
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "ClickPostCallPromotedFeature"

    const-string v3, "Invite"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pcc"

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Lcom/callapp/contacts/model/contact/ContactData;ILjava/lang/String;)Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private handleNote()V
    .locals 4

    .line 362
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "ClickPostCallNote"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v0, Lcom/callapp/contacts/action/local/NoteAction;

    invoke-direct {v0}, Lcom/callapp/contacts/action/local/NoteAction;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/action/local/NoteAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method

.method private handlePvr()V
    .locals 5

    .line 333
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "ClickPostCallPromotedFeature"

    const-string v3, "PVR"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 335
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",  CD header icon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Personal Store Item"

    const-string v4, "Icon clicked"

    invoke-virtual {v1, v3, v4, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v1, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_CONTACT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleUnBlock()V
    .locals 4

    .line 375
    new-instance v0, Lcom/callapp/contacts/action/local/UnBlockCallAction;

    invoke-direct {v0}, Lcom/callapp/contacts/action/local/UnBlockCallAction;-><init>()V

    .line 376
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/action/local/UnBlockCallAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void
.end method

.method private handleUnIncognito()V
    .locals 3

    .line 356
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "ClickPostCallNote"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v0, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;

    invoke-direct {v0}, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method private setDataForList(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 5

    .line 233
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    .line 234
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_9

    .line 238
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SMS_MESSAGE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getIM()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    invoke-static {}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getIM()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->NOTE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getPromotedItem(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isBusiness()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SMS_MESSAGE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_2
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hm:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_3

    .line 263
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getPromotedItem(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getIM()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 267
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    invoke-static {}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getIM()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_4
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hm:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 3039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    goto :goto_1

    .line 274
    :cond_5
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SMS_MESSAGE:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ADD_CONTACT:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hn:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_6

    .line 280
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getPromotedItem(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getIM()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 283
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    invoke-static {}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getIM()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_7
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hn:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 4039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 289
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;

    .line 291
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;->getPostCallContactAction()Lcom/callapp/contacts/activity/contact/details/ContactAction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 294
    :cond_8
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Contact Details"

    const-string v4, "ViewPostCallCard"

    invoke-virtual {v2, v3, v4, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->updateCardData(Ljava/util/List;Z)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getCardBgColor()I
    .locals 2

    .line 301
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getCardInitHeight()I
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getFooterText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGalleryAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryAdapter<",
            "Lcom/callapp/contacts/activity/contact/cards/PostCallCardItem;",
            "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/ImageViewGalleryItemViewHolder;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getOnItemLongClickedListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v3

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->getItemLayoutResourceId()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/PostCallGalleryAdapter;-><init>(Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;I)V

    return-object v0
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

    .line 176
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getOnFooterClickedListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemLongClickedListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnRightIconClickedListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnRowClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public getPromotedItem(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/activity/contact/details/ContactAction;
    .locals 3

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "ReferAndEarnFeature"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getGenomeData()Lcom/callapp/common/model/json/JSONContact;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getGenomeData()Lcom/callapp/common/model/json/JSONContact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONContact;->isInstalledApp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->REFER_AND_EARN:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 315
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->PVR:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_1
    new-instance v1, Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/IncognitoContactsManager;-><init>()V

    .line 318
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 319
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 322
    :cond_2
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :goto_0
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    return-object p1
.end method

.method public isScrollable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 205
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/call/CallState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->setDataForList(Lcom/callapp/contacts/model/call/CallData;)V

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/ShowToolTipOnPostCard;->a:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 1091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 211
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/PostCallCard;)V

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleHideCard()V

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

    .line 191
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->handleHideCard()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalGalleryCard;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/PostCallCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->removeCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
