.class Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/action/ActionDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 135
    sget-object p1, Lcom/callapp/contacts/workers/CallReminderWorker;->a:Lcom/callapp/contacts/workers/CallReminderWorker$Companion;

    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersData;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->jobId:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/workers/CallReminderWorker$Companion;->a(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3$1;->a:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;

    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$3;->b:Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;->a(Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter;)Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents;->a()V

    return-void
.end method
