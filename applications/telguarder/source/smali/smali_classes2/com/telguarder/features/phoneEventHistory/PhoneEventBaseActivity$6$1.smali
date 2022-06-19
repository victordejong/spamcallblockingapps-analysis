.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;->onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;

.field final synthetic val$caching:Z

.field final synthetic val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;

    iput-object p2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    iput-boolean p3, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->val$caching:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->active:Z

    if-nez v0, :cond_1

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->cancelDetailActivityStart()V

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->cancelDetailActivityStart()V

    .line 407
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

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

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;

    iget-object v0, v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->this$1:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;

    iget-object v2, v2, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {v2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$800(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6$1;->val$caching:Z

    invoke-static {v0, v1, v2, v3}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeActivity;->openAnalyze(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
