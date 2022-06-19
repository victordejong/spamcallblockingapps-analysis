.class public Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, 0x10000000

    .line 1093
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "EXTRA_BRING_TO_FRONT_RETRY"

    .line 1094
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1095
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->finish()V

    return-void

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 32
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->finish()V

    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->finish()V

    return-void

    :cond_1
    const-string v0, "activity"

    .line 46
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 49
    const-class v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    goto :goto_0

    .line 52
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    .line 58
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/webview/AuthWebViewDialog;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 62
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/api/helper/common/LoginListener;

    .line 63
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 65
    new-instance v1, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;-><init>(Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/LoginListener;Landroid/content/Intent;)V

    .line 86
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
