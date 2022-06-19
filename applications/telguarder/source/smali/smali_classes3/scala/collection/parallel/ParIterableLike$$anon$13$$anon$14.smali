.class public final Lscala/collection/parallel/ParIterableLike$$anon$13$$anon$14;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$$anon$13;->ifIs(Lscala/Function1;)Lscala/collection/parallel/ParIterableLike$BuilderOps$Otherwise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.BuilderOps<TElem;TTo;>.Otherwise<TCmb;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/parallel/ParIterableLike$$anon$13;

.field private final isbody$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$$anon$13;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.$anon$13;)V"
        }
    .end annotation

    .line 332
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anon$13$$anon$14;->$outer:Lscala/collection/parallel/ParIterableLike$$anon$13;

    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anon$13$$anon$14;->isbody$1:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public otherwise(Lscala/Function0;Lscala/reflect/ClassTag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/reflect/ClassTag<",
            "TCmb;>;)V"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$13$$anon$14;->$outer:Lscala/collection/parallel/ParIterableLike$$anon$13;

    iget-object v0, v0, Lscala/collection/parallel/ParIterableLike$$anon$13;->cb$2:Lscala/collection/mutable/Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p2

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    iget-object p1, p0, Lscala/collection/parallel/ParIterableLike$$anon$13$$anon$14;->isbody$1:Lscala/Function1;

    iget-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anon$13$$anon$14;->$outer:Lscala/collection/parallel/ParIterableLike$$anon$13;

    iget-object p2, p2, Lscala/collection/parallel/ParIterableLike$$anon$13;->cb$2:Lscala/collection/mutable/Builder;

    invoke-interface {p1, p2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lscala/Function0;->apply$mcV$sp()V

    :goto_1
    return-void
.end method
