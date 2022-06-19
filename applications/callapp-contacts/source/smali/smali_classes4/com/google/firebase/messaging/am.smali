.class final Lcom/google/firebase/messaging/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/SharedPreferences;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayDeque;

    .line 1
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/messaging/am;->d:Ljava/util/ArrayDeque;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/firebase/messaging/am;->f:Z

    iput-object p1, p0, Lcom/google/firebase/messaging/am;->a:Landroid/content/SharedPreferences;

    const-string p1, "topic_operation_queue"

    iput-object p1, p0, Lcom/google/firebase/messaging/am;->b:Ljava/lang/String;

    const-string p1, ","

    iput-object p1, p0, Lcom/google/firebase/messaging/am;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/messaging/am;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static a(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/am;
    .locals 5

    new-instance v0, Lcom/google/firebase/messaging/am;

    const-string v1, "topic_operation_queue"

    const-string v2, ","

    .line 1
    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/firebase/messaging/am;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 2
    iget-object p0, v0, Lcom/google/firebase/messaging/am;->d:Ljava/util/ArrayDeque;

    .line 1001
    monitor-enter p0

    :try_start_0
    iget-object p1, v0, Lcom/google/firebase/messaging/am;->d:Ljava/util/ArrayDeque;

    .line 1002
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iget-object p1, v0, Lcom/google/firebase/messaging/am;->a:Landroid/content/SharedPreferences;

    iget-object v1, v0, Lcom/google/firebase/messaging/am;->b:Ljava/lang/String;

    const-string v2, ""

    .line 1003
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/google/firebase/messaging/am;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1005
    :cond_0
    iget-object v1, v0, Lcom/google/firebase/messaging/am;->c:Ljava/lang/String;

    const/4 v2, -0x1

    .line 1006
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 1007
    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v3, "FirebaseMessaging"

    const-string v4, "Corrupted queue. Please check the queue contents and item separator provided"

    .line 1008
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1009
    aget-object v3, p1, v2

    .line 1010
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/google/firebase/messaging/am;->d:Ljava/util/ArrayDeque;

    .line 1011
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1012
    :cond_3
    monitor-exit p0

    goto :goto_2

    .line 1005
    :cond_4
    :goto_1
    monitor-exit p0

    :goto_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 1012
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/am;->d:Ljava/util/ArrayDeque;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/am;->d:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/am;->d:Ljava/util/ArrayDeque;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/am;->d:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/google/firebase/messaging/am;->f:Z

    if-nez v1, :cond_0

    .line 2001
    iget-object v1, p0, Lcom/google/firebase/messaging/am;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/messaging/an;

    .line 3001
    invoke-direct {v2, p0}, Lcom/google/firebase/messaging/an;-><init>(Lcom/google/firebase/messaging/am;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
