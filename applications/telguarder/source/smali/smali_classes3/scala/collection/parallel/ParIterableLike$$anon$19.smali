.class public final Lscala/collection/parallel/ParIterableLike$$anon$19;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/CombinerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/CombinerFactory<",
        "TT;TRepr;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 574
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anon$19;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TT;TRepr;>;"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$19;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public doesShareCombiners()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
