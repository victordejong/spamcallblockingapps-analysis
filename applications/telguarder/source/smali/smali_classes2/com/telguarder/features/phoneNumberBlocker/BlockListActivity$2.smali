.class Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$2;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->loadBlockedNumbersFromBackend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
        "Lcom/telguarder/features/rateAndFeedback/ReportResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;Landroid/app/Activity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$2;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-direct {p0, p2}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 150
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isBlockedNumberListNotEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$2;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->access$200(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;ZLjava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 140
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isBlockedNumberListNotEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$2;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-static {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->access$100(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$2;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->handleReportResult()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$2;->onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V

    return-void
.end method
