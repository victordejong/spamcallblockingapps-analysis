.class Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;->a:Lcom/callapp/contacts/activity/callreminder/CallReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 184
    invoke-static {v0}, Lcom/callapp/contacts/manager/CallRemindersManager;->a(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5$1;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderActivity$5;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
