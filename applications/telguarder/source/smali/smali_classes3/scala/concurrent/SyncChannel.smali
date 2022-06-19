.class public Lscala/concurrent/SyncChannel;
.super Ljava/lang/Object;
.source "SyncChannel.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000193A!\u0001\u0002\u0001\u000f\tY1+\u001f8d\u0007\"\u000cgN\\3m\u0015\t\u0019A!\u0001\u0006d_:\u001cWO\u001d:f]RT\u0011!B\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\tAAc\u0005\u0002\u0001\u0013A\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000b9\u0001A\u0011A\u0008\u0002\rqJg.\u001b;?)\u0005\u0001\u0002cA\t\u0001%5\t!\u0001\u0005\u0002\u0014)1\u0001A!B\u000b\u0001\u0005\u00041\"!A!\u0012\u0005]Q\u0002C\u0001\u0006\u0019\u0013\tIBAA\u0004O_RD\u0017N\\4\u0011\u0005)Y\u0012B\u0001\u000f\u0005\u0005\r\te.\u001f\u0005\u0008=\u0001\u0001\r\u0011\"\u0003 \u00035\u0001XM\u001c3j]\u001e<&/\u001b;fgV\t\u0001\u0005E\u0002\"M!j\u0011A\t\u0006\u0003G\u0011\n\u0011\"[7nkR\u000c\'\r\\3\u000b\u0005\u0015\"\u0011AC2pY2,7\r^5p]&\u0011qE\t\u0002\u0005\u0019&\u001cH\u000f\u0005\u0003\u000bSIY\u0013B\u0001\u0016\u0005\u0005\u0019!V\u000f\u001d7feA\u0019\u0011\u0003\u000c\u0018\n\u00055\u0012!aB*z]\u000e4\u0016M\u001d\t\u0003\u0015=J!\u0001\r\u0003\u0003\u000f\t{w\u000e\\3b]\"9!\u0007\u0001a\u0001\n\u0013\u0019\u0014!\u00059f]\u0012LgnZ,sSR,7o\u0018\u0013fcR\u0011Ag\u000e\t\u0003\u0015UJ!A\u000e\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0008qE\n\t\u00111\u0001!\u0003\rAH%\r\u0005\u0007u\u0001\u0001\u000b\u0015\u0002\u0011\u0002\u001dA,g\u000eZ5oO^\u0013\u0018\u000e^3tA!9A\u0008\u0001a\u0001\n\u0013i\u0014\u0001\u00049f]\u0012Lgn\u001a*fC\u0012\u001cX#\u0001 \u0011\u0007\u00052s\u0008E\u0002\u0012YIAq!\u0011\u0001A\u0002\u0013%!)\u0001\tqK:$\u0017N\\4SK\u0006$7o\u0018\u0013fcR\u0011Ag\u0011\u0005\u0008q\u0001\u000b\t\u00111\u0001?\u0011\u0019)\u0005\u0001)Q\u0005}\u0005i\u0001/\u001a8eS:<\'+Z1eg\u0002BQa\u0012\u0001\u0005\u0002!\u000bQa\u001e:ji\u0016$\"\u0001N%\t\u000b)3\u0005\u0019\u0001\n\u0002\t\u0011\u000cG/\u0019\u0005\u0006\u0019\u0002!\t!T\u0001\u0005e\u0016\u000cG-F\u0001\u0013\u0001"
.end annotation


# instance fields
.field private pendingReads:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "Lscala/concurrent/SyncVar<",
            "TA;>;>;"
        }
    .end annotation
.end field

.field private pendingWrites:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TA;",
            "Lscala/concurrent/SyncVar<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    iput-object v0, p0, Lscala/concurrent/SyncChannel;->pendingWrites:Lscala/collection/immutable/List;

    .line 21
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    iput-object v0, p0, Lscala/concurrent/SyncChannel;->pendingReads:Lscala/collection/immutable/List;

    return-void
.end method

.method private pendingReads()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/concurrent/SyncVar<",
            "TA;>;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lscala/concurrent/SyncChannel;->pendingReads:Lscala/collection/immutable/List;

    return-object v0
.end method

.method private pendingReads_$eq(Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "Lscala/concurrent/SyncVar<",
            "TA;>;>;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lscala/concurrent/SyncChannel;->pendingReads:Lscala/collection/immutable/List;

    return-void
.end method

.method private pendingWrites()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TA;",
            "Lscala/concurrent/SyncVar<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lscala/concurrent/SyncChannel;->pendingWrites:Lscala/collection/immutable/List;

    return-object v0
.end method

.method private pendingWrites_$eq(Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TA;",
            "Lscala/concurrent/SyncVar<",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lscala/concurrent/SyncChannel;->pendingWrites:Lscala/collection/immutable/List;

    return-void
.end method


# virtual methods
.method public read()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 50
    new-instance v0, Lscala/concurrent/SyncVar;

    invoke-direct {v0}, Lscala/concurrent/SyncVar;-><init>()V

    .line 52
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-direct {p0}, Lscala/concurrent/SyncChannel;->pendingWrites()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 67
    invoke-direct {p0}, Lscala/concurrent/SyncChannel;->pendingReads()Lscala/collection/immutable/List;

    move-result-object v1

    sget-object v3, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/concurrent/SyncVar;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v3, v2}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v2

    invoke-virtual {v2, v1}, Lscala/collection/immutable/List;->$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/concurrent/SyncChannel;->pendingReads_$eq(Lscala/collection/immutable/List;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0}, Lscala/concurrent/SyncChannel;->pendingWrites()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple2;

    if-eqz v1, :cond_1

    new-instance v3, Lscala/Tuple2;

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/concurrent/SyncVar;

    .line 57
    invoke-direct {p0}, Lscala/concurrent/SyncChannel;->pendingWrites()Lscala/collection/immutable/List;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/immutable/List;

    invoke-direct {p0, v4}, Lscala/concurrent/SyncChannel;->pendingWrites_$eq(Lscala/collection/immutable/List;)V

    .line 60
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v0, v1}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 52
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 56
    :cond_1
    :try_start_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit p0

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 25
    new-instance v0, Lscala/concurrent/SyncVar;

    invoke-direct {v0}, Lscala/concurrent/SyncVar;-><init>()V

    .line 27
    monitor-enter p0

    .line 29
    :try_start_0
    invoke-direct {p0}, Lscala/concurrent/SyncChannel;->pendingReads()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0}, Lscala/concurrent/SyncChannel;->pendingWrites()Lscala/collection/immutable/List;

    move-result-object v1

    sget-object v3, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/Tuple2;

    const/4 v5, 0x0

    new-instance v6, Lscala/Tuple2;

    invoke-direct {v6, p1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v5

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v3, p1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p1, v1}, Lscala/collection/immutable/List;->$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/concurrent/SyncChannel;->pendingWrites_$eq(Lscala/collection/immutable/List;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lscala/concurrent/SyncChannel;->pendingReads()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/concurrent/SyncVar;

    .line 31
    invoke-direct {p0}, Lscala/concurrent/SyncChannel;->pendingReads()Lscala/collection/immutable/List;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/List;

    invoke-direct {p0, v3}, Lscala/concurrent/SyncChannel;->pendingReads_$eq(Lscala/collection/immutable/List;)V

    .line 34
    invoke-virtual {v1, p1}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V

    .line 37
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 27
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->get()Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    throw p1
.end method
