.class final Lcom/google/firebase/iid/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/v$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field private final b:J

.field private final c:Landroid/os/PowerManager$WakeLock;

.field private final d:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/v;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-wide p2, p0, Lcom/google/firebase/iid/v;->b:J

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/v;->c:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/iid/v;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method private c()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FirebaseInstanceId"

    iget-object v1, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 1
    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()Lcom/google/firebase/iid/u$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/firebase/iid/u$a;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 3
    iget-object v4, v3, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Lcom/google/firebase/b;

    .line 3001
    invoke-static {v4}, Lcom/google/firebase/iid/n;->a(Lcom/google/firebase/b;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "Token retrieval failed: null"

    .line 4
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v3, 0x3

    .line 5
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string v2, "Token retrieval failed with SecurityException. Will retry token retrieval"

    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    move-exception v3

    .line 8
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SERVICE_NOT_AVAILABLE"

    .line 4001
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "INTERNAL_SERVER_ERROR"

    .line 4002
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "InternalServerError"

    .line 4003
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x34

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Token retrieval failed: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Will retry token retrieval"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 10
    :cond_4
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "Token retrieval failed without exception message. Will retry token retrieval"

    .line 11
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_5
    throw v3
.end method


# virtual methods
.method final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 5000
    iget-object v0, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->d:Lcom/google/firebase/b;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 6

    const-string v0, "FirebaseInstanceId"

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/t;->a()Lcom/google/firebase/iid/t;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/t;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/iid/v;->c:Landroid/os/PowerManager$WakeLock;

    .line 2
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V

    iget-object v2, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 4
    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->isGmsCorePresent()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 5
    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Lcom/google/firebase/iid/t;->a()Lcom/google/firebase/iid/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/v;->c:Landroid/os/PowerManager$WakeLock;

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void

    .line 8
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/t;->a()Lcom/google/firebase/iid/t;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lcom/google/firebase/iid/t;->b:Ljava/lang/Boolean;

    if-nez v5, :cond_4

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    .line 1001
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/firebase/iid/t;->b:Ljava/lang/Boolean;

    :cond_4
    iget-object v3, v2, Lcom/google/firebase/iid/t;->a:Ljava/lang/Boolean;

    .line 1002
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x3

    .line 1003
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1004
    :cond_5
    iget-object v2, v2, Lcom/google/firebase/iid/t;->b:Ljava/lang/Boolean;

    .line 1005
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->b()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Lcom/google/firebase/iid/v$a;

    .line 13
    invoke-direct {v2, p0}, Lcom/google/firebase/iid/v$a;-><init>(Lcom/google/firebase/iid/v;)V

    .line 2001
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->c()Z

    .line 2002
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 2003
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/google/firebase/iid/v$a;->a:Lcom/google/firebase/iid/v;

    .line 2004
    invoke-virtual {v4}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-static {}, Lcom/google/firebase/iid/t;->a()Lcom/google/firebase/iid/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    return-void

    .line 10
    :cond_7
    :try_start_2
    invoke-direct {p0}, Lcom/google/firebase/iid/v;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V

    goto :goto_2

    .line 7
    :cond_8
    iget-object v2, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v3, p0, Lcom/google/firebase/iid/v;->b:J

    .line 12
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :goto_2
    invoke-static {}, Lcom/google/firebase/iid/t;->a()Lcom/google/firebase/iid/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 15
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Topic sync or token retrieval failed on hard failure exceptions: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Won\'t retry the operation."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/iid/v;->d:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6
    invoke-static {}, Lcom/google/firebase/iid/t;->a()Lcom/google/firebase/iid/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :cond_9
    return-void

    :goto_3
    invoke-static {}, Lcom/google/firebase/iid/t;->a()Lcom/google/firebase/iid/t;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/v;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/t;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    .line 18
    :cond_a
    iget-object v1, p0, Lcom/google/firebase/iid/v;->c:Landroid/os/PowerManager$WakeLock;

    .line 7
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 18
    :goto_4
    throw v0
.end method
