.class public Lcom/mopub/network/ImpressionsEmitter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mopub/network/ImpressionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mopub/network/ImpressionsEmitter;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mopub/network/ImpressionListener;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mopub/network/ImpressionsEmitter;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/mopub/network/ImpressionsEmitter;->a:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addListener(Lcom/mopub/network/ImpressionListener;)V
    .locals 2

    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-class v0, Lcom/mopub/network/ImpressionsEmitter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mopub/network/ImpressionsEmitter;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V
    .locals 2

    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/mopub/network/ImpressionsEmitter;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/network/ImpressionListener;

    invoke-interface {v1, p0, p1}, Lcom/mopub/network/ImpressionListener;->onImpression(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/mopub/network/ImpressionListener;)V
    .locals 2

    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-class v0, Lcom/mopub/network/ImpressionsEmitter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mopub/network/ImpressionsEmitter;->a:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
