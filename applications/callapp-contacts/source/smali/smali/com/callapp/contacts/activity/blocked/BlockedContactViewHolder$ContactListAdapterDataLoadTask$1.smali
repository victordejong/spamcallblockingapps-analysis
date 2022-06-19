.class Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->b(Lcom/callapp/contacts/model/contact/ContactData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;

    iput-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->getDeviceId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-static {}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->n()Landroidx/b/e;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/b/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;

    iget-object v1, v1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;

    invoke-static {v2}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->a(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;

    invoke-static {v2}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->b(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;

    iget-object v3, v3, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;->d:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;

    invoke-static {v3}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;)Lcom/callapp/contacts/model/ReminderData;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderData;)V

    :cond_1
    return-void
.end method
