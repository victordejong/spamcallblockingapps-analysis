.class Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;Ljava/util/List;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->d(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    new-instance v1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iget-object v3, v3, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->e(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iget-object v4, v4, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->a(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->f(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iget-object v1, v1, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->d(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->d(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->c()V

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->d(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->setData(Ljava/util/List;)V

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->b:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->g(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
