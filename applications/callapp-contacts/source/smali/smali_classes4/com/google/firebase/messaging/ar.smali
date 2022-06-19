.class final Lcom/google/firebase/messaging/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/messaging/ar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private c:Lcom/google/firebase/messaging/am;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/messaging/ar;->d:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/firebase/messaging/ar;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/ar;
    .locals 3

    const-class v0, Lcom/google/firebase/messaging/ar;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/ar;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/messaging/ar;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.appid"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v1, Lcom/google/firebase/messaging/ar;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/messaging/ar;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)V

    .line 4
    invoke-direct {v1}, Lcom/google/firebase/messaging/ar;->b()V

    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/google/firebase/messaging/ar;->a:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/ar;->b:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/firebase/messaging/ar;->d:Ljava/util/concurrent/Executor;

    .line 1
    invoke-static {v0, v1}, Lcom/google/firebase/messaging/am;->a(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)Lcom/google/firebase/messaging/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/ar;->c:Lcom/google/firebase/messaging/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a()Lcom/google/firebase/messaging/aq;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/ar;->c:Lcom/google/firebase/messaging/am;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/messaging/am;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/messaging/aq;->a(Ljava/lang/String;)Lcom/google/firebase/messaging/aq;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/firebase/messaging/aq;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/ar;->c:Lcom/google/firebase/messaging/am;

    .line 1000
    iget-object p1, p1, Lcom/google/firebase/messaging/aq;->c:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/am;->a(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
