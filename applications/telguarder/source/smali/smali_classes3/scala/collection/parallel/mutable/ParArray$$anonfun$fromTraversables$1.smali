.class public final Lscala/collection/parallel/mutable/ParArray$$anonfun$fromTraversables$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParArray.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParArray$;->fromTraversables(Lscala/collection/Seq;)Lscala/collection/parallel/mutable/ParArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/GenTraversableOnce<",
        "TT;>;",
        "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
        "TT;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final cb$1:Lscala/collection/parallel/mutable/ResizableParArrayCombiner;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ResizableParArrayCombiner;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$fromTraversables$1;->cb$1:Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 714
    check-cast p1, Lscala/collection/GenTraversableOnce;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$$anonfun$fromTraversables$1;->apply(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/GenTraversableOnce;)Lscala/collection/parallel/mutable/ResizableParArrayCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TT;>;)",
            "Lscala/collection/parallel/mutable/ResizableParArrayCombiner<",
            "TT;>;"
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$$anonfun$fromTraversables$1;->cb$1:Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    return-object p1
.end method
