.class Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/listener/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 150
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallRemindersManager;->b(Ljava/lang/Long;)J

    .line 151
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 152
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    .line 154
    :cond_0
    sget-object p1, Lcom/callapp/contacts/workers/CallReminderWorker;->a:Lcom/callapp/contacts/workers/CallReminderWorker$Companion;

    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->jobId:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;->a(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1$1;-><init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$4$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
