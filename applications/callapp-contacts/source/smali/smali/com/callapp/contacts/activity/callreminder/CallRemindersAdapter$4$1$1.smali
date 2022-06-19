.class Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->getAdapterPosition()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    iget-object v1, v1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->c:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    .line 1048
    iget-object v2, v1, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1050
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;->notifyItemRemoved(I)V

    .line 160
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->c:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->a(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    iget-object v1, v1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->c:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->getItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;->a(I)V

    return-void
.end method
