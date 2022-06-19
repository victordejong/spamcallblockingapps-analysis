.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$2;->c:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$2;->a:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$2;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 233
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 234
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$2;->a:Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;

    .line 235
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, 0x5

    .line 234
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsAdapter$2;->b:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->SEARCH:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v3, "search"

    invoke-static {p1, v1, v3, v0, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method
