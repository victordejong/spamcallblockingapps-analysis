.class Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->postNewReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;Landroid/app/Activity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-direct {p0, p2}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-static {v0, p1}, Lcom/telguarder/helpers/errorhandling/ErrorHelper;->handleError(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 143
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-static {p1}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->access$300(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-static {v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->access$200(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    const v0, 0x7f100149

    invoke-static {p1, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 138
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-virtual {p1}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->onBackPressed()V

    return-void
.end method
