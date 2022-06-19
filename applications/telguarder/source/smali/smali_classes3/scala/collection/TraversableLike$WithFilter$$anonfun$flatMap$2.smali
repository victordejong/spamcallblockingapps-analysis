.class public final Lscala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike$WithFilter;->flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableLike$WithFilter;

.field private final b$13:Lscala/collection/mutable/Builder;

.field private final f$2:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike$WithFilter;Lscala/Function1;Lscala/collection/mutable/Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "TA;TRepr;>.WithFilter;)V"
        }
    .end annotation

    .line 758
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2;->$outer:Lscala/collection/TraversableLike$WithFilter;

    iput-object p2, p0, Lscala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2;->f$2:Lscala/Function1;

    iput-object p3, p0, Lscala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2;->b$13:Lscala/collection/mutable/Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lscala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2;->$outer:Lscala/collection/TraversableLike$WithFilter;

    iget-object v0, v0, Lscala/collection/TraversableLike$WithFilter;->scala$collection$TraversableLike$WithFilter$$p:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2;->b$13:Lscala/collection/mutable/Builder;

    iget-object v1, p0, Lscala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2;->f$2:Lscala/Function1;

    invoke-interface {v1, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversableOnce;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object p1
.end method
