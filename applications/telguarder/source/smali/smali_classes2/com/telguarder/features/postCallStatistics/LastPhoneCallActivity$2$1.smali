.class Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;
.super Ljava/lang/Object;
.source "LastPhoneCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;->onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

.field final synthetic val$caching:Z

.field final synthetic val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->this$1:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-boolean p3, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->val$caching:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->this$1:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->active:Z

    if-nez v0, :cond_1

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->this$1:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$400(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->this$1:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$400(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    .line 582
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->this$1:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    sget-object v2, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->DATA_NOT_AVAILABLE:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-ne v1, v2, :cond_2

    const v1, 0x7f100126

    goto :goto_0

    :cond_2
    const v1, 0x7f100125

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 584
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->this$1:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->this$1:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

    iget-object v1, v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$500(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->this$1:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

    iget-object v2, v2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;->this$0:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-static {v2}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->access$600(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2$1;->val$caching:Z

    invoke-static {v0, v1, v2, v3}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->openAnalyze(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
