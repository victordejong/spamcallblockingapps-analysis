.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->loadLastNumber(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Ljava/util/ArrayList<",
        "Lcom/telguarder/features/numberLookup/PhoneEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iput-object p3, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 816
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 821
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 824
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 825
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->sortMergedResultListByDate(Ljava/util/ArrayList;)V

    .line 827
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$500(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$500(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->sortMergedResultListByDate(Ljava/util/ArrayList;)V

    .line 831
    :cond_1
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    if-eqz v1, :cond_2

    .line 832
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$500(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;->onUpdateFinished(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 834
    :cond_2
    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 835
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 857
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return-void
.end method
