.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Lcom/android/mms/transaction/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$b;,
        Lcom/android/mms/transaction/TransactionService$c;
    }
.end annotation


# instance fields
.field private b:Lcom/android/mms/transaction/TransactionService$c;

.field private c:Landroid/os/Looper;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/mms/transaction/n;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/mms/transaction/n;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/net/ConnectivityManager;

.field private g:Lcom/android/mms/transaction/TransactionService$b;

.field private h:Z

.field private i:Z

.field private j:Landroid/os/PowerManager$WakeLock;

.field public k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->i:Z

    new-instance v0, Lcom/android/mms/transaction/TransactionService$a;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$a;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/mms/transaction/TransactionService;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->s()V

    return-void
.end method

.method static synthetic d(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/mms/transaction/TransactionService;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/mms/transaction/TransactionService;->f:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic f(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$c;
    .locals 0

    iget-object p0, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    return-object p0
.end method

.method private g()V
    .locals 2

    const-string v0, "Mms"

    const-string v1, "mms acquireWakeLock"

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->j:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->j:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k(I)I
    .locals 2

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1

    const/16 v0, 0x87

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mms"

    invoke-static {v0, p1}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method private l()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TransactionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->c:Landroid/os/Looper;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$c;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->c:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/TransactionService$c;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    return-void
.end method

.method private m()Z
    .locals 3

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->f:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/klinker/android/send_message/j;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->f:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->f:Landroid/net/ConnectivityManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    :goto_1
    return v1
.end method

.method private static n(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private o(ILcom/android/mms/transaction/o;Z)V
    .locals 2

    const-string v0, "Mms"

    if-eqz p3, :cond_0

    const-string p3, "launchTransaction: no network error!"

    invoke-static {v0, p3}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/mms/transaction/o;->e()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->p(II)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    iput p1, p3, Landroid/os/Message;->arg1:I

    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-static {v0, p1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launchTransaction: sending message "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private p(II)V
    .locals 4

    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkUnavailable: sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v2, -0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    if-eq v1, v2, :cond_3

    iget-object p2, p0, Lcom/android/mms/transaction/TransactionService;->k:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms"

    const-string v1, "mms releaseWakeLock"

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private t(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms"

    const-string v2, "stopSelfIfIdle: STOP!"

    invoke-static {v1, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Lcom/android/mms/transaction/g;)V
    .locals 8

    check-cast p1, Lcom/android/mms/transaction/n;

    invoke-virtual {p1}, Lcom/android/mms/transaction/n;->f()I

    move-result v0

    const-string v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update transaction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->d:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "Mms"

    invoke-static {v3, v2}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Mms"

    const-string v4, "update: handle next pending transaction..."

    invoke-static {v3, v4}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    const/4 v4, 0x4

    invoke-virtual {p1}, Lcom/android/mms/transaction/n;->d()Lcom/android/mms/transaction/p;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Mms"

    invoke-static {v3, v2}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Mms"

    const-string v4, "update: endMmsConnectivity"

    invoke-static {v3, v4}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->j()V

    goto :goto_0

    :cond_4
    const-string v3, "Mms"

    invoke-static {v3, v2}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Mms"

    const-string v4, "update: mProcessing is not empty"

    invoke-static {v3, v4}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/mms/transaction/n;->g()Lcom/android/mms/transaction/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/transaction/q;->b()I

    move-result v4

    const-string v5, "state"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    if-eq v4, v2, :cond_6

    const-string v3, "Mms"

    invoke-static {v3, v2}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction state unknown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v3, v5}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v3, "Mms"

    invoke-static {v3, v2}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    const-string v5, "Mms"

    invoke-static {v5, v2}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "Mms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transaction complete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v5, "uri"

    invoke-virtual {v3}, Lcom/android/mms/transaction/q;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/mms/transaction/n;->h()I

    move-result v3

    if-eq v3, v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Le/a/b/f/c;->c(Landroid/content/Context;)V

    invoke-static {}, Le/a/b/f/c;->b()Le/a/b/f/c;

    move-result-object v3

    invoke-virtual {v3}, Le/a/b/f/c;->f()V

    :cond_a
    :goto_2
    const-string v3, "Mms"

    invoke-static {v3, v2}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update: broadcast transaction result "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v2, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-static {p0, v1, v2}, Lcom/klinker/android/send_message/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/g;->b(Lcom/android/mms/transaction/h;)V

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->t(I)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/g;->b(Lcom/android/mms/transaction/h;)V

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->t(I)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method protected h()I
    .locals 6

    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "beginMmsConnectivity"

    invoke-static {v0, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->i()V

    invoke-static {p0}, Lcom/klinker/android/send_message/j;->q(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "beginMmsConnectivity: Wifi active"

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->f:Landroid/net/ConnectivityManager;

    const-string v5, "enableMMS"

    invoke-virtual {v2, v4, v5}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginMmsConnectivity: result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_4

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot establish MMS connectivity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->g()V

    return v2
.end method

.method protected j()V
    .locals 3

    const-string v0, "Mms"

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "endMmsConnectivity"

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->f:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->r()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->r()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Creating TransactionService"

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/klinker/android/send_message/j;->o(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "not default app, so exiting"

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->l()V

    new-instance v0, Lcom/android/mms/transaction/TransactionService$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/TransactionService$b;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$a;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->g:Lcom/android/mms/transaction/TransactionService$b;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->g:Lcom/android/mms/transaction/TransactionService$b;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Destroying TransactionService"

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TransactionService exiting with transaction still pending"

    invoke-static {v0, v1}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->r()V

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->g:Lcom/android/mms/transaction/TransactionService$b;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->h:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->i:Z

    if-nez v1, :cond_2

    const-string v1, "disabling mobile data"

    invoke-static {v0, v1}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/klinker/android/send_message/j;->s(Landroid/content/Context;Z)V

    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->l()V

    :cond_0
    iget-object p2, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput p3, p2, Landroid/os/Message;->arg1:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/mms/transaction/TransactionService;->b:Lcom/android/mms/transaction/TransactionService$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public q(Landroid/content/Intent;I)V
    .locals 23

    move-object/from16 v10, p0

    move/from16 v11, p2

    const/4 v12, 0x1

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/klinker/android/send_message/j;->r(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/mms/transaction/TransactionService;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v12, v10, Lcom/android/mms/transaction/TransactionService;->h:Z

    :goto_0
    const-string v0, "connectivity"

    invoke-virtual {v10, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v10, Lcom/android/mms/transaction/TransactionService;->f:Landroid/net/ConnectivityManager;

    iget-boolean v0, v10, Lcom/android/mms/transaction/TransactionService;->h:Z

    if-nez v0, :cond_0

    invoke-static {v10, v12}, Lcom/klinker/android/send_message/j;->s(Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, v10, Lcom/android/mms/transaction/TransactionService;->f:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->j()V

    invoke-virtual {v10, v11}, Landroid/app/Service;->stopSelf(I)V

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->m()Z

    move-result v0

    xor-int/lit8 v13, v0, 0x1

    const-string v14, "Mms"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: serviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    networkAvailable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, v13, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v1, p1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v0, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "onNewIntent: launch transaction..."

    invoke-static {v14, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/android/mms/transaction/o;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/o;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v10, v11, v0, v13}, Lcom/android/mms/transaction/TransactionService;->o(ILcom/android/mms/transaction/o;Z)V

    goto/16 :goto_10

    :cond_5
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/c/p;->i(J)Landroid/database/Cursor;

    move-result-object v8

    const-string v0, "onNewIntent: no pending messages. Stopping service."

    if-eqz v8, :cond_18

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v7, " action="

    if-eqz v2, :cond_6

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: cursor.count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez v1, :cond_8

    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v14, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/l;->h(Landroid/content/Context;)V

    invoke-direct {v10, v11}, Lcom/android/mms/transaction/TransactionService;->t(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void

    :cond_8
    :try_start_3
    const-string v0, "msg_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v0, "msg_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v10, v0}, Lcom/android/mms/transaction/TransactionService;->k(I)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_b

    sget-object v0, Lcom/klinker/android/send_message/i;->h:Lcom/klinker/android/send_message/f;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/klinker/android/send_message/f;->p()Z

    move-result v0

    goto :goto_4

    :cond_9
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "system_mms_sending"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_4
    if-eqz v0, :cond_a

    :try_start_4
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/transaction/c;->c()Lcom/android/mms/transaction/c;

    move-result-object v1

    invoke-static {v10, v0}, Lcom/android/mms/transaction/PushReceiver;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2, v0, v4}, Lcom/android/mms/transaction/c;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_d

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :cond_a
    :try_start_6
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Le/a/b/e/i;

    invoke-direct {v2, v10}, Le/a/b/e/i;-><init>(Landroid/content/Context;)V

    new-instance v4, Le/a/b/e/b;

    invoke-static {}, Lcom/klinker/android/send_message/j;->g()I

    move-result v3

    invoke-static {v10, v0}, Lcom/android/mms/transaction/PushReceiver;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v16
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v4

    move-object v12, v4

    move-object/from16 v4, v16

    move/from16 v16, v5

    move-object v5, v0

    move/from16 v20, v6

    move-object/from16 v6, v17

    move-object/from16 v21, v7

    move-object/from16 v7, v18

    move-object/from16 p1, v8

    move-object/from16 v8, v19

    move-object/from16 v22, v9

    move-object/from16 v9, p0

    :try_start_7
    invoke-direct/range {v1 .. v9}, Le/a/b/e/b;-><init>(Le/a/b/e/h$a;ILjava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    new-instance v0, Le/a/b/e/g;

    invoke-static {}, Lcom/klinker/android/send_message/j;->g()I

    move-result v1

    invoke-direct {v0, v10, v1}, Le/a/b/e/g;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12, v10, v0}, Le/a/b/e/h;->c(Landroid/content/Context;Le/a/b/e/g;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v3, p1

    goto/16 :goto_e

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move/from16 v16, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 p1, v8

    move-object/from16 v22, v9

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v8, p1

    move/from16 v5, v16

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v9, v22

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_b
    move/from16 v16, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 p1, v8

    move-object/from16 v22, v9

    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: msgType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " transactionType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v13, :cond_d

    invoke-direct {v10, v11, v1}, Lcom/android/mms/transaction/TransactionService;->p(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_d
    const/4 v0, -0x1

    if-eq v1, v0, :cond_15

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    move-object/from16 v3, p1

    move/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    goto/16 :goto_b

    :cond_e
    :try_start_9
    const-string v0, "err_type"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v3, p1

    :try_start_a
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-static/range {p0 .. p0}, Le/a/b/f/a;->g(Landroid/content/Context;)V

    invoke-static {}, Le/a/b/f/a;->e()Le/a/b/f/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b/f/a;->h()Z

    move-result v6

    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v7, :cond_f

    :try_start_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewIntent: failureType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v8, v21

    :try_start_d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v9, v22

    :try_start_e
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " isTransientFailure:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->n(I)Z

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " autoDownload="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v8, v21

    :goto_6
    move-object/from16 v9, v22

    :goto_7
    move v12, v5

    move/from16 v7, v20

    goto :goto_9

    :cond_f
    move-object/from16 v8, v21

    move-object/from16 v9, v22

    :goto_8
    if-nez v6, :cond_11

    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "onNewIntent: skipping - autodownload off"

    invoke-static {v14, v6}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move v12, v5

    move/from16 v7, v20

    :try_start_f
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/16 v5, 0x89

    invoke-virtual {v0, v4, v5}, Le/a/b/f/a;->j(Landroid/net/Uri;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_c

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_7

    :cond_11
    move v12, v5

    move/from16 v7, v20

    goto :goto_a

    :catch_8
    move-exception v0

    move v12, v5

    move/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    :goto_9
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    if-eqz v12, :cond_12

    invoke-static {v12}, Lcom/android/mms/transaction/TransactionService;->n(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "onNewIntent: skipping - permanent error"

    invoke-static {v14, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "onNewIntent: falling through and processing"

    invoke-static {v14, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_b
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Lcom/android/mms/transaction/o;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/android/mms/transaction/o;-><init>(ILjava/lang/String;)V

    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNewIntent: launchTransaction uri="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/4 v1, 0x0

    invoke-direct {v10, v11, v4, v1}, Lcom/android/mms/transaction/TransactionService;->o(ILcom/android/mms/transaction/o;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_f

    :cond_15
    move-object/from16 v3, p1

    move/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    const/4 v2, 0x1

    :cond_16
    :goto_c
    move v6, v7

    move-object v7, v8

    move/from16 v5, v16

    const/4 v12, 0x1

    move-object v8, v3

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_f

    :cond_17
    :goto_d
    move-object v3, v8

    :goto_e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v3, v8

    :goto_f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_18
    invoke-static {v14, v15}, Le/d/a/a/a;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v14, v0}, Le/d/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/l;->h(Landroid/content/Context;)V

    invoke-direct {v10, v11}, Lcom/android/mms/transaction/TransactionService;->t(I)V

    :goto_10
    return-void
.end method
