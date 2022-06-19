.class Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Lcom/callapp/contacts/model/ReminderData;Lcom/callapp/contacts/activity/base/ScrollEvents;ILcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/blocked/SpamReminderData;

.field final synthetic b:Lcom/callapp/contacts/model/ReminderData;

.field final synthetic c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

.field final synthetic d:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/activity/blocked/SpamReminderData;Lcom/callapp/contacts/model/ReminderData;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->d:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->a:Lcom/callapp/contacts/activity/blocked/SpamReminderData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->b:Lcom/callapp/contacts/model/ReminderData;

    iput-object p4, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->a:Lcom/callapp/contacts/activity/blocked/SpamReminderData;

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/blocked/SpamReminderData;->isBlocked:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->b:Lcom/callapp/contacts/model/ReminderData;

    iget-wide v0, p1, Lcom/callapp/contacts/model/ReminderData;->contactId:J

    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->b:Lcom/callapp/contacts/model/ReminderData;

    iget-object p1, p1, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->b:Lcom/callapp/contacts/model/ReminderData;

    iget-object v2, v2, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v1, p1, v2}, Lcom/callapp/contacts/manager/BlockManager;->a(JLjava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    .line 187
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    if-eqz p1, :cond_1

    .line 188
    invoke-interface {p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;->b()V

    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->b:Lcom/callapp/contacts/model/ReminderData;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;->b:Lcom/callapp/contacts/model/ReminderData;

    iget-object v1, v1, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/manager/BlockManager;->b(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    :cond_1
    return-void
.end method
