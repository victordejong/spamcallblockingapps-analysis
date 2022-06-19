.class Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;
.super Lcom/callapp/contacts/manager/popup/ResultPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareContactPopup"
.end annotation


# instance fields
.field a:Lcom/callapp/contacts/model/contact/ContactData;

.field b:Landroid/app/Activity;

.field c:Z

.field final synthetic d:Lcom/callapp/contacts/action/shared/ShareContactAction;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->d:Lcom/callapp/contacts/action/shared/ShareContactAction;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/ResultPopup;-><init>()V

    .line 308
    iput-boolean p4, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->c:Z

    .line 309
    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 310
    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->b:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;ZLcom/callapp/contacts/action/shared/ShareContactAction$1;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 5

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/chooseContact/ChooseContactFromContactsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v1

    .line 323
    :cond_0
    iget-boolean v2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const v2, 0x7f12060b

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 324
    invoke-static {v2, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v2, 0x7f12060a

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    .line 326
    invoke-static {v2, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "activity_title"

    .line 328
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-static {p1, v0, p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4

    .line 335
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "contactId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    return-void

    .line 345
    :cond_1
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(J)Lcom/callapp/framework/phone/Phone;

    move-result-object p3

    .line 347
    new-instance p4, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {p4}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v0, v1

    .line 348
    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    .line 349
    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;-><init>()V

    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/external/NotificationViberLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/external/NotificationViberLoader;-><init>()V

    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-direct {v0, v2}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    .line 350
    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    .line 351
    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    new-instance v0, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    invoke-virtual {p4, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    .line 352
    invoke-virtual {p4}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    invoke-virtual {p4}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object p4

    if-eqz p3, :cond_2

    .line 355
    invoke-virtual {p4, p3, p1, p2}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    goto :goto_0

    .line 357
    :cond_2
    sget-object p3, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p4, p3, p1, p2}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    .line 360
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    .line 361
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 362
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 363
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    .line 368
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_4

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->c:Z

    if-nez p2, :cond_4

    .line 369
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f120062

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1111
    invoke-virtual {p1, p2, p4}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 373
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    const p3, 0x7f120065

    if-eqz p2, :cond_5

    .line 374
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2111
    invoke-virtual {p1, p2, p4}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 381
    :cond_5
    iget-boolean p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->c:Z

    if-eqz p2, :cond_7

    .line 382
    iget-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p1, p2}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;

    move-result-object p2

    .line 383
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 384
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3111
    invoke-virtual {p1, p2, p4}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 387
    :cond_6
    iget-object p3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->b:Landroid/app/Activity;

    iget-object p4, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->sendingOthersInfo:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-static {p3, p1, p4, p2, v0}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/ArrayList;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    return-void

    .line 389
    :cond_7
    iget-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p2, p1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;

    move-result-object p2

    .line 390
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 391
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4111
    invoke-virtual {p1, p2, p4}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 394
    :cond_8
    iget-object p3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->b:Landroid/app/Activity;

    iget-object p4, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->sendingThisContactsInfo:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-static {p3, p4, p1, p2, v0}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/ArrayList;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    return-void
.end method
