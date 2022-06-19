.class public final Lscala/collection/immutable/NumericRange$$anon$1;
.super Lscala/collection/immutable/NumericRange;
.source "NumericRange.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/NumericRange;->mapRange(Lscala/Function1;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/NumericRange<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private volatile bitmap$0:Z

.field public final fm$1:Lscala/Function1;

.field private final self$1:Lscala/collection/immutable/NumericRange;

.field private underlyingRange:Lscala/collection/immutable/NumericRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/NumericRange<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final unum$1:Lscala/math/Integral;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/NumericRange;Lscala/Function1;Lscala/math/Integral;Lscala/collection/immutable/NumericRange;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/NumericRange<",
            "TT;>;)V"
        }
    .end annotation

    .line 156
    iput-object p2, p0, Lscala/collection/immutable/NumericRange$$anon$1;->fm$1:Lscala/Function1;

    iput-object p3, p0, Lscala/collection/immutable/NumericRange$$anon$1;->unum$1:Lscala/math/Integral;

    iput-object p4, p0, Lscala/collection/immutable/NumericRange$$anon$1;->self$1:Lscala/collection/immutable/NumericRange;

    invoke-virtual {p1}, Lscala/collection/immutable/NumericRange;->start()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2, p4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/NumericRange;->end()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2, p4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/immutable/NumericRange;->step()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2, p4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lscala/collection/immutable/NumericRange;->isInclusive()Z

    move-result v4

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lscala/collection/immutable/NumericRange;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLscala/math/Integral;)V

    return-void
.end method

.method private underlyingRange()Lscala/collection/immutable/NumericRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/NumericRange<",
            "TT;>;"
        }
    .end annotation

    .line 161
    iget-boolean v0, p0, Lscala/collection/immutable/NumericRange$$anon$1;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/NumericRange$$anon$1;->underlyingRange:Lscala/collection/immutable/NumericRange;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/immutable/NumericRange$$anon$1;->underlyingRange$lzycompute()Lscala/collection/immutable/NumericRange;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private underlyingRange$lzycompute()Lscala/collection/immutable/NumericRange;
    .locals 1

    .line 161
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/immutable/NumericRange$$anon$1;->bitmap$0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lscala/collection/immutable/NumericRange$$anon$1;->self$1:Lscala/collection/immutable/NumericRange;

    iput-object v0, p0, Lscala/collection/immutable/NumericRange$$anon$1;->underlyingRange:Lscala/collection/immutable/NumericRange;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/immutable/NumericRange$$anon$1;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lscala/collection/immutable/NumericRange$$anon$1;->self$1:Lscala/collection/immutable/NumericRange;

    iget-object v0, p0, Lscala/collection/immutable/NumericRange$$anon$1;->underlyingRange:Lscala/collection/immutable/NumericRange;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lscala/collection/immutable/NumericRange$$anon$1;->fm$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/immutable/NumericRange$$anon$1;->underlyingRange()Lscala/collection/immutable/NumericRange;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/NumericRange;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 156
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/immutable/NumericRange$$anon$1;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public containsTyped(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lscala/collection/immutable/NumericRange$$anon$1;->underlyingRange()Lscala/collection/immutable/NumericRange;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/NumericRange$$anon$1$$anonfun$containsTyped$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/NumericRange$$anon$1$$anonfun$containsTyped$1;-><init>(Lscala/collection/immutable/NumericRange$$anon$1;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/NumericRange;->exists(Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public copy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/NumericRange;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;TA;)",
            "Lscala/collection/immutable/NumericRange<",
            "TA;>;"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lscala/collection/immutable/NumericRange$$anon$1;->isInclusive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    iget-object v1, p0, Lscala/collection/immutable/NumericRange$$anon$1;->unum$1:Lscala/math/Integral;

    invoke-virtual {v0, p1, p2, p3, v1}, Lscala/collection/immutable/NumericRange$;->inclusive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Inclusive;

    move-result-object p1

    goto :goto_0

    .line 159
    :cond_0
    sget-object v0, Lscala/collection/immutable/NumericRange$;->MODULE$:Lscala/collection/immutable/NumericRange$;

    iget-object v1, p0, Lscala/collection/immutable/NumericRange$$anon$1;->unum$1:Lscala/math/Integral;

    invoke-virtual {v0, p1, p2, p3, v1}, Lscala/collection/immutable/NumericRange$;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/immutable/NumericRange$Exclusive;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lscala/collection/immutable/NumericRange$$anon$1;->underlyingRange()Lscala/collection/immutable/NumericRange;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/NumericRange$$anon$1$$anonfun$foreach$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/immutable/NumericRange$$anon$1$$anonfun$foreach$1;-><init>(Lscala/collection/immutable/NumericRange$$anon$1;Lscala/Function1;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/NumericRange;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 163
    invoke-direct {p0}, Lscala/collection/immutable/NumericRange$$anon$1;->underlyingRange()Lscala/collection/immutable/NumericRange;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/NumericRange;->isEmpty()Z

    move-result v0

    return v0
.end method
