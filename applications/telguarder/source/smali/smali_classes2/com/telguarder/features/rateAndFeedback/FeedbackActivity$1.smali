.class Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->setCancelListener()V
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

    .line 95
    iput-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$1;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$1;->this$0:Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-virtual {p1}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->onBackPressed()V

    return-void
.end method
