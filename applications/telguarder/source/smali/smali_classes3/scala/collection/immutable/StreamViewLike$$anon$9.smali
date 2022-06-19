.class public final Lscala/collection/immutable/StreamViewLike$$anon$9;
.super Lscala/collection/immutable/StreamViewLike$AbstractTransformed;
.source "StreamViewLike.scala"

# interfaces
.implements Lscala/collection/immutable/StreamViewLike$Zipped;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StreamViewLike;->newZipped(Lscala/collection/GenIterable;)Lscala/collection/immutable/StreamViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;",
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.Zipped<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/StreamViewLike;

.field private volatile bitmap$0:Z

.field private final other:Lscala/collection/GenIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/GenIterable<",
            "TB;>;"
        }
    .end annotation
.end field

.field private final thatSeq:Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StreamViewLike;Lscala/collection/GenIterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->$outer:Lscala/collection/immutable/StreamViewLike;

    iput-object p2, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->other:Lscala/collection/GenIterable;

    invoke-direct {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;-><init>(Lscala/collection/immutable/StreamViewLike;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Zipped$class;->$init$(Lscala/collection/IterableViewLike$Zipped;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Zipped$class;->$init$(Lscala/collection/SeqViewLike$Zipped;)V

    return-void
.end method

.method private thatSeq$lzycompute()Lscala/collection/Seq;
    .locals 1

    .line 62
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/collection/SeqViewLike$Zipped$class;->thatSeq(Lscala/collection/SeqViewLike$Zipped;)Lscala/collection/Seq;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->thatSeq:Lscala/collection/Seq;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->thatSeq:Lscala/collection/Seq;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$9;->apply(I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$9;->apply(I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Zipped$class;->apply(Lscala/collection/SeqViewLike$Zipped;I)Lscala/Tuple2;

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
            "TA;TB;>;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lscala/collection/IterableViewLike$Zipped$class;->iterator(Lscala/collection/IterableViewLike$Zipped;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 62
    invoke-static {p0}, Lscala/collection/SeqViewLike$Zipped$class;->length(Lscala/collection/SeqViewLike$Zipped;)I

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

    .line 62
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->other:Lscala/collection/GenIterable;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$Zipped$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 85
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$SeqViewLike$Zipped$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 130
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->$outer:Lscala/collection/immutable/StreamViewLike;

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

    .line 62
    iget-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$9;->thatSeq:Lscala/collection/Seq;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/StreamViewLike$$anon$9;->thatSeq$lzycompute()Lscala/collection/Seq;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {p0}, Lscala/collection/IterableViewLike$Zipped$class;->viewIdentifier(Lscala/collection/IterableViewLike$Zipped;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
