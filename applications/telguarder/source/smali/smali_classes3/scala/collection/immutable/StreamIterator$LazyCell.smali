.class public Lscala/collection/immutable/StreamIterator$LazyCell;
.super Ljava/lang/Object;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/StreamIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyCell"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/immutable/StreamIterator;

.field private volatile bitmap$0:Z

.field private final st:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;"
        }
    .end annotation
.end field

.field private v:Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StreamIterator;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamIterator<",
            "TA;>;",
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;)V"
        }
    .end annotation

    .line 1108
    iput-object p2, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->st:Lscala/Function0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->$outer:Lscala/collection/immutable/StreamIterator;

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private v$lzycompute()Lscala/collection/immutable/Stream;
    .locals 1

    .line 1109
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->bitmap$0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->st:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    iput-object v0, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->v:Lscala/collection/immutable/Stream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->st:Lscala/Function0;

    iget-object v0, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->v:Lscala/collection/immutable/Stream;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public synthetic scala$collection$immutable$StreamIterator$LazyCell$$$outer()Lscala/collection/immutable/StreamIterator;
    .locals 1

    .line 1108
    iget-object v0, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->$outer:Lscala/collection/immutable/StreamIterator;

    return-object v0
.end method

.method public v()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1109
    iget-boolean v0, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/StreamIterator$LazyCell;->v:Lscala/collection/immutable/Stream;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/StreamIterator$LazyCell;->v$lzycompute()Lscala/collection/immutable/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method
