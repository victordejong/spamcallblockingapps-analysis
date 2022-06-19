.class public Lscala/collection/TraversableOnce$MonadOps;
.super Ljava/lang/Object;
.source "TraversableOnce.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableOnce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonadOps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final trav:Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/TraversableOnce<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation

    .line 469
    iput-object p1, p0, Lscala/collection/TraversableOnce$MonadOps;->trav:Lscala/collection/TraversableOnce;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lscala/Function1;)Lscala/collection/TraversableOnce;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/TraversableOnce<",
            "TA;>;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$MonadOps;->withFilter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;)Lscala/collection/TraversableOnce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/TraversableOnce<",
            "TB;>;"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lscala/collection/TraversableOnce$MonadOps;->trav:Lscala/collection/TraversableOnce;

    invoke-interface {v0}, Lscala/collection/TraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->flatMap(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public map(Lscala/Function1;)Lscala/collection/TraversableOnce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)",
            "Lscala/collection/TraversableOnce<",
            "TB;>;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lscala/collection/TraversableOnce$MonadOps;->trav:Lscala/collection/TraversableOnce;

    invoke-interface {v0}, Lscala/collection/TraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lscala/collection/TraversableOnce$MonadOps;->trav:Lscala/collection/TraversableOnce;

    invoke-interface {v0}, Lscala/collection/TraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method
