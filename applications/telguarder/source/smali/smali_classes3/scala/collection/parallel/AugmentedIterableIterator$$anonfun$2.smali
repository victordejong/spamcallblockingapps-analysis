.class public final Lscala/collection/parallel/AugmentedIterableIterator$$anonfun$2;
.super Lscala/runtime/AbstractFunction1;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/AugmentedIterableIterator;->collect2combiner(Lscala/PartialFunction;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TS;",
        "Lscala/collection/parallel/Combiner<",
        "TS;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final cb$1:Lscala/collection/parallel/Combiner;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/AugmentedIterableIterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 121
    iput-object p2, p0, Lscala/collection/parallel/AugmentedIterableIterator$$anonfun$2;->cb$1:Lscala/collection/parallel/Combiner;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$$anonfun$2;->apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lscala/collection/parallel/AugmentedIterableIterator$$anonfun$2;->cb$1:Lscala/collection/parallel/Combiner;

    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/Combiner;

    return-object p1
.end method
