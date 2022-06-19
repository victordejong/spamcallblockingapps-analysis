.class public Lcom/androidplot/util/LayerHash;
.super Ljava/lang/Object;
.source "LayerHash.java"

# interfaces
.implements Lcom/androidplot/util/Layerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyType:",
        "Ljava/lang/Object;",
        "ValueType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidplot/util/Layerable<",
        "TKeyType;>;"
    }
.end annotation


# instance fields
.field private hash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TKeyType;TValueType;>;"
        }
    .end annotation
.end field

.field private zlist:Lcom/androidplot/util/LinkedLayerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/util/LinkedLayerList<",
            "TKeyType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    .line 33
    new-instance v0, Lcom/androidplot/util/LinkedLayerList;

    invoke-direct {v0}, Lcom/androidplot/util/LinkedLayerList;-><init>()V

    iput-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addToBottom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TValueType;)V"
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p2, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {p2, p1}, Lcom/androidplot/util/LinkedLayerList;->addToBottom(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addToTop(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TValueType;)V"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p2, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {p2, p1}, Lcom/androidplot/util/LinkedLayerList;->addToTop(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public elements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TKeyType;>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)TValueType;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAbove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)TValueType;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/androidplot/util/LayerHash;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/androidplot/util/LinkedLayerList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBeneath(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)TValueType;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Lcom/androidplot/util/LinkedLayerList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBottom()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TValueType;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v1}, Lcom/androidplot/util/LinkedLayerList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeysAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TKeyType;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    return-object v0
.end method

.method public getTop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TValueType;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v1}, Lcom/androidplot/util/LinkedLayerList;->getLast()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TKeyType;>;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/androidplot/util/LayerHash;->elements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TKeyType;)Z"
        }
    .end annotation

    monitor-enter p0

    if-eq p1, p2, :cond_2

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/LinkedLayerList;->moveAbove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 92
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 89
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal argument to moveAbove(A, B); A cannot be equal to B."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;TKeyType;)Z"
        }
    .end annotation

    monitor-enter p0

    if-eq p1, p2, :cond_2

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1, p2}, Lcom/androidplot/util/LinkedLayerList;->moveBeneath(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 103
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 100
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal argument to moveBeaneath(A, B); A cannot be equal to B."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveDown(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 127
    monitor-exit p0

    return p1

    .line 129
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->moveDown(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveToBottom(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 111
    monitor-exit p0

    return p1

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->moveToBottom(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveToTop(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 81
    monitor-exit p0

    return p1

    .line 83
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->moveToTop(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveUp(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 119
    monitor-exit p0

    return p1

    .line 121
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->moveUp(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyType;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0, p1}, Lcom/androidplot/util/LinkedLayerList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 151
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 153
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/androidplot/util/LayerHash;->zlist:Lcom/androidplot/util/LinkedLayerList;

    invoke-virtual {v0}, Lcom/androidplot/util/LinkedLayerList;->size()I

    move-result v0

    return v0
.end method
