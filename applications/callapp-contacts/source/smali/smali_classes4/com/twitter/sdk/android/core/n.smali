.class public final Lcom/twitter/sdk/android/core/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/twitter/sdk/android/core/f;

.field static volatile b:Lcom/twitter/sdk/android/core/n;


# instance fields
.field final c:Landroid/content/Context;

.field final d:Ljava/util/concurrent/ExecutorService;

.field final e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field final f:Lcom/twitter/sdk/android/core/internal/a;

.field private final g:Lcom/twitter/sdk/android/core/f;

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/twitter/sdk/android/core/c;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/n;->a:Lcom/twitter/sdk/android/core/f;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/sdk/android/core/p;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lcom/twitter/sdk/android/core/p;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/n;->c:Landroid/content/Context;

    .line 52
    new-instance v1, Lcom/twitter/sdk/android/core/internal/a;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/core/internal/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/n;->f:Lcom/twitter/sdk/android/core/internal/a;

    .line 54
    iget-object v1, p1, Lcom/twitter/sdk/android/core/p;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    if-nez v1, :cond_0

    const-string v1, "com.twitter.sdk.android.CONSUMER_KEY"

    const-string v2, ""

    .line 55
    invoke-static {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.twitter.sdk.android.CONSUMER_SECRET"

    .line 56
    invoke-static {v0, v3, v2}, Lcom/twitter/sdk/android/core/internal/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v2, v1, v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twitter/sdk/android/core/n;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/p;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/n;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 62
    :goto_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/p;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-string v0, "twitter-worker"

    .line 63
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/c;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/n;->d:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/p;->d:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/n;->d:Ljava/util/concurrent/ExecutorService;

    .line 68
    :goto_1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/p;->b:Lcom/twitter/sdk/android/core/f;

    if-nez v0, :cond_2

    .line 69
    sget-object v0, Lcom/twitter/sdk/android/core/n;->a:Lcom/twitter/sdk/android/core/f;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/n;->g:Lcom/twitter/sdk/android/core/f;

    goto :goto_2

    .line 71
    :cond_2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/p;->b:Lcom/twitter/sdk/android/core/f;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/n;->g:Lcom/twitter/sdk/android/core/f;

    .line 74
    :goto_2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/p;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/n;->h:Z

    return-void

    .line 77
    :cond_3
    iget-object p1, p1, Lcom/twitter/sdk/android/core/p;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/n;->h:Z

    return-void
.end method

.method public static a()Lcom/twitter/sdk/android/core/n;
    .locals 2

    .line 1139
    sget-object v0, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/n;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/n;

    return-object v0

    .line 1140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize Twitter before using getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/twitter/sdk/android/core/p;)V
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/twitter/sdk/android/core/n;->b(Lcom/twitter/sdk/android/core/p;)Lcom/twitter/sdk/android/core/n;

    return-void
.end method

.method private static declared-synchronized b(Lcom/twitter/sdk/android/core/p;)Lcom/twitter/sdk/android/core/n;
    .locals 2

    const-class v0, Lcom/twitter/sdk/android/core/n;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/n;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/twitter/sdk/android/core/n;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/n;-><init>(Lcom/twitter/sdk/android/core/p;)V

    .line 132
    sput-object v1, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 135
    :cond_0
    :try_start_1
    sget-object p0, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Z
    .locals 1

    .line 185
    sget-object v0, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/n;

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/n;->h:Z

    return v0
.end method

.method public static c()Lcom/twitter/sdk/android/core/f;
    .locals 1

    .line 196
    sget-object v0, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/n;

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lcom/twitter/sdk/android/core/n;->a:Lcom/twitter/sdk/android/core/f;

    return-object v0

    .line 200
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/n;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/n;->g:Lcom/twitter/sdk/android/core/f;

    return-object v0
.end method
