.class Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$2;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->setDoneListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$2;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 109
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$2;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-static {p1}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->access$000(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$2;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-static {p1}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->access$100(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$2;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    const v0, 0x7f100098

    .line 114
    invoke-static {p1, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$2;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    const v2, 0x7f100095

    .line 115
    invoke-static {v1, v2}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {p1, v0, v1}, Lcom/telguarder/helpers/errorhandling/ErrorModel;->errorModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/errorhandling/ErrorModel;

    move-result-object p1

    .line 116
    invoke-static {p1}, Lcom/telguarder/helpers/errorhandling/ErrorHelper;->showErrorDialog(Lcom/telguarder/helpers/errorhandling/ErrorModel;)V

    :goto_0
    return-void
.end method
