.class Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "BlockedNumberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->addBlockedNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/telguarder/helpers/backend/BackendCallbackListener;)V
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
.field final synthetic this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

.field final synthetic val$addCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

.field final synthetic val$block:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$owner:Ljava/lang/String;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;Lcom/telguarder/helpers/backend/BackendCallbackListener;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    iput-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$addCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    iput-object p3, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$number:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$block:Z

    iput-object p5, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$owner:Ljava/lang/String;

    iput-object p6, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$reason:Ljava/lang/String;

    iput-object p7, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$addCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onError(Ljava/lang/Exception;)V

    .line 137
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendNumberReportAddError(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$addCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 118
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendNumberReportAdd(Ljava/lang/String;)V

    .line 119
    iget-boolean v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$block:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-direct {v0}, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$number:Ljava/lang/String;

    iput-object v1, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$owner:Ljava/lang/String;

    iput-object v1, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->owner:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$reason:Ljava/lang/String;

    iput-object v1, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->reason:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-virtual {v1}, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->isPlaceholderEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v3}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v3

    iget-object v3, v3, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v2}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v2

    iget-object v2, v2, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    :goto_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->this$0:Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    invoke-static {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;)Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveCachedBlockedNumberList(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->deletePhoneNumberFromCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager$1;->val$addCallback:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
