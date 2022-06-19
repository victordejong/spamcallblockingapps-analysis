.class Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$4;->b:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$4;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$4;->b:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->b()V

    const/4 v0, 0x1

    .line 193
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 194
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$4;->b:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    .line 195
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, 0x2

    .line 194
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$4;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v3, "contact list"

    invoke-static {p1, v1, v3, v0, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method
