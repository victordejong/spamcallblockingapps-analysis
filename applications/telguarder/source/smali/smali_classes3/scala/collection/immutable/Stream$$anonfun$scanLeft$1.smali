.class public final Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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

.field private final op$1:Lscala/Function2;

.field private final z$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Ljava/lang/Object;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream<",
            "TA;>;)V"
        }
    .end annotation

    .line 397
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;->$outer:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;->z$1:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;->op$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TB;>;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;->$outer:Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;->op$1:Lscala/Function2;

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;->z$1:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;->$outer:Lscala/collection/immutable/Stream;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$scanLeft$1;->op$1:Lscala/Function2;

    sget-object v3, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lscala/collection/immutable/Stream;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    return-object v0
.end method
