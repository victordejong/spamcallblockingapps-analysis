.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->i(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHostToCheck()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/callapp/contacts/loader/social/UnauthorizedAccessErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->l(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void

    .line 300
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->a:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/callapp/contacts/loader/social/UnauthorizedAccessErrorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 314
    :try_start_2
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v2, v1, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/Exception;Z)V

    .line 316
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Failed"

    const-string v2, "Person Select Search Failed"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 312
    iget-object v3, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    const v4, 0x7f1205fe

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->k(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-static {v4, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 310
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v2, v0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/Exception;Z)V

    goto :goto_0

    .line 302
    :catch_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    new-instance v1, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2$1;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 318
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->l(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 319
    throw v0
.end method
