.class public Lcom/criteo/publisher/m0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/m0/b$c;,
        Lcom/criteo/publisher/m0/b$b;,
        Lcom/criteo/publisher/m0/b$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/m0/b$d;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/criteo/publisher/m0/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 54
    new-instance v0, Lcom/criteo/publisher/m0/b$d;

    invoke-direct {v0}, Lcom/criteo/publisher/m0/b$d;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/criteo/publisher/m0/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/criteo/publisher/m0/b$d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/criteo/publisher/m0/b$d;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m0/b;->a:Lcom/criteo/publisher/logging/g;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/m0/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    iput-object p1, p0, Lcom/criteo/publisher/m0/b;->c:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/criteo/publisher/m0/b;->d:Ljava/util/concurrent/Executor;

    .line 65
    iput-object p3, p0, Lcom/criteo/publisher/m0/b;->b:Lcom/criteo/publisher/m0/b$d;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/m0/b;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/criteo/publisher/m0/b;->d()V

    return-void
.end method

.method private static c()Z
    .locals 2

    .line 106
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 4

    const-string v0, "Error getting advertising id"

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/m0/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/criteo/publisher/m0/b$d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/criteo/publisher/m0/b;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/criteo/publisher/m0/b$d;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {}, Lcom/criteo/publisher/m0/b$b;->a()Lcom/criteo/publisher/m0/b$b;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {v1}, Lcom/criteo/publisher/m0/b$b;->a(Ljava/lang/String;)Lcom/criteo/publisher/m0/b$b;

    move-result-object v0
    :try_end_0
    .catch Lcom/criteo/publisher/m0/b$c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 132
    iget-object v2, p0, Lcom/criteo/publisher/m0/b;->a:Lcom/criteo/publisher/logging/g;

    invoke-virtual {v2, v0, v1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v1

    .line 128
    invoke-static {}, Lcom/criteo/publisher/m0/b$b;->b()Lcom/criteo/publisher/m0/b$b;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/criteo/publisher/m0/b;->a:Lcom/criteo/publisher/logging/g;

    invoke-virtual {v3, v0, v1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/m0/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/criteo/publisher/m0/b$b;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/criteo/publisher/m0/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/m0/b$b;

    if-nez v0, :cond_1

    .line 85
    invoke-static {}, Lcom/criteo/publisher/m0/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/criteo/publisher/m0/b;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/criteo/publisher/m0/b$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/m0/b$a;-><init>(Lcom/criteo/publisher/m0/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/criteo/publisher/m0/b;->d()V

    .line 97
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/criteo/publisher/m0/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/m0/b$b;

    if-nez v0, :cond_2

    .line 99
    invoke-static {}, Lcom/criteo/publisher/m0/b$b;->b()Lcom/criteo/publisher/m0/b$b;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/criteo/publisher/m0/b;->a()Lcom/criteo/publisher/m0/b$b;

    move-result-object v0

    .line 1198
    iget-object v0, v0, Lcom/criteo/publisher/m0/b$b;->a:Ljava/lang/String;

    return-object v0
.end method
