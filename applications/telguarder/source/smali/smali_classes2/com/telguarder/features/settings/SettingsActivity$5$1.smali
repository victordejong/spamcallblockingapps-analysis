.class Lcom/telguarder/features/settings/SettingsActivity$5$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/settings/SettingsActivity$5;->onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/settings/SettingsActivity$5;

.field final synthetic val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;


# direct methods
.method constructor <init>(Lcom/telguarder/features/settings/SettingsActivity$5;Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$5$1;->this$1:Lcom/telguarder/features/settings/SettingsActivity$5;

    iput-object p2, p0, Lcom/telguarder/features/settings/SettingsActivity$5$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$5$1;->this$1:Lcom/telguarder/features/settings/SettingsActivity$5;

    iget-object v0, v0, Lcom/telguarder/features/settings/SettingsActivity$5;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/telguarder/features/settings/SettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/telguarder/features/settings/SettingsActivity;->active:Z

    if-nez v0, :cond_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$5$1;->this$1:Lcom/telguarder/features/settings/SettingsActivity$5;

    iget-object v0, v0, Lcom/telguarder/features/settings/SettingsActivity$5;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {v0}, Lcom/telguarder/features/settings/SettingsActivity;->access$400(Lcom/telguarder/features/settings/SettingsActivity;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$5$1;->val$error:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$5$1;->this$1:Lcom/telguarder/features/settings/SettingsActivity$5;

    iget-object v0, v0, Lcom/telguarder/features/settings/SettingsActivity$5;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {v0}, Lcom/telguarder/features/settings/SettingsActivity;->access$400(Lcom/telguarder/features/settings/SettingsActivity;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity$5$1;->this$1:Lcom/telguarder/features/settings/SettingsActivity$5;

    iget-object v0, v0, Lcom/telguarder/features/settings/SettingsActivity$5;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    iget-object v1, p0, Lcom/telguarder/features/settings/SettingsActivity$5$1;->this$1:Lcom/telguarder/features/settings/SettingsActivity$5;

    iget-object v1, v1, Lcom/telguarder/features/settings/SettingsActivity$5;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-static {v1}, Lcom/telguarder/features/settings/SettingsActivity;->access$100(Lcom/telguarder/features/settings/SettingsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/features/userConsentHandling/PolicyWebView;->openPolicy(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
