.class public Lrp0;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field public final a:Lcom/firebase/jobdispatcher/GooglePlayReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/firebase/jobdispatcher/GooglePlayReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lrp0;->a:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lsp0;

    invoke-direct {v2, p1, v1}, Lsp0;-><init>(Landroid/os/Messenger;Ljava/lang/String;)V

    iget-object p1, p0, Lrp0;->a:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {p1, v2, v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->j(Lwp0;Landroid/os/Bundle;)Lyp0;

    move-result-object p1

    iget-object v0, p0, Lrp0;->a:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->b()Llp0;

    move-result-object v0

    invoke-virtual {v0, p1}, Llp0;->c(Lyp0;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x3

    const-string v0, "FJD.GooglePlayReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Invalid start execution message."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final b(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->d()Lxp0;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxp0;->c(Landroid/os/Bundle;)Lyp0$b;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    const-string v0, "FJD.GooglePlayReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Invalid stop execution message."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lyp0$b;->l()Lyp0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Llp0;->e(Lyp0;Z)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "FJD.GooglePlayReceiver"

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lrp0;->a:Lcom/firebase/jobdispatcher/GooglePlayReceiver;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    :try_start_0
    iget v2, p1, Landroid/os/Message;->sendingUid:I

    const-string v3, "com.google.android.gms"

    invoke-virtual {v1, v2, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lrp0;->b(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lrp0;->a(Landroid/os/Message;)V

    :cond_3
    :goto_0
    return-void

    :catch_0
    const-string p1, "Message was not sent from GCM."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
