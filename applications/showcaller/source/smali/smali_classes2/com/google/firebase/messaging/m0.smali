.class final Lcom/google/firebase/messaging/m0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/ArrayDeque;
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

    iput-object p2, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/firebase/messaging/m0;->f:Z

    iput-object p1, p0, Lcom/google/firebase/messaging/m0;->a:Landroid/content/SharedPreferences;

    const-string p1, "topic_operation_queue"

    iput-object p1, p0, Lcom/google/firebase/messaging/m0;->b:Ljava/lang/String;

    const-string p1, ","

    iput-object p1, p0, Lcom/google/firebase/messaging/m0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/messaging/m0;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private b(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/messaging/m0;->f:Z

    if-nez v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/messaging/m0;->i()V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method static c(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/m0;
    .locals 1

    new-instance p1, Lcom/google/firebase/messaging/m0;

    const-string p2, "topic_operation_queue"

    const-string v0, ","

    .line 1
    invoke-direct {p1, p0, p2, v0, p3}, Lcom/google/firebase/messaging/m0;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-direct {p1}, Lcom/google/firebase/messaging/m0;->d()V

    return-object p1
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, p0, Lcom/google/firebase/messaging/m0;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/firebase/messaging/m0;->b:Ljava/lang/String;

    const-string v3, ""

    .line 3
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/firebase/messaging/m0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/messaging/m0;->c:Ljava/lang/String;

    const/4 v3, -0x1

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v4, "FirebaseMessaging"

    const-string v5, "Corrupted queue. Please check the queue contents and item separator provided"

    .line 8
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_3

    .line 9
    aget-object v4, v1, v3

    .line 10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    monitor-exit v0

    return-void

    .line 13
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/m0;->a:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/m0;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/m0;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/m0;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/messaging/l0;

    .line 1
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/l0;-><init>(Lcom/google/firebase/messaging/m0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/m0;->h()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

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

.method public f(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/m0;->b(Z)Z

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

.method public g()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/m0;->d:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/messaging/m0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
