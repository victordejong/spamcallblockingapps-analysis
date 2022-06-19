.class Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "SpamCommentSubmitRowViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->reportSpamCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

.field final synthetic val$comment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    iput-object p2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$300(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$400(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 135
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$300(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10003f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$400(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Z)V

    .line 137
    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->isInstantiated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getInstance()Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;->val$comment:Ljava/lang/String;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->addOwnCommentToTheList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
