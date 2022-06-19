.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    .line 1
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/cloudmessaging/CloudMessage;)I
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/firebase/messaging/g;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/firebase/messaging/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/k;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "FirebaseMessaging"

    const-string v0, "Failed to send message to service."

    .line 2
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x1f4

    return p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.google.firebase.messaging.NOTIFICATION_OPEN"

    .line 1
    invoke-static {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/firebase/messaging/ae;->e(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/ae;->b(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 1
    invoke-static {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/firebase/messaging/ae;->e(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/ae;->c(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
