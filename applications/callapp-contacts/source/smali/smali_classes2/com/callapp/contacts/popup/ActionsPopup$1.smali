.class Lcom/callapp/contacts/popup/ActionsPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ActionsPopup;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/popup/ActionsPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ActionsPopup;Ljava/util/List;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/popup/ActionsPopup$1;->b:Lcom/callapp/contacts/popup/ActionsPopup;

    iput-object p2, p0, Lcom/callapp/contacts/popup/ActionsPopup$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 40
    invoke-static {p2, p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 41
    iget-object p1, p0, Lcom/callapp/contacts/popup/ActionsPopup$1;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/widget/WidgetMetaData;

    iget-object p1, p1, Lcom/callapp/contacts/model/widget/WidgetMetaData;->key:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;)Lcom/callapp/contacts/action/Action;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/callapp/contacts/popup/ActionsPopup$1;->b:Lcom/callapp/contacts/popup/ActionsPopup;

    invoke-static {p3}, Lcom/callapp/contacts/popup/ActionsPopup;->a(Lcom/callapp/contacts/popup/ActionsPopup;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p3

    iget-object p4, p0, Lcom/callapp/contacts/popup/ActionsPopup$1;->b:Lcom/callapp/contacts/popup/ActionsPopup;

    invoke-static {p4}, Lcom/callapp/contacts/popup/ActionsPopup;->b(Lcom/callapp/contacts/popup/ActionsPopup;)Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/callapp/contacts/action/Action;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    .line 45
    iget-object p1, p0, Lcom/callapp/contacts/popup/ActionsPopup$1;->b:Lcom/callapp/contacts/popup/ActionsPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/ActionsPopup;->dismiss()V

    :cond_0
    return-void
.end method
