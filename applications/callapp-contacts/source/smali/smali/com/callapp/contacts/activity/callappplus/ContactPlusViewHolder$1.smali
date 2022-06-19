.class Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

.field final synthetic c:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;ILcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    iput p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 167
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 169
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    .line 170
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->getAdapterPosition()I

    move-result v1

    iget v2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;->a:I

    .line 169
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALLAPP_PLUS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v3, "callAppPlus"

    invoke-static {p1, v1, v3, v0, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    .line 174
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CallAppPlus"

    const-string v1, "ClickProfileCard"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
