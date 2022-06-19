.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/Thread;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;->a:Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 344
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1207ec

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->l(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 346
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$3;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
