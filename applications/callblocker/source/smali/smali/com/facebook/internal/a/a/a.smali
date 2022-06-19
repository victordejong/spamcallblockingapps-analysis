.class public Lcom/facebook/internal/a/a/a;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/facebook/internal/a/a/a;


# instance fields
.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/facebook/internal/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/internal/a/a/a;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/internal/a/a/a;->d:Z

    .line 56
    return-void
.end method

.method public static declared-synchronized a()V
    .locals 3

    .prologue
    .line 73
    const-class v1, Lcom/facebook/internal/a/a/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/facebook/internal/a/a/a;->c()V

    .line 76
    :cond_0
    sget-object v0, Lcom/facebook/internal/a/a/a;->b:Lcom/facebook/internal/a/a/a;

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/facebook/internal/a/a/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "Already enabled!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    monitor-exit v1

    return-void

    .line 80
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 81
    new-instance v2, Lcom/facebook/internal/a/a/a;

    invoke-direct {v2, v0}, Lcom/facebook/internal/a/a/a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v2, Lcom/facebook/internal/a/a/a;->b:Lcom/facebook/internal/a/a/a;

    .line 82
    sget-object v0, Lcom/facebook/internal/a/a/a;->b:Lcom/facebook/internal/a/a/a;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 92
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {}, Lcom/facebook/internal/a/c;->a()[Ljava/io/File;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    .line 105
    new-instance v6, Lcom/facebook/internal/a/a;

    invoke-direct {v6, v5}, Lcom/facebook/internal/a/a;-><init>(Ljava/io/File;)V

    .line 106
    invoke-virtual {v6}, Lcom/facebook/internal/a/a;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    new-instance v1, Lcom/facebook/internal/a/a/a$1;

    invoke-direct {v1}, Lcom/facebook/internal/a/a/a$1;-><init>()V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 118
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 119
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_2
    const-string/jumbo v0, "crash_reports"

    new-instance v2, Lcom/facebook/internal/a/a/a$2;

    invoke-direct {v2, v3}, Lcom/facebook/internal/a/a/a$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/a/c;->a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/k$b;)V

    .line 137
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 60
    invoke-static {p2}, Lcom/facebook/internal/a/c;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/facebook/internal/a/a;

    sget-object v1, Lcom/facebook/internal/a/a$a;->a:Lcom/facebook/internal/a/a$a;

    invoke-direct {v0, p2, v1}, Lcom/facebook/internal/a/a;-><init>(Ljava/lang/Throwable;Lcom/facebook/internal/a/a$a;)V

    .line 62
    invoke-virtual {v0}, Lcom/facebook/internal/a/a;->b()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/a/a/a;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/facebook/internal/a/a/a;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 67
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/internal/a/a/a;->d:Z

    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Lcom/facebook/internal/a/a/a;->b()V

    .line 70
    :cond_2
    return-void
.end method
