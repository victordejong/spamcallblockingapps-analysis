.class Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Lcom/callapp/contacts/model/ReminderData;Lcom/callapp/contacts/activity/base/ScrollEvents;ILcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/ReminderData;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/model/ReminderData;I)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;->c:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;->a:Lcom/callapp/contacts/model/ReminderData;

    iput p3, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;->b:I

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 206
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v1, Lcom/callapp/contacts/model/ReminderType;->BLOCKED_RULE:Lcom/callapp/contacts/model/ReminderType;

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;->a:Lcom/callapp/contacts/model/ReminderData;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;->b:I

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Lcom/callapp/contacts/model/ReminderData;Landroid/content/Context;I)V

    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;->b:I

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v2, v1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    iget-object v2, v2, Lcom/callapp/contacts/model/ReminderType;->title:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    return-void
.end method
