.class Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "BlockedNumberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->removeBlockedNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$removeCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;Lcom/telguarder/helpers/backend/BackendCallbackListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    iput-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$removeCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    iput-object p3, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$removeCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onError(Ljava/lang/Exception;)V

    .line 164
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendNumberReportDeleteError(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$removeCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V
    .locals 2

    .line 156
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendNumberReportDelete(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$removeCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onSuccess(Ljava/lang/Object;)V

    .line 158
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveCachedBlockedNumberList(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V

    .line 159
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->val$number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->deletePhoneNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 149
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$2;->onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V

    return-void
.end method
