.class public final Lcom/google/firebase/iid/ad;
.super Landroid/os/Binder;
.source "com.google.firebase:firebase-iid@@20.1.5"


# instance fields
.field private final a:Lcom/google/firebase/iid/af;


# virtual methods
.method final a(Lcom/google/firebase/iid/ah;)V
    .locals 3

    .prologue
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Binding only allowed within app"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_0
    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "service received new intent via bind strategy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/iid/ad;->a:Lcom/google/firebase/iid/af;

    iget-object v1, p1, Lcom/google/firebase/iid/ah;->a:Landroid/content/Intent;

    .line 9
    invoke-interface {v0, v1}, Lcom/google/firebase/iid/af;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/firebase/iid/aq;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/iid/ag;

    invoke-direct {v2, p1}, Lcom/google/firebase/iid/ag;-><init>(Lcom/google/firebase/iid/ah;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    .line 11
    return-void
.end method
