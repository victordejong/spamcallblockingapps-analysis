.class final Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/action/local/AddCallReminderAction$ICallReminder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->a(Landroid/content/Context;Ljava/util/Calendar;Ljava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/action/ActionDoneListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/action/ActionDoneListener;


# direct methods
.method constructor <init>(IZLcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;->a:I

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;->b:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 4

    .line 96
    sget-object v0, Lcom/callapp/contacts/workers/CallReminderWorker;->a:Lcom/callapp/contacts/workers/CallReminderWorker$Companion;

    iget v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;->a:I

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;->b:Z

    if-eqz v1, :cond_0

    .line 98
    iget p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;->a:I

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->a(ILjava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    iget v1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;->a:I

    invoke-static {p1, p2, p3, v1, v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;ILjava/lang/String;)I

    .line 102
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f120173

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 1111
    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$1;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 104
    invoke-interface {p1, p2}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    :cond_1
    return-void
.end method
