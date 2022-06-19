.class public final Lscala/collection/SeqViewLike$$anon$10;
.super Lscala/collection/SeqViewLike$AbstractTransformed;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$ZippedAll;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->newZippedAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/SeqViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<",
        "Lscala/Tuple2<",
        "TA1;TB;>;>;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.ZippedAll<TA1;TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/SeqViewLike;

.field private volatile bitmap$0:Z

.field private final other:Lscala/collection/GenIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/GenIterable<",
            "TB;>;"
        }
    .end annotation
.end field

.field private final thatElem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private final thatSeq:Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Seq<",
            "TB;>;"
        }
    .end annotation
.end field

.field private final thisElem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$$anon$10;->$outer:Lscala/collection/SeqViewLike;

    .line 205
    iput-object p2, p0, Lscala/collection/SeqViewLike$$anon$10;->other:Lscala/collection/GenIterable;

    .line 206
    iput-object p3, p0, Lscala/collection/SeqViewLike$$anon$10;->thisElem:Ljava/lang/Object;

    .line 207
    iput-object p4, p0, Lscala/collection/SeqViewLike$$anon$10;->thatElem:Ljava/lang/Object;

    .line 208
    invoke-direct {p0, p1}, Lscala/collection/SeqViewLike$AbstractTransformed;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$ZippedAll$class;->$init$(Lscala/collection/IterableViewLike$ZippedAll;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$ZippedAll$class;->$init$(Lscala/collection/SeqViewLike$ZippedAll;)V

    return-void
.end method

.method private thatSeq$lzycompute()Lscala/collection/Seq;
    .locals 1

    .line 204
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/SeqViewLike$$anon$10;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/collection/SeqViewLike$ZippedAll$class;->thatSeq(Lscala/collection/SeqViewLike$ZippedAll;)Lscala/collection/Seq;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/SeqViewLike$$anon$10;->thatSeq:Lscala/collection/Seq;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/SeqViewLike$$anon$10;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$10;->thatSeq:Lscala/collection/Seq;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lscala/collection/SeqViewLike$$anon$10;->apply(I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 204
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqViewLike$$anon$10;->apply(I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "TA1;TB;>;"
        }
    .end annotation

    .line 204
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$ZippedAll$class;->apply(Lscala/collection/SeqViewLike$ZippedAll;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA1;TB;>;>;"
        }
    .end annotation

    .line 204
    invoke-static {p0}, Lscala/collection/IterableViewLike$ZippedAll$class;->iterator(Lscala/collection/IterableViewLike$ZippedAll;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 204
    invoke-static {p0}, Lscala/collection/SeqViewLike$ZippedAll$class;->length(Lscala/collection/SeqViewLike$ZippedAll;)I

    move-result v0

    return v0
.end method

.method public other()Lscala/collection/GenIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenIterable<",
            "TB;>;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$10;->other:Lscala/collection/GenIterable;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$ZippedAll$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 91
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$10;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$SeqViewLike$ZippedAll$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 137
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$10;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public thatElem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$10;->thatElem:Ljava/lang/Object;

    return-object v0
.end method

.method public thatSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TB;>;"
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Lscala/collection/SeqViewLike$$anon$10;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$10;->thatSeq:Lscala/collection/Seq;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/SeqViewLike$$anon$10;->thatSeq$lzycompute()Lscala/collection/Seq;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public thisElem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA1;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$10;->thisElem:Ljava/lang/Object;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 204
    invoke-static {p0}, Lscala/collection/IterableViewLike$ZippedAll$class;->viewIdentifier(Lscala/collection/IterableViewLike$ZippedAll;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
