.class Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$4;
.super Lcom/telguarder/helpers/backend/BackendCallbackListener;
.source "LastPhoneCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->lambda$setBlockCallLayoutListener$12(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;Landroid/app/Activity;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$4;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-direct {p0, p2}, Lcom/telguarder/helpers/backend/BackendCallbackListener;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$4;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$700(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$4;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$800(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$4;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$900(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;Lcom/telguarder/features/rateAndFeedback/ReportResult;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 661
    check-cast p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$4;->onSuccess(Lcom/telguarder/features/rateAndFeedback/ReportResult;)V

    return-void
.end method
