.class public final Lscala/collection/Parallelizable$$anonfun$par$1;
.super Lscala/runtime/AbstractFunction1;
.source "Parallelizable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Parallelizable;->par()Lscala/collection/Parallel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/collection/parallel/Combiner<",
        "TA;TParRepr;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final cb$1:Lscala/collection/parallel/Combiner;


# direct methods
.method public constructor <init>(Lscala/collection/Parallelizable;Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Parallelizable<",
            "TA;TParRepr;>;)V"
        }
    .end annotation

    .line 42
    iput-object p2, p0, Lscala/collection/Parallelizable$$anonfun$par$1;->cb$1:Lscala/collection/parallel/Combiner;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lscala/collection/Parallelizable$$anonfun$par$1;->apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/parallel/Combiner<",
            "TA;TParRepr;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/collection/Parallelizable$$anonfun$par$1;->cb$1:Lscala/collection/parallel/Combiner;

    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/Combiner;

    return-object p1
.end method
