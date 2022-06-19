.class public final Lscala/collection/SeqViewLike$$anon$2;
.super Lscala/collection/SeqViewLike$AbstractTransformed;
.source "SeqViewLike.scala"

# interfaces
.implements Lscala/collection/SeqViewLike$Appended;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SeqViewLike;->newAppended(Lscala/collection/GenTraversable;)Lscala/collection/SeqViewLike$Transformed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.AbstractTransformed<TB;>;",
        "Lscala/collection/SeqViewLike<",
        "TA;TColl;TThis;>.Appended<TB;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/SeqViewLike;

.field private volatile bitmap$0:Z

.field private final rest:Lscala/collection/GenTraversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/GenTraversable<",
            "TB;>;"
        }
    .end annotation
.end field

.field private final restSeq:Lscala/collection/GenSeq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/GenSeq<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/SeqViewLike;Lscala/collection/GenTraversable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SeqViewLike<",
            "TA;TColl;TThis;>;)V"
        }
    .end annotation

    .line 196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/SeqViewLike$$anon$2;->$outer:Lscala/collection/SeqViewLike;

    iput-object p2, p0, Lscala/collection/SeqViewLike$$anon$2;->rest:Lscala/collection/GenTraversable;

    invoke-direct {p0, p1}, Lscala/collection/SeqViewLike$AbstractTransformed;-><init>(Lscala/collection/SeqViewLike;)V

    invoke-static {p0}, Lscala/collection/TraversableViewLike$Appended$class;->$init$(Lscala/collection/TraversableViewLike$Appended;)V

    invoke-static {p0}, Lscala/collection/IterableViewLike$Appended$class;->$init$(Lscala/collection/IterableViewLike$Appended;)V

    invoke-static {p0}, Lscala/collection/SeqViewLike$Appended$class;->$init$(Lscala/collection/SeqViewLike$Appended;)V

    return-void
.end method

.method private restSeq$lzycompute()Lscala/collection/GenSeq;
    .locals 1

    .line 196
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/SeqViewLike$$anon$2;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/collection/SeqViewLike$Appended$class;->restSeq(Lscala/collection/SeqViewLike$Appended;)Lscala/collection/GenSeq;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/SeqViewLike$$anon$2;->restSeq:Lscala/collection/GenSeq;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/SeqViewLike$$anon$2;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$2;->restSeq:Lscala/collection/GenSeq;

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

    .line 196
    invoke-static {p0, p1}, Lscala/collection/SeqViewLike$Appended$class;->apply(Lscala/collection/SeqViewLike$Appended;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 196
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/SeqViewLike$$anon$2;->apply(I)Ljava/lang/Object;

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
            "TB;TU;>;)V"
        }
    .end annotation

    .line 196
    invoke-static {p0, p1}, Lscala/collection/TraversableViewLike$Appended$class;->foreach(Lscala/collection/TraversableViewLike$Appended;Lscala/Function1;)V

    return-void
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

    .line 196
    invoke-static {p0}, Lscala/collection/IterableViewLike$Appended$class;->iterator(Lscala/collection/IterableViewLike$Appended;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 196
    invoke-static {p0}, Lscala/collection/SeqViewLike$Appended$class;->length(Lscala/collection/SeqViewLike$Appended;)I

    move-result v0

    return v0
.end method

.method public rest()Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenTraversable<",
            "TB;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$2;->rest:Lscala/collection/GenTraversable;

    return-object v0
.end method

.method public restSeq()Lscala/collection/GenSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenSeq<",
            "TB;>;"
        }
    .end annotation

    .line 196
    iget-boolean v0, p0, Lscala/collection/SeqViewLike$$anon$2;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$2;->restSeq:Lscala/collection/GenSeq;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/SeqViewLike$$anon$2;->restSeq$lzycompute()Lscala/collection/GenSeq;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public synthetic scala$collection$IterableViewLike$Appended$$$outer()Lscala/collection/IterableViewLike;
    .locals 1

    .line 69
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$2;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$SeqViewLike$Appended$$$outer()Lscala/collection/SeqViewLike;
    .locals 1

    .line 92
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$2;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public synthetic scala$collection$TraversableViewLike$Appended$$$outer()Lscala/collection/TraversableViewLike;
    .locals 1

    .line 184
    iget-object v0, p0, Lscala/collection/SeqViewLike$$anon$2;->$outer:Lscala/collection/SeqViewLike;

    return-object v0
.end method

.method public final viewIdentifier()Ljava/lang/String;
    .locals 1

    .line 196
    invoke-static {p0}, Lscala/collection/TraversableViewLike$Appended$class;->viewIdentifier(Lscala/collection/TraversableViewLike$Appended;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
