.class public final Lcom/google/firebase/messaging/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/firebase/messaging/az;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/g;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/g;->c:Landroid/content/Context;

    sget-object p1, Lcom/google/firebase/messaging/h;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/firebase/messaging/g;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/g;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/g;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static final synthetic a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/n;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/g;->c(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    sget-object p1, Lcom/google/firebase/messaging/m;->a:Ljava/util/concurrent/Executor;

    sget-object p2, Lcom/google/firebase/messaging/n;->a:Lcom/google/android/gms/tasks/b;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method private static a(Landroid/content/Context;)Lcom/google/firebase/messaging/az;
    .locals 3

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    sget-object v1, Lcom/google/firebase/messaging/g;->a:Ljava/lang/Object;

    .line 1
    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/firebase/messaging/g;->b:Lcom/google/firebase/messaging/az;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/firebase/messaging/az;

    .line 2
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/az;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/google/firebase/messaging/g;->b:Lcom/google/firebase/messaging/az;

    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/g;->b:Lcom/google/firebase/messaging/az;

    .line 3
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static final synthetic a()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static final synthetic a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/messaging/al;->a()Lcom/google/firebase/messaging/al;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    const/4 v2, 0x3

    .line 1001
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1002
    iget-object v1, v0, Lcom/google/firebase/messaging/al;->c:Ljava/util/Queue;

    .line 1003
    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.firebase.MESSAGING_EVENT"

    .line 1004
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/messaging/al;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/n;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 7
    invoke-static {p1, p2}, Lcom/google/firebase/messaging/g;->c(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/messaging/g;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/messaging/i;

    .line 4
    invoke-direct {v1, p1, p2}, Lcom/google/firebase/messaging/i;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/k;->a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/messaging/g;->d:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v2, Lcom/google/firebase/messaging/j;

    invoke-direct {v2, p1, p2}, Lcom/google/firebase/messaging/j;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/h;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method static final synthetic b()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x193

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 3
    invoke-static {p0}, Lcom/google/firebase/messaging/g;->a(Landroid/content/Context;)Lcom/google/firebase/messaging/az;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/az;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    sget-object p1, Lcom/google/firebase/messaging/k;->a:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/google/firebase/messaging/l;->a:Lcom/google/android/gms/tasks/b;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "gcm.rawData64"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "rawData"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/g;->c:Landroid/content/Context;

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/messaging/g;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
