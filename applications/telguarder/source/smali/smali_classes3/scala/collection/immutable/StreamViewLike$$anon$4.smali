.class public final Lscala/collection/immutable/StreamViewLike$$anon$4;
.super Lscala/collection/immutable/StreamViewLike$AbstractTransformed;
.source "StreamViewLike.scala"

# interfaces
.implements Lscala/collection/immutable/StreamViewLike$FlatMapped;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StreamViewLike;->newFlatMapped(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TB;>;",
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.FlatMapped<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/StreamViewLike;

.field private volatile bitmap$0:Z

.field private final index:[I

.field private final mapping:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StreamViewLike;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->$outer:Lscala/collection/immutable/StreamViewLike;

    iput-object p2, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->mapping:Lscala/Function1;

    invoke-direct {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;-><init>(Lscala/collection/immutable/StreamViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$FlatMapped$class;->$init$(Lscala/collection/TraversableViewLike$FlatMapped;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$FlatMapped$class;->$init$(Lscala/collection/IterableViewLike$FlatMapped;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$FlatMapped$class;->$init$(Lscala/collection/SeqViewLike$FlatMapped;)V

    return-void
.end method

.method private index$lzycompute()[I
    .locals 1

    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/collection/SeqViewLike$FlatMapped$class;->index(Lscala/collection/SeqViewLike$FlatMapped;)[I

    move-result-object v0

    iput-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->index:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->index:[I

    return-object v0

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
            "(I)TB;"
        }
    .end annotation

    .line 57
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$FlatMapped$class;->apply(Lscala/collection/SeqViewLike$FlatMapped;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$4;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findRow(III)I
    .locals 0

    .line 57
    invoke-static {p0, p1, p2, p3}, Lscala/collection/SeqViewLike$FlatMapped$class;->findRow(Lscala/collection/SeqViewLike$FlatMapped;III)I

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TU;>;)V"
        }
    .end annotation

    .line 57
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$FlatMapped$class;->foreach(Lscala/collection/TraversableViewLike$FlatMapped;Lscala/Function1;)V

    return-void
.end method

.method public index()[I
    .locals 1

    .line 57
    iget-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->index:[I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/StreamViewLike$$anon$4;->index$lzycompute()[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 57
    invoke-static {p0}, Lscala/collection/IterableViewLike$FlatMapped$class;->iterator(Lscala/collection/IterableViewLike$FlatMapped;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 57
    invoke-static {p0}, Lscala/collection/SeqViewLike$FlatMapped$class;->length(Lscala/collection/SeqViewLike$FlatMapped;)I

    move-result v0

    return v0
.end method

.method public mapping()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->mapping:Lscala/Function1;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$FlatMapped$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 65
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$SeqViewLike$FlatMapped$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 70
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$FlatMapped$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 174
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$4;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-static {p0}, Lscala/collection/TraversableViewLike$FlatMapped$class;->viewIdentifier(Lscala/collection/TraversableViewLike$FlatMapped;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
