.class public final Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$;->filteredTail(Lscala/collection/immutable/Stream;Lscala/Function1;)Lscala/collection/immutable/Stream$Cons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/immutable/Stream<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final p$1:Lscala/Function1;

.field private final stream$2:Lscala/collection/immutable/Stream;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;->stream$2:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;->p$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 1299
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;->stream$2:Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$filteredTail$1;->p$1:Lscala/Function1;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream;->filter(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
