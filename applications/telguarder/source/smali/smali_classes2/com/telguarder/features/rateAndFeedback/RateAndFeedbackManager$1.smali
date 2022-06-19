.class Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$1;
.super Ljava/lang/Object;
.source "RateAndFeedbackManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->showRateDialog(Landroidx/appcompat/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$1;->this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    iput-object p2, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPopupRatingAction(Ljava/lang/Boolean;)V

    .line 88
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$1;->this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1, v0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->access$000(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 89
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$1;->this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    invoke-static {p1, p2}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->access$100(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Z)V

    return-void
.end method
