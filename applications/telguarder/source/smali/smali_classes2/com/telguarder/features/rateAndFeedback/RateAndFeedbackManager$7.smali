.class Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$7;
.super Ljava/lang/Object;
.source "RateAndFeedbackManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->showFeedbackDialog(Landroidx/appcompat/app/AppCompatActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;


# direct methods
.method constructor <init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$7;->this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 145
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPopupFeedbackAction(Ljava/lang/Boolean;)V

    return-void
.end method
