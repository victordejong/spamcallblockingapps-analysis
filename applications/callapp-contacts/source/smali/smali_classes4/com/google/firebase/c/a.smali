.class public final Lcom/google/firebase/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/c/f;


# static fields
.field private static final d:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private a:Lcom/google/firebase/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/google/firebase/c/d;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/c/a;->d:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/c/e;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/firebase/components/u;

    .line 1000
    new-instance v1, Lcom/google/firebase/c/b;

    invoke-direct {v1, p1}, Lcom/google/firebase/c/b;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {v0, v1}, Lcom/google/firebase/components/u;-><init>(Lcom/google/firebase/d/b;)V

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v9, Lcom/google/firebase/c/a;->d:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x1e

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, v0, p2, p1}, Lcom/google/firebase/c/a;-><init>(Lcom/google/firebase/d/b;Ljava/util/Set;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/d/b;Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/c/g;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/c/e;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/firebase/c/a;->a:Lcom/google/firebase/d/b;

    .line 63
    iput-object p2, p0, Lcom/google/firebase/c/a;->b:Ljava/util/Set;

    .line 64
    iput-object p3, p0, Lcom/google/firebase/c/a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/components/e;)Lcom/google/firebase/c/f;
    .locals 3

    .line 140
    new-instance v0, Lcom/google/firebase/c/a;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/firebase/c/e;

    invoke-interface {p0, v2}, Lcom/google/firebase/components/e;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/c/a;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)Lcom/google/firebase/c/g;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/google/firebase/c/g;->a(Landroid/content/Context;)Lcom/google/firebase/c/g;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/google/firebase/components/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b<",
            "Lcom/google/firebase/c/f;",
            ">;"
        }
    .end annotation

    .line 136
    const-class v0, Lcom/google/firebase/c/f;

    invoke-static {v0}, Lcom/google/firebase/components/b;->a(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 137
    invoke-static {v1}, Lcom/google/firebase/components/r;->b(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    const-class v1, Lcom/google/firebase/c/e;

    .line 138
    invoke-static {v1}, Lcom/google/firebase/components/r;->c(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/r;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/c/c;->a()Lcom/google/firebase/components/h;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->a(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/google/firebase/components/b$a;->a()Lcom/google/firebase/components/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "heartbeat-information-executor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/firebase/c/f$a;
    .locals 3

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    iget-object v2, p0, Lcom/google/firebase/c/a;->a:Lcom/google/firebase/d/b;

    .line 71
    invoke-interface {v2}, Lcom/google/firebase/d/b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/c/g;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/firebase/c/g;->a(Ljava/lang/String;J)Z

    move-result p1

    .line 72
    iget-object v2, p0, Lcom/google/firebase/c/a;->a:Lcom/google/firebase/d/b;

    invoke-interface {v2}, Lcom/google/firebase/d/b;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/c/g;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/c/g;->a(J)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 74
    sget-object p1, Lcom/google/firebase/c/f$a;->COMBINED:Lcom/google/firebase/c/f$a;

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 76
    sget-object p1, Lcom/google/firebase/c/f$a;->GLOBAL:Lcom/google/firebase/c/f$a;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 78
    sget-object p1, Lcom/google/firebase/c/f$a;->SDK:Lcom/google/firebase/c/f$a;

    return-object p1

    .line 80
    :cond_2
    sget-object p1, Lcom/google/firebase/c/f$a;->NONE:Lcom/google/firebase/c/f$a;

    return-object p1
.end method
