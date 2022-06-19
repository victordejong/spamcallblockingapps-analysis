.class public final Lscala/collection/immutable/Stream$$anonfun$flatMap$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/immutable/Stream<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/Stream;

.field private final f$2:Lscala/Function1;

.field private final nonEmptyPrefix$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/Function1;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;)V"
        }
    .end annotation

    .line 497
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->$outer:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->f$2:Lscala/Function1;

    iput-object p3, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->nonEmptyPrefix$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TB;>;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->nonEmptyPrefix$1:Lscala/runtime/ObjectRef;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->f$2:Lscala/Function1;

    sget-object v2, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v3

    instance-of v3, v3, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v2

    :goto_0
    iget-object v3, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lscala/collection/immutable/Stream;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/GenTraversableOnce;

    invoke-interface {v3}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v3

    :cond_1
    iget-object v4, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v4, Lscala/collection/immutable/Stream;

    invoke-virtual {v4}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v4, Lscala/collection/immutable/Stream;

    invoke-virtual {v4}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/immutable/Stream;

    iput-object v4, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    iget-object v4, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v4, Lscala/collection/immutable/Stream;

    invoke-virtual {v4}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_2
    iget-object v4, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v4, Lscala/collection/immutable/Stream;

    invoke-virtual {v4}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/immutable/Stream;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v4, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;

    invoke-direct {v4, v0, v1, v2}, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;Lscala/runtime/ObjectRef;)V

    invoke-virtual {v3, v4}, Lscala/collection/immutable/Stream;->append(Lscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v0, v1, v2}, Lscala/collection/TraversableLike$class;->flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Lscala/collection/immutable/Stream;

    return-object v0
.end method
