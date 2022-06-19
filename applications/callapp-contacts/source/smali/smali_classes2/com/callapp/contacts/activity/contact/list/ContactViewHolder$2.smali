.class Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$2;->c:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$2;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$2;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    .line 153
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 154
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$2;->c:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    .line 155
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, 0x2

    .line 154
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$2;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    sget-object v3, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v4, "contact list"

    invoke-static {p1, v1, v4, v0, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    .line 158
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$2;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p1, v2}, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;->d(I)V

    :cond_0
    return-void
.end method
