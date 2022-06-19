.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getPresenterManager()Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getPresenterContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 201
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getPresenterContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const/16 v2, 0xcd

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 204
    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;

    iget-object v3, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getPresenterContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-direct {v2, v3, v1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4$doTask$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4$doTask$1;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$4;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
