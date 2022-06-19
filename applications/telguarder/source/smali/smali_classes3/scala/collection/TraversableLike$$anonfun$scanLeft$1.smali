.class public final Lscala/collection/TraversableLike$$anonfun$scanLeft$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/mutable/Builder<",
        "TB;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final acc$1:Lscala/runtime/ObjectRef;

.field private final b$6:Lscala/collection/mutable/Builder;

.field private final op$1:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/runtime/ObjectRef;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>;)V"
        }
    .end annotation

    .line 402
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;->b$6:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;->acc$1:Lscala/runtime/ObjectRef;

    iput-object p4, p0, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;->op$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 402
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Builder<",
            "TB;TThat;>;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;->acc$1:Lscala/runtime/ObjectRef;

    iget-object v1, p0, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;->op$1:Lscala/Function2;

    iget-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    iget-object p1, p0, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;->b$6:Lscala/collection/mutable/Builder;

    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$scanLeft$1;->acc$1:Lscala/runtime/ObjectRef;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
