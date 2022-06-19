.class public final Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$;->collectedTail(Ljava/lang/Object;Lscala/collection/immutable/Stream;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/immutable/Stream$Cons;
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
.field private final bf$1:Lscala/collection/generic/CanBuildFrom;

.field private final pf$1:Lscala/PartialFunction;

.field private final stream$1:Lscala/collection/immutable/Stream;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)V
    .locals 0

    .line 1303
    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;->stream$1:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;->pf$1:Lscala/PartialFunction;

    iput-object p3, p0, Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;->bf$1:Lscala/collection/generic/CanBuildFrom;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 1303
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TB;>;"
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;->stream$1:Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;->pf$1:Lscala/PartialFunction;

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$collectedTail$1;->bf$1:Lscala/collection/generic/CanBuildFrom;

    invoke-virtual {v0, v1, v2}, Lscala/collection/immutable/Stream;->collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    return-object v0
.end method
