.class Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "BlockedNumberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->loadBlockedNumbersFromBackend(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
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
.field final synthetic this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

.field final synthetic val$loadCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    iput-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->val$loadCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->val$loadCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->val$loadCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/rateAndFeedback/ReportResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$002(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;Lcom/telguarder/features/rateAndFeedback/ReportResult;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    .line 181
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveCachedBlockedNumberList(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->val$loadCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$3;->onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V

    return-void
.end method
