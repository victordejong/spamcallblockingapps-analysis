.class Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    .line 57
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 58
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Add Contact"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/search/AddEntryItemData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;)V

    return-void

    .line 69
    :cond_0
    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogList;

    const v2, 0x7f120085

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 70
    sget-object v2, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/popup/contact/DialogList;->setDialogType(Lcom/callapp/contacts/manager/popup/Popup$DialogType;)V

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    const v4, 0x7f120298

    invoke-direct {v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    const v4, 0x7f120299

    invoke-direct {v3, v4}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v3, Lcom/callapp/contacts/popup/contact/AdapterText;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d00aa

    invoke-direct {v3, v4, v5, v2}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 76
    new-instance v2, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1$1;-><init>(Lcom/callapp/contacts/activity/contact/list/AddToContactsViewHolder$1;Landroid/view/View;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 92
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_1
    return-void
.end method
