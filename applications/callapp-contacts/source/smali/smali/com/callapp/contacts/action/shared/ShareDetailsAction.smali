.class public Lcom/callapp/contacts/action/shared/ShareDetailsAction;
.super Lcom/callapp/contacts/action/shared/ShareContactAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->shareContactDetails:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/action/shared/ShareContactAction;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 7

    .line 30
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Contact List"

    const-string v1, "Share details action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance p3, Lcom/callapp/contacts/action/shared/ShareDialog;

    const v0, 0x7f12062b

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/callapp/contacts/action/shared/ShareDialog;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 36
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120013

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 37
    new-instance v5, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;

    const v6, 0x7f080489

    invoke-direct {v5, v6, v2, v3}, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v2, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;

    const v3, 0x7f1204a4

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08048d

    invoke-direct {v2, v6, v5, v3}, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f12005a

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    new-instance v3, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;

    const v4, 0x7f08048a

    invoke-direct {v3, v4, v1, v2}, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;

    const v2, 0x7f08048c

    const v3, 0x7f12006f

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;

    const v2, 0x7f08048b

    const v3, 0x7f120075

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/callapp/contacts/popup/contact/ShareAdapter;

    const v2, 0x7f0d026a

    invoke-direct {v1, p1, v2, v0}, Lcom/callapp/contacts/popup/contact/ShareAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;-><init>(Lcom/callapp/contacts/action/shared/ShareDetailsAction;Lcom/callapp/contacts/action/shared/ShareDialog;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/popup/contact/ShareAdapter;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 79
    invoke-virtual {p3, v1}, Lcom/callapp/contacts/action/shared/ShareDialog;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
