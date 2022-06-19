.class public Lcom/facebook/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/facebook/internal/a;


# instance fields
.field private b:Ljava/util/UUID;

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/a;-><init>(ILjava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/UUID;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/facebook/internal/a;->b:Ljava/util/UUID;

    .line 81
    iput p1, p0, Lcom/facebook/internal/a;->c:I

    return-void
.end method

.method public static declared-synchronized a(Ljava/util/UUID;I)Lcom/facebook/internal/a;
    .locals 4

    const-class v0, Lcom/facebook/internal/a;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 41
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/internal/a;->b()Lcom/facebook/internal/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {v1}, Lcom/facebook/internal/a;->a()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 44
    invoke-direct {v1}, Lcom/facebook/internal/a;->d()I

    move-result p0

    if-eq p0, p1, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Lcom/facebook/internal/a;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    monitor-exit v0

    return-object v1

    .line 45
    :cond_2
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 50
    :try_start_2
    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b()Lcom/facebook/internal/a;
    .locals 3

    const-class v0, Lcom/facebook/internal/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 37
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/a;->a:Lcom/facebook/internal/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static declared-synchronized c()Z
    .locals 4

    const-class v0, Lcom/facebook/internal/a;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    .line 54
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/internal/a;->b()Lcom/facebook/internal/a;

    move-result-object v1

    const/4 v3, 0x0

    .line 55
    sput-object v3, Lcom/facebook/internal/a;->a:Lcom/facebook/internal/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 57
    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return v2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d()I
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 108
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/facebook/internal/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public final a()Ljava/util/UUID;
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/a;->b:Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
