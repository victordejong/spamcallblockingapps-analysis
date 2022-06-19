.class public Lcom/verizon/ads/support/SimpleCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/support/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/verizon/ads/support/Cache<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/verizon/ads/support/SimpleCache;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/SimpleCache;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/verizon/ads/support/SimpleCache;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Creating simple cache"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 65
    :try_start_0
    sget-object p1, Lcom/verizon/ads/support/SimpleCache;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot add a null item to the cache"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 70
    :try_start_1
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/verizon/ads/support/SimpleCache;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Adding item to cache: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    monitor-exit p0

    return-object v0

    .line 89
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    .line 91
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    sget-object v2, Lcom/verizon/ads/support/SimpleCache;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Removing item from cache: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trim(Lcom/verizon/ads/support/Cache$TrimStrategy;I)V
    .locals 6

    monitor-enter p0

    if-gez p2, :cond_0

    .line 120
    :try_start_0
    sget-object p1, Lcom/verizon/ads/support/SimpleCache;->a:Lcom/verizon/ads/Logger;

    const-string p2, "The maximum cache size must be greater than or equal to zero"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_2

    .line 128
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    sget-object p1, Lcom/verizon/ads/support/SimpleCache;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Current cache size of %d is less than maximum cache size of %d -- no items to trim"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    .line 130
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_1
    monitor-exit p0

    return-void

    .line 136
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 137
    sget-object p2, Lcom/verizon/ads/support/SimpleCache;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Trimming %d item(s) from the cache"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 140
    :cond_3
    sget-object p2, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;->TRIM_FROM_FRONT:Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    if-ne p1, p2, :cond_4

    .line 141
    iget-object p1, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 142
    :cond_4
    :try_start_3
    sget-object p2, Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;->TRIM_FROM_BACK:Lcom/verizon/ads/support/SimpleCache$SimpleCacheTrimStrategy;

    if-ne p1, p2, :cond_5

    .line 143
    iget-object p1, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/verizon/ads/support/SimpleCache;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 145
    :cond_5
    :try_start_4
    sget-object p2, Lcom/verizon/ads/support/SimpleCache;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Unknown trim strategy: %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
