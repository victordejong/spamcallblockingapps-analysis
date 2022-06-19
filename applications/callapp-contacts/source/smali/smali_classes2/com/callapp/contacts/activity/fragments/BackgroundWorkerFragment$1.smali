.class public Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->b()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 52
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$1;->a:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->b()V

    .line 55
    :cond_1
    throw v0
.end method
