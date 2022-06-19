.class public Lcom/callapp/contacts/manager/popup/ResultPopupActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    .line 52
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "ResultPopupActivity got non ResultPopup instance"

    const/16 v2, 0x50

    .line 1206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 38
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/popup/Popup;

    move-result-object v0

    .line 39
    instance-of v1, v0, Lcom/callapp/contacts/manager/popup/ResultPopup;

    if-eqz v1, :cond_0

    .line 41
    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/callapp/contacts/manager/popup/ResultPopup;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/callapp/contacts/manager/popup/ResultPopup;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "Exception in onActivityResult()"

    invoke-static {p2, p1, p3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/popup/ResultPopupActivity;->a()V

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/ResultPopupActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/ResultPopupActivity;->setKeyguardDismissAndScreenWindowFlags()V

    .line 15
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/ResultPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/popup/ResultPopupActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 26
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Intent;)Lcom/callapp/contacts/manager/popup/Popup;

    move-result-object p1

    .line 27
    instance-of v0, p1, Lcom/callapp/contacts/manager/popup/ResultPopup;

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Lcom/callapp/contacts/manager/popup/ResultPopup;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/popup/ResultPopup;->a(Landroid/app/Activity;)V

    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/popup/ResultPopupActivity;->a()V

    .line 31
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/ResultPopupActivity;->finish()V

    return-void
.end method

.method public shouldAssertPermissions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
