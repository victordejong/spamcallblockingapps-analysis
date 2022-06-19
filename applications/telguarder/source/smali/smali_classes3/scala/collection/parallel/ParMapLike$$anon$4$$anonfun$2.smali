.class public final Lscala/collection/parallel/ParMapLike$$anon$4$$anonfun$2;
.super Lscala/runtime/AbstractFunction1;
.source "ParMapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParMapLike$$anon$4;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/IterableSplitter<",
        "Lscala/Tuple2<",
        "TK;TV;>;>;",
        "Lscala/collection/parallel/IterableSplitter<",
        "TV;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParMapLike$$anon$4;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParMapLike$$anon$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParMapLike$$anon$4;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParMapLike$$anon$4$$anonfun$2;->$outer:Lscala/collection/parallel/ParMapLike$$anon$4;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, Lscala/collection/parallel/IterableSplitter;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$$anon$4$$anonfun$2;->apply(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TV;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$$anon$4$$anonfun$2;->$outer:Lscala/collection/parallel/ParMapLike$$anon$4;

    invoke-virtual {v0}, Lscala/collection/parallel/ParMapLike$$anon$4;->scala$collection$parallel$ParMapLike$$anon$$$outer()Lscala/collection/parallel/ParMapLike;

    move-result-object v0

    invoke-static {v0, p1}, Lscala/collection/parallel/ParMapLike$class;->scala$collection$parallel$ParMapLike$$valuesIterator(Lscala/collection/parallel/ParMapLike;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    return-object p1
.end method
