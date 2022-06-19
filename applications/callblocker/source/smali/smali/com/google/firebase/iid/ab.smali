.class final Lcom/google/firebase/iid/ab;
.super Landroid/content/BroadcastReceiver;
.source "com.google.firebase:firebase-iid@@20.1.5"


# instance fields
.field private a:Lcom/google/firebase/iid/ac;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/ac;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/ab;->a:Lcom/google/firebase/iid/ac;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 4
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "Connectivity change received registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/google/firebase/iid/ab;->a:Lcom/google/firebase/iid/ac;

    invoke-virtual {v1}, Lcom/google/firebase/iid/ac;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/firebase/iid/ab;->a:Lcom/google/firebase/iid/ac;

    if-nez v0, :cond_1

    .line 18
    :cond_0
    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/ab;->a:Lcom/google/firebase/iid/ac;

    invoke-virtual {v0}, Lcom/google/firebase/iid/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "Connectivity changed. Starting background sync."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/iid/ab;->a:Lcom/google/firebase/iid/ac;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/Runnable;J)V

    .line 16
    iget-object v0, p0, Lcom/google/firebase/iid/ab;->a:Lcom/google/firebase/iid/ac;

    invoke-virtual {v0}, Lcom/google/firebase/iid/ac;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/ab;->a:Lcom/google/firebase/iid/ac;

    goto :goto_0
.end method
