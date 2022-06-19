.class Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;
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

.field final synthetic b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;->c:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 128
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 129
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;->c:Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/ContactViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 130
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getContactId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactViewHolder$1;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    .line 129
    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return-void
.end method
