.class public final Lscala/collection/immutable/StreamViewLike$$anon$5;
.super Lscala/collection/immutable/StreamViewLike$AbstractTransformed;
.source "StreamViewLike.scala"

# interfaces
.implements Lscala/collection/immutable/StreamViewLike$Filtered;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StreamViewLike;->newFiltered(Lscala/Function1;)Lscala/collection/immutable/StreamViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TA;>;",
        "Lscala/collection/immutable/StreamViewLike<",
        "TA;TColl;TThis;>.Filtered;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/StreamViewLike;

.field private volatile bitmap$0:Z

.field private final index:[I

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

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->$outer:Lscala/collection/immutable/StreamViewLike;

    iput-object p2, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->pred:Lscala/Function1;

    invoke-direct {p0, p1}, Lscala/collection/immutable/StreamViewLike$AbstractTransformed;-><init>(Lscala/collection/immutable/StreamViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$Filtered$class;->$init$(Lscala/collection/TraversableViewLike$Filtered;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Filtered$class;->$init$(Lscala/collection/IterableViewLike$Filtered;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Filtered$class;->$init$(Lscala/collection/SeqViewLike$Filtered;)V

    return-void
.end method

.method private index$lzycompute()[I
    .locals 1

    .line 58
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/collection/SeqViewLike$Filtered$class;->index(Lscala/collection/SeqViewLike$Filtered;)[I

    move-result-object v0

    iput-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->index:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->index:[I

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
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Filtered$class;->apply(Lscala/collection/SeqViewLike$Filtered;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StreamViewLike$$anon$5;->apply(I)Ljava/lang/Object;

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

    .line 58
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$Filtered$class;->foreach(Lscala/collection/TraversableViewLike$Filtered;Lscala/Function1;)V

    return-void
.end method

.method public index()[I
    .locals 1

    .line 58
    iget-boolean v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->index:[I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/StreamViewLike$$anon$5;->index$lzycompute()[I

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lscala/collection/IterableViewLike$Filtered$class;->iterator(Lscala/collection/IterableViewLike$Filtered;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 58
    invoke-static {p0}, Lscala/collection/SeqViewLike$Filtered$class;->length(Lscala/collection/SeqViewLike$Filtered;)I

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

    .line 58
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->pred:Lscala/Function1;

    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$Filtered$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 73
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$SeqViewLike$Filtered$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 99
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$Filtered$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 193
    iget-object v0, p0, Lscala/collection/immutable/StreamViewLike$$anon$5;->$outer:Lscala/collection/immutable/StreamViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Filtered$class;->viewIdentifier(Lscala/collection/TraversableViewLike$Filtered;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
