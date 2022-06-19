.class Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/event/listener/Listener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$1;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 239
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$1;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-wide v0, p1, Lcom/callapp/contacts/model/ReminderData;->contactId:J

    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$1;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object p1, p1, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$1;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object v2, v2, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v2, v2, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v1, p1, v2}, Lcom/callapp/contacts/manager/BlockManager;->a(JLjava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    .line 240
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$1;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$1;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;->b()V

    :cond_0
    return-void
.end method
