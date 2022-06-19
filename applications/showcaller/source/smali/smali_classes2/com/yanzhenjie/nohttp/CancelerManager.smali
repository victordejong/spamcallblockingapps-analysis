.class public Lcom/yanzhenjie/nohttp/CancelerManager;
.super Ljava/lang/Object;
.source "CancelerManager.java"


# instance fields
.field private final mCancelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;",
            "Lcom/yanzhenjie/nohttp/able/Cancelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/CancelerManager;->mCancelMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addCancel(Lcom/yanzhenjie/nohttp/BasicRequest;Lcom/yanzhenjie/nohttp/able/Cancelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;",
            "Lcom/yanzhenjie/nohttp/able/Cancelable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/CancelerManager;->mCancelMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancel(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/CancelerManager;->mCancelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/nohttp/BasicRequest;

    .line 3
    invoke-virtual {v2}, Lcom/yanzhenjie/nohttp/BasicRequest;->getCancelSign()Ljava/lang/Object;

    move-result-object v2

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/nohttp/able/Cancelable;

    invoke-interface {v1}, Lcom/yanzhenjie/nohttp/able/Cancelable;->cancel()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/CancelerManager;->mCancelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yanzhenjie/nohttp/able/Cancelable;

    invoke-interface {v1}, Lcom/yanzhenjie/nohttp/able/Cancelable;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCancel(Lcom/yanzhenjie/nohttp/BasicRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/nohttp/BasicRequest<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/CancelerManager;->mCancelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/CancelerManager;->mCancelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
