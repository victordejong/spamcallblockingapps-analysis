.class public Lcom/callapp/contacts/popup/ActionsPopup;
.super Lcom/callapp/contacts/popup/contact/DialogList;
.source "SourceFile"


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/ContactData;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/callapp/contacts/action/Action$ContextType;

.field private final d:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/callapp/contacts/popup/ActionsPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 28
    iput-object p4, p0, Lcom/callapp/contacts/popup/ActionsPopup;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/callapp/contacts/popup/ActionsPopup;->c:Lcom/callapp/contacts/action/Action$ContextType;

    .line 30
    iput-object p5, p0, Lcom/callapp/contacts/popup/ActionsPopup;->d:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/ActionsPopup;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/popup/ActionsPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/popup/ActionsPopup;)Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/callapp/contacts/popup/ActionsPopup;->d:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    return-object p0
.end method


# virtual methods
.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 55
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 35
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/ActionsPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/popup/ActionsPopup;->c:Lcom/callapp/contacts/action/Action$ContextType;

    iget-object v3, p0, Lcom/callapp/contacts/popup/ActionsPopup;->d:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Ljava/util/List;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/callapp/contacts/popup/ActionSelectAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/ActionsPopup;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/callapp/contacts/popup/ActionSelectAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    new-instance v2, Lcom/callapp/contacts/popup/ActionsPopup$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/popup/ActionsPopup$1;-><init>(Lcom/callapp/contacts/popup/ActionsPopup;Ljava/util/List;)V

    invoke-virtual {p0, v1, v2}, Lcom/callapp/contacts/popup/ActionsPopup;->a(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogList;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
