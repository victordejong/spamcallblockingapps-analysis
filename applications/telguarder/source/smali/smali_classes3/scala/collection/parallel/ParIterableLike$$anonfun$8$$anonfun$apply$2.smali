.class public final Lscala/collection/parallel/ParIterableLike$$anonfun$8$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction0;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike$$anonfun$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/parallel/Combiner<",
        "TT;TRepr;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$$anonfun$8;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$$anonfun$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.$anonfun$8;)V"
        }
    .end annotation

    .line 646
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$8$$anonfun$apply$2;->$outer:Lscala/collection/parallel/ParIterableLike$$anonfun$8;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$$anonfun$8$$anonfun$apply$2;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TT;TRepr;>;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anonfun$8$$anonfun$apply$2;->$outer:Lscala/collection/parallel/ParIterableLike$$anonfun$8;

    iget-object v0, v0, Lscala/collection/parallel/ParIterableLike$$anonfun$8;->$outer:Lscala/collection/parallel/ParIterableLike;

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike;->combinerFactory()Lscala/collection/parallel/CombinerFactory;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/CombinerFactory;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method
