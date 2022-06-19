.class public Lscala/collection/Iterator$Partner$1;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->duplicate()Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Partner$1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/Iterator;

.field private final ahead$1:Lscala/runtime/ObjectRef;

.field private final gap$1:Lscala/collection/mutable/Queue;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/collection/mutable/Queue;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 1065
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$Partner$1;->$outer:Lscala/collection/Iterator;

    iput-object p2, p0, Lscala/collection/Iterator$Partner$1;->gap$1:Lscala/collection/mutable/Queue;

    iput-object p3, p0, Lscala/collection/Iterator$Partner$1;->ahead$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    return-void
.end method

.method private compareGap(Lscala/collection/mutable/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Queue<",
            "TA;>;)Z"
        }
    .end annotation

    .line 1079
    iget-object v0, p0, Lscala/collection/Iterator$Partner$1;->gap$1:Lscala/collection/mutable/Queue;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1081
    instance-of v0, p1, Lscala/collection/Iterator$Partner$1;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/Iterator$Partner$1;

    iget-object v0, p0, Lscala/collection/Iterator$Partner$1;->gap$1:Lscala/collection/mutable/Queue;

    invoke-direct {p1, v0}, Lscala/collection/Iterator$Partner$1;->compareGap(Lscala/collection/mutable/Queue;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lscala/collection/Iterator$Partner$1;->gap$1:Lscala/collection/mutable/Queue;

    invoke-virtual {p1}, Lscala/collection/mutable/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 1083
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public hasNext()Z
    .locals 2

    .line 1066
    invoke-virtual {p0}, Lscala/collection/Iterator$Partner$1;->scala$collection$Iterator$Partner$$$outer()Lscala/collection/Iterator;

    move-result-object v0

    monitor-enter v0

    .line 1067
    :try_start_0
    iget-object v1, p0, Lscala/collection/Iterator$Partner$1;->ahead$1:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/Iterator;

    if-eq p0, v1, :cond_0

    iget-object v1, p0, Lscala/collection/Iterator$Partner$1;->gap$1:Lscala/collection/mutable/Queue;

    invoke-virtual {v1}, Lscala/collection/mutable/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lscala/collection/Iterator$Partner$1;->scala$collection$Iterator$Partner$$$outer()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1066
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public hashCode()I
    .locals 1

    .line 1080
    iget-object v0, p0, Lscala/collection/Iterator$Partner$1;->gap$1:Lscala/collection/mutable/Queue;

    invoke-virtual {v0}, Lscala/collection/mutable/Queue;->hashCode()I

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1069
    invoke-virtual {p0}, Lscala/collection/Iterator$Partner$1;->scala$collection$Iterator$Partner$$$outer()Lscala/collection/Iterator;

    move-result-object v0

    monitor-enter v0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lscala/collection/Iterator$Partner$1;->gap$1:Lscala/collection/mutable/Queue;

    invoke-virtual {v1}, Lscala/collection/mutable/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lscala/collection/Iterator$Partner$1;->ahead$1:Lscala/runtime/ObjectRef;

    iput-object p0, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 1071
    :cond_0
    iget-object v1, p0, Lscala/collection/Iterator$Partner$1;->ahead$1:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/Iterator;

    if-ne p0, v1, :cond_1

    .line 1072
    invoke-virtual {p0}, Lscala/collection/Iterator$Partner$1;->scala$collection$Iterator$Partner$$$outer()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1073
    iget-object v2, p0, Lscala/collection/Iterator$Partner$1;->gap$1:Lscala/collection/mutable/Queue;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/Queue;->enqueue(Lscala/collection/Seq;)V

    goto :goto_0

    .line 1075
    :cond_1
    iget-object v1, p0, Lscala/collection/Iterator$Partner$1;->gap$1:Lscala/collection/mutable/Queue;

    invoke-virtual {v1}, Lscala/collection/mutable/Queue;->dequeue()Ljava/lang/Object;

    move-result-object v1

    .line 1069
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public synthetic scala$collection$Iterator$Partner$$$outer()Lscala/collection/Iterator;
    .locals 1

    .line 1065
    iget-object v0, p0, Lscala/collection/Iterator$Partner$1;->$outer:Lscala/collection/Iterator;

    return-object v0
.end method
