.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->run()V
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
.field final synthetic this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;Landroid/content/Context;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    invoke-direct {p0, p2}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 709
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    if-eqz p1, :cond_0

    .line 710
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$500(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;->onUpdateFinished(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 712
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$limit:I

    invoke-static {p1, v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$800(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 678
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->onSuccess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 683
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$700(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 690
    :cond_0
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->sortMergedResultListByDate(Ljava/util/ArrayList;)V

    .line 691
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 692
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 693
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$900(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)V

    .line 694
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    if-eqz p1, :cond_1

    .line 695
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$500(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;->onUpdateFinished(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 697
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$limit:I

    invoke-static {p1, v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$800(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;I)V

    .line 698
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$limit:I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 699
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 704
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void

    .line 684
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->val$limit:I

    invoke-static {p1, v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$800(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;I)V

    .line 685
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    if-eqz p1, :cond_4

    .line 686
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    invoke-interface {p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;->onUpdateNotNeeded()V

    :cond_4
    return-void
.end method
