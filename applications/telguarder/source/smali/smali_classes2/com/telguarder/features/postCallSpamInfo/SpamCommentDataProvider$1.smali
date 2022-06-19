.class Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "SpamCommentDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;->getData(Landroid/content/Context;Ljava/lang/String;ZLcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;)V
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
.field final synthetic this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;

.field final synthetic val$callback:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider;

    iput-object p2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;->val$callback:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Comment list error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;->val$callback:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;

    invoke-interface {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;->onEndRequest()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;->val$callback:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;

    invoke-interface {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;->onStartRequest()V

    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/rateAndFeedback/CommentsResult;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    :goto_0
    iget-object v2, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 67
    iget-object v2, p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;->comments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;

    .line 68
    iget-object v3, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;->val$callback:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;

    iget-object v4, v2, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;->text:Ljava/lang/String;

    iget-object v2, v2, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;->timeStamp:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;->onAddCommentListItem(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, v1, 0x12

    .line 71
    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;->val$callback:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;

    invoke-interface {v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;->onAddAdvertItem()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;->val$callback:Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;

    invoke-interface {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;->onEndRequest()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/CommentsResult;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$1;->onSuccess(Lcom/telguarder/features/rateAndFeedback/CommentsResult;)V

    return-void
.end method
