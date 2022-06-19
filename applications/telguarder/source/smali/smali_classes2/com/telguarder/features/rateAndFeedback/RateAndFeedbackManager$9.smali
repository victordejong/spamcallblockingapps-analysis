.class Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$9;
.super Ljava/lang/Object;
.source "RateAndFeedbackManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 154
    iput-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$9;->this$0:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 157
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 158
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPopupFeedbackAction(Ljava/lang/Boolean;)V

    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
