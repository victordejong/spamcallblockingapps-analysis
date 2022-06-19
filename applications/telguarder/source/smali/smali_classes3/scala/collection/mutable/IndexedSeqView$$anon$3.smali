.class public final Lscala/collection/mutable/IndexedSeqView$$anon$3;
.super Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;
.source "IndexedSeqView.scala"

# interfaces
.implements Lscala/collection/mutable/IndexedSeqView$DroppedWhile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/IndexedSeqView;->newDroppedWhile(Lscala/Function1;)Lscala/collection/mutable/IndexedSeqView$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>.AbstractTransformed<TA;>;",
        "Lscala/collection/mutable/IndexedSeqView<",
        "TA;TColl;>.DroppedWhile;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/IndexedSeqView;

.field private volatile bitmap$0:Z

.field private final pred:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final start:I


# direct methods
.method public constructor <init>(Lscala/collection/mutable/IndexedSeqView;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/IndexedSeqView<",
            "TA;TColl;>;)V"
        }
    .end annotation

    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->$outer:Lscala/collection/mutable/IndexedSeqView;

    iput-object p2, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->pred:Lscala/Function1;

    invoke-direct {p0, p1}, Lscala/collection/mutable/IndexedSeqView$AbstractTransformed;-><init>(Lscala/collection/mutable/IndexedSeqView;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$DroppedWhile$class;->$init$(Lscala/collection/TraversableViewLike$DroppedWhile;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$DroppedWhile$class;->$init$(Lscala/collection/IterableViewLike$DroppedWhile;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$DroppedWhile$class;->$init$(Lscala/collection/SeqViewLike$DroppedWhile;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqView$DroppedWhile$class;->$init$(Lscala/collection/mutable/IndexedSeqView$DroppedWhile;)V

    return-void
.end method

.method private start$lzycompute()I
    .locals 1

    .line 82
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/collection/SeqViewLike$DroppedWhile$class;->start(Lscala/collection/SeqViewLike$DroppedWhile;)I

    move-result v0

    iput v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->start:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->start:I

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 82
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$DroppedWhile$class;->apply(Lscala/collection/SeqViewLike$DroppedWhile;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/IndexedSeqView$$anon$3;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .line 82
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$DroppedWhile$class;->foreach(Lscala/collection/TraversableViewLike$DroppedWhile;Lscala/Function1;)V

    return-void
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lscala/collection/IterableViewLike$DroppedWhile$class;->iterator(Lscala/collection/IterableViewLike$DroppedWhile;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 82
    invoke-static {p0}, Lscala/collection/SeqViewLike$DroppedWhile$class;->length(Lscala/collection/SeqViewLike$DroppedWhile;)I

    move-result v0

    return v0
.end method

.method public pred()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->pred:Lscala/Function1;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$DroppedWhile$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 81
    iget-object v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->$outer:Lscala/collection/mutable/IndexedSeqView;

    return-object v0
.end method

.method public synthetic scala$collection$SeqViewLike$DroppedWhile$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 122
    iget-object v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->$outer:Lscala/collection/mutable/IndexedSeqView;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$DroppedWhile$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 213
    iget-object v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->$outer:Lscala/collection/mutable/IndexedSeqView;

    return-object v0
.end method

.method public synthetic scala$collection$mutable$IndexedSeqView$DroppedWhile$$$outer()Lscala/collection/mutable/IndexedSeqView;
    .locals 1

    .line 67
    iget-object v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->$outer:Lscala/collection/mutable/IndexedSeqView;

    return-object v0
.end method

.method public start()I
    .locals 1

    .line 82
    iget-boolean v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lscala/collection/mutable/IndexedSeqView$$anon$3;->start:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/IndexedSeqView$$anon$3;->start$lzycompute()I

    move-result v0

    :goto_0
    return v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .line 82
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/IndexedSeqView$DroppedWhile$class;->update(Lscala/collection/mutable/IndexedSeqView$DroppedWhile;ILjava/lang/Object;)V

    return-void
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 82
    invoke-static {p0}, Lscala/collection/TraversableViewLike$DroppedWhile$class;->viewIdentifier(Lscala/collection/TraversableViewLike$DroppedWhile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
