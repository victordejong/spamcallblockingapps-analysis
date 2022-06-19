.class Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$2;
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

    .line 246
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$2;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 250
    invoke-static {}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->values()[Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$2;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-wide v0, v0, Lcom/callapp/contacts/model/ReminderData;->reminderId:J

    long-to-int v1, v0

    aget-object p1, p1, v1

    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$2;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->a:Lcom/callapp/contacts/model/ReminderData;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$2;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5$2;->a:Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;->b()V

    :cond_0
    return-void
.end method
