.class Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;
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

.field final synthetic b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

.field final synthetic c:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/model/ReminderData;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->c:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 231
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 232
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Block and Spam"

    const-string v2, "Delete entry"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v1, Lcom/callapp/contacts/model/ReminderType;->BLOCKED:Lcom/callapp/contacts/model/ReminderType;

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120564

    const v1, 0x7f120561

    new-instance v2, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$1;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;)V

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;IILcom/callapp/contacts/event/listener/Listener;)V

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v1, Lcom/callapp/contacts/model/ReminderType;->BLOCKED_RULE:Lcom/callapp/contacts/model/ReminderType;

    if-ne v0, v1, :cond_1

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120563

    const v1, 0x7f120562

    new-instance v2, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$2;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;)V

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;IILcom/callapp/contacts/event/listener/Listener;)V

    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v1, Lcom/callapp/contacts/model/ReminderType;->SPAM:Lcom/callapp/contacts/model/ReminderType;

    if-ne v0, v1, :cond_2

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12056b

    const v1, 0x7f12056a

    new-instance v2, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$3;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;)V

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;IILcom/callapp/contacts/event/listener/Listener;)V

    :cond_2
    return-void
.end method
