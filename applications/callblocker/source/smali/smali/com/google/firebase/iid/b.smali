.class public final Lcom/google/firebase/iid/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Lcom/google/firebase/iid/aa;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/firebase/iid/ai;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/iid/b;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/iid/b;->d:Ljava/util/concurrent/ExecutorService;

    .line 4
    return-void
.end method

.method static final synthetic a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/gms/common/util/m;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-object p2

    .line 34
    :cond_1
    invoke-static {p0, p1}, Lcom/google/firebase/iid/b;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/google/firebase/iid/aq;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/iid/an;->a:Lcom/google/android/gms/tasks/a;

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object p2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/ai;
    .locals 2

    .prologue
    .line 25
    sget-object v1, Lcom/google/firebase/iid/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/b;->b:Lcom/google/firebase/iid/ai;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/google/firebase/iid/ai;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/iid/ai;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/iid/b;->b:Lcom/google/firebase/iid/ai;

    .line 28
    :cond_0
    sget-object v0, Lcom/google/firebase/iid/b;->b:Lcom/google/firebase/iid/ai;

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static final synthetic a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/google/firebase/iid/w;->a()Lcom/google/firebase/iid/w;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/iid/w;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static final synthetic a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    const-string/jumbo v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "Binding to service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    const-string/jumbo v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-static {p0, v0}, Lcom/google/firebase/iid/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/ai;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/ai;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/google/firebase/iid/aq;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/iid/ao;->a:Lcom/google/android/gms/tasks/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method static final synthetic b(Lcom/google/android/gms/tasks/g;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x193

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    const-string/jumbo v0, "gcm.rawData64"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo v3, "rawData"

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 8
    const-string/jumbo v0, "gcm.rawData64"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/iid/b;->c:Landroid/content/Context;

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/m;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_1

    move v0, v1

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 13
    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 14
    invoke-static {v3, p1}, Lcom/google/firebase/iid/b;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 18
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 11
    goto :goto_0

    :cond_2
    move v1, v2

    .line 12
    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/iid/b;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/iid/am;

    invoke-direct {v1, v3, p1}, Lcom/google/firebase/iid/am;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/j;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/firebase/iid/b;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/iid/al;

    invoke-direct {v2, v3, p1}, Lcom/google/firebase/iid/al;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    goto :goto_2
.end method
