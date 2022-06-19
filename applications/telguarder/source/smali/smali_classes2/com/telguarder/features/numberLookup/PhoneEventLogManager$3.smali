.class Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->downloadSpamCommentData(Landroid/content/Context;Ljava/util/ArrayList;I)V
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
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

.field final synthetic val$peList:Ljava/util/ArrayList;

.field final synthetic val$peListCurrIndex:I


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Lcom/telguarder/features/numberLookup/PhoneEvent;ILjava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iput p3, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peListCurrIndex:I

    iput-object p4, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peList:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get last spam comment error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 588
    iget p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peListCurrIndex:I

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 589
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peListCurrIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->downloadSpamCommentData(Landroid/content/Context;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 591
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->saveFullHistoryListCache(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/rateAndFeedback/CommentsResult;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 566
    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;

    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;->text:Ljava/lang/String;

    .line 568
    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;

    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;->timeStamp:Ljava/lang/String;

    .line 569
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$200(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$200(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$300(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$300(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_2
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v1, v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setLastSpamComment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setLastSpamDate(Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

    iget v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peListCurrIndex:I

    invoke-interface {p1, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;->handle(I)V

    goto :goto_0

    .line 576
    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$200(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$200(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_4
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$300(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->access$300(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$pe:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_5
    :goto_0
    iget p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peListCurrIndex:I

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_6

    .line 580
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$peListCurrIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->downloadSpamCommentData(Landroid/content/Context;Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 582
    :cond_6
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->this$0:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->saveFullHistoryListCache(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 561
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;->onSuccess(Lcom/telguarder/features/rateAndFeedback/CommentsResult;)V

    return-void
.end method
