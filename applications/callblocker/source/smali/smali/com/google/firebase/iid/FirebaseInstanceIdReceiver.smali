.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Landroidx/f/a/a;
.source "com.google.firebase:firebase-iid@@20.1.5"


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Landroidx/f/a/a;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/firebase/iid/aq;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    return-void
.end method

.method static final synthetic a(ZLandroid/content/BroadcastReceiver$PendingResult;Lcom/google/android/gms/tasks/g;)V
    .locals 1

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 36
    return-void

    .line 33
    :cond_1
    const/16 v0, 0x1f4

    goto :goto_0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5
    if-nez p2, :cond_0

    .line 28
    :goto_0
    return-void

    .line 9
    :cond_0
    const-string/jumbo v0, "wrapped_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 10
    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/content/Intent;

    .line 12
    :goto_1
    if-eqz v0, :cond_1

    move-object p2, v0

    .line 14
    :cond_1
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_2

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 20
    :cond_2
    const-string/jumbo v0, "google.com/iid"

    const-string/jumbo v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    new-instance v0, Lcom/google/firebase/iid/bh;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lcom/google/firebase/iid/bh;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 23
    :goto_2
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->isOrderedBroadcast()Z

    move-result v1

    .line 24
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    .line 26
    invoke-interface {v0, p2}, Lcom/google/firebase/iid/aa;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/google/firebase/iid/ba;

    invoke-direct {v4, v1, v2}, Lcom/google/firebase/iid/ba;-><init>(ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 27
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 10
    goto :goto_1

    .line 22
    :cond_4
    new-instance v0, Lcom/google/firebase/iid/b;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/iid/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_2
.end method
