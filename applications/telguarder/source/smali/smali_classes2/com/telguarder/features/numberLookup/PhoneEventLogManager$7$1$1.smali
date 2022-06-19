.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Lcom/telguarder/features/rateAndFeedback/CommentsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

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

.method public onSuccess(Lcom/telguarder/features/rateAndFeedback/CommentsResult;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 842
    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 843
    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;

    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;->text:Ljava/lang/String;

    .line 844
    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;

    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;->timeStamp:Ljava/lang/String;

    .line 845
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 846
    :cond_0
    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v2, v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setLastSpamComment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setLastSpamDate(Ljava/lang/String;)V

    .line 847
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    if-eqz p1, :cond_1

    .line 848
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->this$2:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$500(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p1, v0, v2, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;->onUpdateFinished(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 837
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7$1$1;->onSuccess(Lcom/telguarder/features/rateAndFeedback/CommentsResult;)V

    return-void
.end method
